package com.ezen.ticket.controller.action.success;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.SuccessReplyVO;

public class SuccessReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		
		SuccessReplyVO svo = new SuccessReplyVO();
		//댓글 추가할 리뷰의 번호
		int sseq = Integer.parseInt(request.getParameter("sseq"));
		String id = request.getParameter("id");
		System.out.println("sseq = >" + sseq); // 번호 가져와지는거 확인함
		svo.setId(request.getParameter("id"));
		System.out.println("전달된 작성자 id =>"  + id);
		
		svo.setReplycontent(request.getParameter("reply"));
		svo.setSseq(sseq);
		System.out.println(mvo.getMseq());
		//svo.setMseq(mvo.getMseq());
		
		svo.setMseq(mvo.getMseq());
		SuccessDao sdao = SuccessDao.getInstance();
		
		
		sdao.insertReply(svo);
		
		// 조회수가 늘어나지 않는 successViewNocount 를 생성해서 실행
		
		response.sendRedirect("ticket.do?command=successViewNoCount&sseq=" + sseq);

	}

}
