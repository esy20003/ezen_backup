package com.ezen.ticket.controller.action.success;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;

public class SuccessReplyDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int scseq = Integer.parseInt(request.getParameter("scseq")); // 댓글번호
		int sseq = Integer.parseInt(request.getParameter("sseq")); // 리뷰리스트 번호
		
		SuccessDao sdao = SuccessDao.getInstance();
		sdao.deleteReviewReply(scseq); // rdao에서 댓글번호를 넣어서 댓글 delete 를 진행
		
		String irl ="ticket.do?command=successViewNoCount&sseq=" + sseq;
		
		request.getRequestDispatcher(irl).forward(request, response);

	}

}
