package com.spring.cafealley.board.mapper;

import java.util.List;
// 조장 메세지

// 또또또
import com.spring.cafealley.command.BoardVO;



public interface IBoardMapper {

	//글 등록
	void regist(BoardVO vo);
	
	//글 목록
//	List<NoBoardVO> getList(PageVO vo);
	
	//총 게시물 수
//	int getTotal(PageVO vo);
	
	//상세보기
	BoardVO getContent(int bno);
	
	//수정
	void update(BoardVO vo);
	
	//삭제
	void delete(int bno);
	
	void yeonji(int bno);
}
