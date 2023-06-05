package com.ezen.ticket.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.ReviewReplyVO;

public class ReviewReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		HttpSession session = request.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		
		ReviewReplyVO rvo = new ReviewReplyVO();
		//댓글 추가할 리뷰의 번호
		int rseq = Integer.parseInt(request.getParameter("rseq"));
		String id = request.getParameter("id");
		System.out.println("rseq = >" + rseq); // 번호 가져와지는거 확인함
		rvo.setId(request.getParameter("id"));
		System.out.println("전달된 작성자 id =>"  + id);
		
		System.out.println("작성 내용은? =" +  request.getParameter("reply"));
		
		rvo.setReplycontent(request.getParameter("reply"));
		rvo.setRseq(rseq);
		System.out.println(mvo.getMseq());
		//rvo.setMseq(mvo.getMseq());
		
		rvo.setMseq(mvo.getMseq());
		ReviewDao rdao = ReviewDao.getInstance();
		
		
		rdao.insertReply(rvo);
		
		// 조회수가 늘어나지 않는 reviewViewNocount 를 생성해서 실행
		
		response.sendRedirect("ticket.do?command=reviewViewNoCount&rseq=" + rseq);
	}

}
