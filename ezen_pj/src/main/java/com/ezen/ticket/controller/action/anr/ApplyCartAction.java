package com.ezen.ticket.controller.action.anr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dto.MemberVO;

public class ApplyCartAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String url="apply_register/apply/applyCart.jsp";
		
		HttpSession session=request.getSession();
		MemberVO mvo=(MemberVO)session.getAttribute("loginUser");
		if(mvo ==null) {
			url="ticket.do?command=loginForm";
		}else {
			String cseqStr=request.getParameter("cseq");
			int cseq=Integer.parseInt(cseqStr);
			String date=request.getParameter("date").substring(0,10);
			String time=request.getParameter("time");
			String area=request.getParameter("area");
			String quantity=request.getParameter("quantity");
			
			
			
			System.out.println(date);
			System.out.println(time);
		}
	}

}
