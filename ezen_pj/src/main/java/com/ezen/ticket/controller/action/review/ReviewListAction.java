package com.ezen.ticket.controller.action.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.ReviewVO;

public class ReviewListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "review/reviewList.jsp";
		//int rseq = Integer.parseInt(request.getParameter("rseq")); // 조회할 리뷰 리스트 번호

		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			url = "ticket.do?command=loginForm";
		} else {

			ReviewDao rdao = ReviewDao.getInstance();
			ArrayList<ReviewVO> list = rdao.reviewListView();
			System.out.println(list.size());
			request.setAttribute("reviewList", list);

		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
