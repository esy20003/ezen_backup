package com.ezen.ticket.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.ReviewVO;

public class ReviewEditFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url ="review/reviewEditForm.jsp";
		int rseq = Integer.parseInt(request.getParameter("rseq"));

		HttpSession session = request.getSession();
        MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
        if (mvo == null) {
            url = "ticket.do?command=loginForm";
        } else {
        	System.out.println(rseq);
        	ReviewDao rdao = ReviewDao.getInstance();
    		ReviewVO rvo = rdao.getReview(rseq); 
    		
        	request.setAttribute("reviewVO", rvo);
            request.getRequestDispatcher(url).forward(request, response);
        }
		

	}

}
