package com.ezen.ticket.controller.action.success;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.MemberVO;

public class SuccessDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sucseq = Integer.parseInt(request.getParameter("sucseq"));
		System.out.println(sucseq);
		String url ="ticket.do?command=successList";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null ) {
			url = "ticket.do?command=loginForm";
		} else {
			//int sseq = Integer.parseInt(request.getParameter("sseq"));
			System.out.println("들어오냐?" + sucseq);
			SuccessDao sdao = SuccessDao.getInstance();
			sdao.deleteSuccess(sucseq);
			// 리뷰를 삭제하면 리뷰에 달린 댓글도 같이 삭제
			sdao.deleteReplyBysseq(sucseq);
			
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
