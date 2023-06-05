package com.ezen.ticket.controller.action.success;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.SuccessVO;

public class SuccessEditFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "success/successEditForm.jsp";
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null) {
			url ="ticket.do?command=loginForm";
		} else {
			
			int sucseq = Integer.parseInt(request.getParameter("sucseq"));
			System.out.println(sucseq);
			
			SuccessDao sdao = SuccessDao.getInstance();
			SuccessVO svo = sdao.getSuccess(sucseq);

		
			
			request.setAttribute("SuccessVO", svo);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
