package com.ezen.ticket.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.ReviewReplyVO;

public class ReviewReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberVO mvo = new MemberVO();
		
		ReviewReplyVO rvo = new ReviewReplyVO();
		//댓글 추가할 리뷰의 번호
		int rseq = Integer.parseInt(request.getParameter("rseq"));
		System.out.println("rseq = >" + rseq); // 번호 가져와지는거 확인함
//		rvo.setId(request.getParameter("id"));
		rvo.setReplycontent(request.getParameter("reply"));
		rvo.setMseq(mvo.getMseq());
		rvo.setRseq(rseq);
		
		ReviewDao rdao = ReviewDao.getInstance();
		rdao.insertReply(rvo);
		
		// 조회수가 늘어나지 않는 reviewViewNocount 를 생성해서 실행
		
		response.sendRedirect("ticket.do?command=reviewViewNoCount&rseq=" + rseq);
	}

}
