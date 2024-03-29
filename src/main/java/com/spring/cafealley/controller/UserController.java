package com.spring.cafealley.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.spring.cafealley.board.service.BoardService;
import com.spring.cafealley.board.service.IBoardService;
import com.spring.cafealley.board.service.ICmBoardService;
import com.spring.cafealley.cart.service.ICartService;
import com.spring.cafealley.command.ImgVO;
import com.spring.cafealley.command.OrderingVO;
import com.spring.cafealley.command.PromoBoardVO;
import com.spring.cafealley.command.UserVO;
import com.spring.cafealley.img.service.ImgService;
import com.spring.cafealley.ordering.service.IOrderingService;
import com.spring.cafealley.promoboard.service.IPromoBoardService;
import com.spring.cafealley.promoreply.service.IPromoReplyService;
import com.spring.cafealley.reply.mapper.INoReplyMapper;
import com.spring.cafealley.reply.service.ICmReplyService;
import com.spring.cafealley.reply.service.IEvReplyService;
import com.spring.cafealley.reply.service.IReplyService;
import com.spring.cafealley.user.service.IUserService;
import com.spring.cafealley.util.MailSendService;
import com.spring.cafealley.util.PageCreator;
import com.spring.cafealley.util.PageVO;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private IUserService service;
	@Autowired
	private MailSendService mailService;
	@Autowired
	private ImgService imgService;
	@Autowired
	private ICmBoardService cmBoardService;
	@Autowired
	private ICmReplyService cmReplyService;
	@Autowired
	private IPromoBoardService promBoardService;
	@Autowired
	private IPromoReplyService promoReplyService;
	@Autowired
	private IReplyService noReplyService;
	@Autowired
	private IEvReplyService evReplyService;
	@Autowired
	private IOrderingService orderingService; 
	@Autowired
	private ICartService cartService;
	
	//비밀번호 암호화를 위한 BCryptPasswordEncoder 객체
	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

	// 회원가입 버튼을 누르면 회원유형 선택 페이지로 이동
	@GetMapping("/joinSelect")
	public void joinSelect() {
	}

	// 아이디 중복 체크(비동기)
	@ResponseBody
	@PostMapping("/idCheck")
	public String idCheck(@RequestBody String userId) {

		int result = service.idCheck(userId);

		if (result == 0) {
			return "available";
		} else {
			return "duplicated";
		}
	}

	// 일반 회원 가입버튼 클릭 시
	@GetMapping("/formJoinGen")
	public String formJoinGen() {
		return "user/formJoin";
	}

	// 사업자 회원 가입버튼 클릭 시(model객체에 사업자 회원 여부를 담음)
	@GetMapping("/formJoinBsns")
	public String formJoinBsns(Model model) {
		model.addAttribute("userType", "business");
		return "user/formJoin";
	}
	
	//이메일 인증(비동기)
	@ResponseBody
	@PostMapping("/emailCheck")
	public String emailCheck(@RequestBody String email) {// url에 파라미터 값으로 이메일이 옴.(JSON 데이터X)
		System.out.println("컨트롤러의 emailCheck 메서드 발동");
		System.out.println("email: " + email);
		
		return mailService.joinEmail(email);
	}
	

	// 회원가입 처리
	@PostMapping("/joinFinish")
	public void joinFinish(@ModelAttribute("info") UserVO vo) {
		System.out.println("컨트롤러의 joinFinish 메서드 발동");
		System.out.println("param: " + vo);
		service.userJoin(vo);
	}

	// 로그인 요청 처리(비동기)
	@ResponseBody
	@PostMapping("/loginCheck")
	public String loginCheck(@RequestBody UserVO vo, HttpSession session, HttpServletResponse response) {

		System.out.println("컨트롤러의 loginCheck 메서드 발동");
		System.out.println("param: " + vo);

		// 암호화 한 비밀번호를 응답받은 비밀번호와 equal로 바로 비교하지 않고
		// BCryptPasswordEncoder에게 암호화된 비밀번호화 원본 비밀번호 비교를 요청

		UserVO dbData = service.getInfo(vo.getUserid());
		
		if(dbData != null) { // 입력 받은 아이디로 db데이터가 조회된다면
			
			// 입력 받은 원본 비밀번호와 DB에 저장된 암호화된 비밀번호를 비교해
			if(encoder.matches(vo.getUserpw(), dbData.getUserpw())) {// 비밀번호가 db에 존재한다면
					System.out.println("loginSuccess");
					
					// 로그인 한 회원만 세션 생성
					session.setAttribute("login", dbData);
					
					// 자동로그인 유지 시간
					// 자동로그인 유지시간을 long타입으로 지정
					// -> 만료시간을 계산해서 DB와 연동해서 관리해야 하기 때문에(currentTimeMillis은 밀리초로 계산됨)
					long limitTime = 60 * 60 * 24 * 90;//90일
					
					// 자동 로그인 체크 시 처리해야 할 내용
					if(vo.isAutoLogin()) {
						
						// 자동 로그인을 희망하는 경우
						// 쿠키를 이용하여 자동 로그인 정보를 저장.
						System.out.println("자동 로그인 쿠키 생성 중...");
						
						//세션아이디를 가져와 쿠키에 저장(고유한 값이 필요해서)
						Cookie loginCookie = new Cookie("loginCookie", session.getId());
						loginCookie.setPath("/");//쿠키가 동작할 수 있는 유효한 url 설정
						loginCookie.setMaxAge((int) limitTime);//쿠키 만료시간 설정
						
						response.addCookie(loginCookie);//응답객체에 쿠키를 태워 보냄
						
						//자동 로그인 유지 시간을 날짜 객체로 변환(DB에 삽입하기 위해, 밀리초)
						long expiredDate = System.currentTimeMillis() + (limitTime * 1000);
						//Date 객체의 생성자에 매개값으로 밀리초의 정수를 전달하면 날자 형태로 변경해 줌
						Date limitDate = new Date(expiredDate);
						
						System.out.println("자동 로그인 만료 시간: " + limitDate);
						
						service.keepLogin(session.getId(), limitDate, vo.getUserid());
						
					}
					return "loginSuccess";
			} else { // 원본 비번과 암호화 된 비번이 일치하지 않는다면
				SecurityContextHolder.clearContext();//SecurityContext 기존 정보 초기화
				return "pwFail";
			}
		} else { // 입력 받은 아이디로 db데이터가 조회되지 않는다면
			SecurityContextHolder.clearContext();//SecurityContext 기존 정보 초기화
			return "idFail";
		}

	}// end loginCheck()

	// 마이페이지로 이동
	@GetMapping("/userInfo")
	public void UserInfo(HttpSession session, Model model) {
		System.out.println("컨트롤러의 UserInfo 메서드 발동");

		String userid = ((UserVO) session.getAttribute("login")).getUserid();
		UserVO userInfo = service.getInfo(userid);
		
		model.addAttribute("userInfo", userInfo);

	}
	


	// 마이페이지 수정 요청
	@PostMapping("/userUpdate")
	public String userUpdate(@RequestParam("file") MultipartFile file, UserVO vo, HttpSession session
			, HttpServletRequest request
			, HttpServletResponse response) {
		
		System.out.println("컨트롤러의 userUpdate 메서드 발동");
		System.out.println("param: " + vo);
		System.out.println("file: " + file);
		
		
		
		List<MultipartFile> fileList = new ArrayList<>();
		fileList.add(file);
		
		
		if(file.getSize() == 0) {
			System.out.println("파일정보가 존재하지 않음. " + file);
			if(service.getInfo(vo.getUserid()).getFilenum() != 0 ) {
				vo.setFilenum(service.getInfo(vo.getUserid()).getFilenum()); 
			}else
				vo.setFilenum(0);
		} else {
			System.out.println("파일정보가 존재함. imgService 호출. " + file);
			System.out.println(imgService.getLastUploaded());
			imgService.upload(fileList);
			vo.setFilenum(imgService.getLastUploaded());
		}
		service.updateUser(vo);
		
		
		System.out.println("정보 수정 후 세션 삭제 중...");
		// 정보 수정 후 세션과 로그인 쿠키 삭제 후 메인으로 이동
		session.removeAttribute("login");
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		if(loginCookie != null) {
			System.out.println("로그인 쿠키 존재. 삭제 진행 중...");
			loginCookie.setMaxAge(0);
			loginCookie.setPath("/");
			response.addCookie(loginCookie);
			service.keepLogin("none", new Date(), vo.getUserid());
		}
		
		return "redirect:/";
	}
	
	
	// 자유게시판 작성 글 보기로 이동
	@GetMapping("/cmnBoardChk")
	public void CmnBoardChk(PageVO vo, HttpSession session, Model model) {
		System.out.println("컨트롤러의 CmnBoardChk 메서드 발동");
		
		String userId = ((UserVO)session.getAttribute("login")).getUserid();
		vo.setCondition("writer");
		vo.setKeyword(userId); //키워드에 userid를 넣음
		PageCreator pc = new PageCreator();
		pc.setPaging(vo);
		pc.setArticleTotalCount(cmBoardService.getTotal(vo));
		
		System.out.println("페이지 번호: " + vo.getPageNum());
		System.out.println("검색어: " + vo.getKeyword());
		System.out.println("검색 조건: " + vo.getCondition());
		
		System.out.println("pc: " + pc);
		
		model.addAttribute("boardList", cmBoardService.getList(vo));
		model.addAttribute("pc", pc);
		
		
	}
	
	// 자유게시판 작성 댓글 보기로 이동
	@GetMapping("/cmnReplyChk")
	public void CmnReplyChk(PageVO vo, HttpSession session, Model model) {
		System.out.println("컨트롤러의 CmnBoardChk 메서드 발동");
		String userId = ((UserVO)session.getAttribute("login")).getUserid();
		vo.setCondition("writer");
		vo.setKeyword(userId); //키워드에 userid를 넣음
		PageCreator pc = new PageCreator();
		pc.setPaging(vo);
		pc.setArticleTotalCount(cmReplyService.getTotal(vo));
		

		model.addAttribute("replyList", cmReplyService.getReplyList(vo));
		model.addAttribute("pc", pc);
	}
	
	// 홍보게시판 작성 글 보기로 이동
	@GetMapping("/promoBoardChk")
	public void promoBoardChk(PageVO paging, PromoBoardVO vo, HttpSession session, Model model) {
		System.out.println("컨트롤러의 promoBoardChk 메서드 발동");
		System.out.println("요청 페이지 번호: " + paging.getPageNum());
		
		String userName = ((UserVO)session.getAttribute("login")).getUsername();
		paging.setCondition("writer");
		paging.setKeyword(userName); //키워드에 userid를 넣음
		PageCreator pc = new PageCreator();
		pc.setPaging(paging);
		pc.setArticleTotalCount(promBoardService.getTotal(paging));
		System.out.println(pc);
		
		List<PromoBoardVO> boardList = new ArrayList<>();
		
		for(PromoBoardVO pvo : promBoardService.getList(paging,vo)) {
			pvo.setLikeCnt(promBoardService.likeCnt(pvo.getBno()));
			boardList.add(pvo);
		}
		
		System.out.println(boardList);

		model.addAttribute("boardList", boardList);
		model.addAttribute("pc", pc);
	}
	
	// 홍보게시판 작성 댓글 보기로 이동
	@GetMapping("/promoReplyChk")
	public void promoReplyChk(PageVO paging, PromoBoardVO vo, HttpSession session, Model model) {
		System.out.println("컨트롤러의 promoReplyChk 메서드 발동");
		
		String userName = ((UserVO)session.getAttribute("login")).getUsername();
		paging.setCondition("writer");
		paging.setKeyword(userName); //키워드에 userid를 넣음
		PageCreator pc = new PageCreator();
		pc.setPaging(paging);
		pc.setArticleTotalCount(promoReplyService.getTotal(paging));
		System.out.println(pc);
		
		model.addAttribute("replyList", promoReplyService.getReplyList(paging));
		model.addAttribute("pc", pc);
		
	}
	
	// 공지 게시판 작성 댓글 보기로 이동
	@GetMapping("/noReplyChk")
	public void noReplyChk(PageVO vo, HttpSession session, Model model) {
		System.out.println("컨트롤러의 noReplyChk 메서드 발동");
		String userId = ((UserVO)session.getAttribute("login")).getUserid();
		vo.setCondition("writer");
		vo.setKeyword(userId); //키워드에 userid를 넣음
		PageCreator pc = new PageCreator();
		pc.setPaging(vo);
		pc.setArticleTotalCount(noReplyService.getTotal(vo));
		

		model.addAttribute("replyList", noReplyService.getReplyList(vo));
		model.addAttribute("pc", pc);
		System.out.println(noReplyService.getReplyList(vo));
		System.out.println(pc);
		
	}
	
	// 이벤트 게시판 작성 댓글 보기로 이동
	@GetMapping("/evReplyChk")
	public void evReplyChk(PageVO vo, HttpSession session, Model model) {

		System.out.println("컨트롤러의 evReplyChk 메서드 발동");
		String userId = ((UserVO)session.getAttribute("login")).getUserid();
		vo.setCondition("writer");
		vo.setKeyword(userId); //키워드에 userid를 넣음
		PageCreator pc = new PageCreator();
		pc.setPaging(vo);
		pc.setArticleTotalCount(evReplyService.getTotal(vo));
		

		model.addAttribute("replyList", evReplyService.getReplyList(vo));
		model.addAttribute("pc", pc);
		System.out.println(noReplyService.getReplyList(vo));
		System.out.println(pc);
	}
	
	
	// 주문/배송내역 조회로 이동
	@GetMapping("/orderDelHistory")
	public void orderDelHistory(HttpSession session, Model model, PageVO vo) {
		String userid = ((UserVO)session.getAttribute("login")).getUserid() ;
		System.out.println("/user/orderDelHistory: GET");
		System.out.println("orderDelHistory에 들어온 PageVO : " + vo);
		vo.setCountPerPage(10);
		List<OrderingVO> orderlist = orderingService.getList(userid, vo);
		for(int i =0; i<orderlist.size(); i++) {
			for(int j=0; j<orderlist.get(i).getOrdercart().size(); j++) {
 				 String proname = cartService.selectOne(orderlist.get(i).getOrdercart().get(j).getCartno()).getProname();
 				 int filenum = cartService.selectOne(orderlist.get(i).getOrdercart().get(j).getCartno()).getFilenum();
 				 orderlist.get(i).getOrdercart().get(j).setProname(proname);
 				 orderlist.get(i).getOrdercart().get(j).setFilenum(filenum);
			 }
		}
		System.out.println("UserContorller에서 출력하는 orderlist : " + orderlist);
		model.addAttribute("orderList" , orderlist);
		
		PageCreator pc = new PageCreator();
		pc.setPaging(vo);
		pc.setArticleTotalCount(orderingService.getTotal());
		System.out.println(pc);
		model.addAttribute("pc",pc);
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request
			, HttpServletResponse response) {

		System.out.println("컨트롤러의 logout 메서드 발동");
		UserVO vo = (UserVO)session.getAttribute("login");
		session.removeAttribute("login");
		
		Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
		
		if(loginCookie != null) {
			loginCookie.setMaxAge(0);
			//쿠키를 생성할 때 유효uri를 지정할 경우, 쿠키를 삭제할 때도 똑같이 지정해야 함.
			loginCookie.setPath("/");
			//쿠키는 클라이언트쪽에 저장되기 때문에
			//반드시 응답객체에 태워보내야 쿠키설정이 전달됨.
			response.addCookie(loginCookie);
			service.keepLogin("none", new Date(), vo.getUserid());
			
		}
		
		
		return "redirect:/";
	}

	// 탈퇴페이지로 이동
	@GetMapping("/memDelete")
	public void memDelete() {
		
	}
	
	
	// 탈퇴 처리(비동기)
	@ResponseBody
	@PostMapping("/memDelete")
	public String memDelete(@RequestBody UserVO vo, HttpSession session) {
		
		System.out.println("컨트롤러의 memDelete 메서드 발동");

		//memDelete의 매개변수 vo에 사용자가 입력한 비밀번호가 전달됨.
		//checkPw()가 db데이터의 암호화된 비밀번호를 리턴
		// -> 둘의 값을 비교. 일치하면 "match", 불일치 시 "none" 리턴
		boolean result = encoder.matches(vo.getUserpw(), service.checkPw(vo.getUserid()));
		
		if(result) {
			session.removeAttribute("login");// 세션 삭제
			SecurityContextHolder.clearContext();//SecurityContext 기존 정보 초기화
			service.deleteUser(vo.getUserid());// 탈퇴
			return "match";
		} else {
			return "none";
		}

	}
	
	
	@GetMapping("/alleyMap")
	public void alleyMap(Model model) {
		//map api
		model.addAttribute("bsnsUserAddr", service.getBsnsUserAddr());
		System.out.println(service.getBsnsUserAddr());
	}

}











