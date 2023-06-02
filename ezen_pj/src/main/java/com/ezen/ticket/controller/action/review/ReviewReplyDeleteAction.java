package com.ezen.ticket.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;

public class ReviewReplyDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int repseq = Integer.parseInt(request.getParameter("repseq")); // 댓글번호
		int rseq = Integer.parseInt(request.getParameter("rseq")); // 리뷰리스트 번호
		
		ReviewDao rdao = ReviewDao.getInstance();
		rdao.deleteReviewReply(repseq); // rdao에서 댓글번호를 넣어서 댓글 delete 를 진행
		
		String irl ="ticket.do?command=reviewViewNoCount&rseq=" + rseq;
		
		request.getRequestDispatcher(irl).forward(request, response);
		

	}

}
