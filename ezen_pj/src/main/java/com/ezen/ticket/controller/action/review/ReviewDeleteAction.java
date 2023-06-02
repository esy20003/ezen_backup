package com.ezen.ticket.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.MemberVO;

public class ReviewDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rseq = Integer.parseInt(request.getParameter("rseq"));
		System.out.println(rseq);
		String url ="ticket.do?command=reviewList";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null ) {
			url = "ticket.do?command=loginForm";
		} else {
			//int rseq = Integer.parseInt(request.getParameter("rseq"));
			System.out.println("들어오냐?" + rseq);
			ReviewDao rdao = ReviewDao.getInstance();
			rdao.deleteReview(rseq);
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
