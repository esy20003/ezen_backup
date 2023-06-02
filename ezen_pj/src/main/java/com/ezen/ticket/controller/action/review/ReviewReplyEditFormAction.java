package com.ezen.ticket.controller.action.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.ReviewReplyVO;

public class ReviewReplyEditFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rseq = Integer.parseInt(request.getParameter("rseq"));
		System.out.println("전달한 rseq" + rseq);
		//int repseq = Integer.parseInt(request.getParameter("repseq"));
		
		
		ReviewDao rdao = ReviewDao.getInstance();
		ArrayList<ReviewReplyVO> list = rdao.selectReply(rseq);
		request.setAttribute("replyList", list); /// 댓글 리스트 긁어와서 뿌려
		
		request.getRequestDispatcher("review/reviewReplyEditForm.jsp").forward(request, response);
		
		//reviewReplyEditForm.jsp

	}

}
