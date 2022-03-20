package com.spring.cafealley.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.cafealley.command.ProductVO;
import com.spring.cafealley.command.ShopboardVO;
import com.spring.cafealley.img.service.IImgService;
import com.spring.cafealley.product.service.IProductService;
import com.spring.cafealley.shopboard.service.IShopboardService;

@Controller
@RequestMapping("/shop")
public class ShopboardController {

	
	@Autowired
	IShopboardService service;
	@Autowired
	IProductService productService;
	@Autowired
	IImgService imgService;
	
	@GetMapping("/shopList")
	public void shopList(Model model) {
		System.out.println("/shop/shopList: GET");
		List<ShopboardVO> shopList = service.getList();
		
		// 해당 판매 게시글에 등록된 상품중 최저가를 같이 뿌려주기 위함.
		List<Integer> sellPriceList = new ArrayList<>();
		for(ShopboardVO vo :shopList) {
			int min=0;
			for(ProductVO provo :vo.getProList()) {
				if(min==0) // 첫빠따가 일단 min
					min = provo.getProsellprice();
				else { // 그 이후는 제일 작은게 min
					if(min >= provo.getProsellprice())
						min = provo.getProsellprice();
				}
			}
			// 해당 게시글의 최저가 또한 shopList와 같은 순서로 저장됨.  
			sellPriceList.add(min);
		}
		model.addAttribute("shopList",shopList);
		model.addAttribute("sellPriceList",sellPriceList);
	}
	
	
	@GetMapping("/shopWrite")
	public void shopWrite(int prono, int prono2,
						  int prono3, int prono4, Model model){
		// 상품관리페이지에서 체크한 상품 번호들고 shopWrite.jsp에 뿌려줘야함.
		System.out.println("/shop/shopWrite: GET");
		List<ProductVO> proList = new ArrayList<>();
		if(prono != 0) // int의 초기화 하지 않은 default 값은 0이다. prono의 sequence는 1부터시작하니 0인 상품번호를 가진 상품데이터는 없다
			proList.add(productService.getProduct(prono));
		if(prono2 != 0)
			proList.add(productService.getProduct(prono2));
		if(prono3 != 0)
			proList.add(productService.getProduct(prono3));
		if(prono4 !=0)
			proList.add(productService.getProduct(prono4));
		model.addAttribute("proList",proList);
	}
	
	@PostMapping("/shopWrite")
	public String shopRegist(@RequestParam("file") List<MultipartFile> list,
			ShopboardVO vo, HttpSession session, RedirectAttributes ra) {
		System.out.println("/shop/shopWrite: POST");
		System.out.println("페이지에서 들어온 vo : " + vo);
		imgService.upload(list);
		System.out.println("마지막 업로드된 filenum: "+ imgService.getLastUploaded());
		vo.setFilenum(imgService.getLastUploaded());
		System.out.println("vo에 filenu 세팅한 후의 vo : " + vo);
		service.regist(vo);
		ra.addFlashAttribute("msg", "상품 등록이 완료되었습니다.");
		return "redirect:/shop/shopList";
	}
	
	@GetMapping("/shopDetail/${bno}")
	public void shopDetail(@PathVariable int bno,
						   Model model) {
		System.out.println("/shop/shopDetail: GET");
		
		ShopboardVO vo =  service.getContent(bno);
		ProductVO leastSellPricePro = new ProductVO();
		for(ProductVO provo :vo.getProList()) {
		int min=0;
			if(min==0) // 첫빠따가 일단 min
				min = provo.getProsellprice();
			else { // 그 이후는 제일 작은게 min
				if(min >= provo.getProsellprice())
					min = provo.getProsellprice();
					leastSellPricePro = provo;
			}
		}
		
		model.addAttribute("leastPro", leastSellPricePro);
		model.addAttribute("shop",vo);
	}
	
}
