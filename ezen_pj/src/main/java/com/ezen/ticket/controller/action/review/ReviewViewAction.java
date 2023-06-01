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
import com.ezen.ticket.dto.ReviewReplyVO;
import com.ezen.ticket.dto.ReviewVO;

public class ReviewViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "review/reviewView.jsp";
		int rseq = Integer.parseInt(request.getParameter("rseq"));
		System.out.println(rseq);
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null) {
			url ="ticket.do?command=loginForm";
		} else {
			ReviewDao rdao = ReviewDao.getInstance();
			
			rdao.plusOneReadcount(rseq); // 리뷰 조회수 증가
			
			ArrayList<ReviewReplyVO> list = rdao.selectReply(rseq);
			request.setAttribute("replyList", list); /// 댓글 리스트 긁어와서 뿌려
			
			System.out.println("댓글 리스트 = >" +  list.size());
			
			ReviewVO rvo = rdao.getReview(rseq);
			request.setAttribute("reviewVO", rvo);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}



