package com.ezen.ticket.controller.action.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.ReviewReplyVO;
import com.ezen.ticket.dto.ReviewVO;

public class ReviewViewNoCountAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		ReviewDao rdao = ReviewDao.getInstance();
		
		ArrayList<ReviewReplyVO> list = rdao.selectReply(num); 
		request.setAttribute("replyList", list); // 파라미터전달
		
		ReviewVO rvo = rdao.getReview(num);
		request.setAttribute("review", rvo); // 파라미터전달
		
		RequestDispatcher dp = request.getRequestDispatcher("review/reviewView.jsp");
		dp.forward(request, response);

	}

}
