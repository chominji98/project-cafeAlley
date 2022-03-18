package com.spring.cafealley.reply.mapper;

import java.util.List;

import com.spring.cafealley.command.ReplyVO;

public interface IEvReplyMapper {

	//등록
	void replyRegist(ReplyVO vo);
	
	//목록요청
	List<ReplyVO> getList(int bno);
	
	//댓글 수정
	void replyUpdate(int rno);
	
	//댓글 삭제 rno,bno.조인.
	void replyDelete(int rno);

}
