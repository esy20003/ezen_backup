package com.ezen.ticket.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.AdminVO;

public class AdminSuccessListDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		AdminVO avo = (AdminVO)session.getAttribute("loginAdmin");
		String url="";
		if( avo == null ) {
			url = "ticket.do?command=adminLoginForm";
		}else {
			SuccessDao sdao = SuccessDao.getInstance();
			int sucseq = Integer.parseInt(request.getParameter("sucseq"));
			sdao.deleteSuccess(sucseq);
		}
		request.getRequestDispatcher("ticket.do?command=adminSuccessList").forward(request, response);

	}

}
