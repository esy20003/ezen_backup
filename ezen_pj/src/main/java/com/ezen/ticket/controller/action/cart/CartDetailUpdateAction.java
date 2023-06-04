package com.ezen.ticket.controller.action.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dto.MemberVO;

public class CartDetailUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "cart/cartList.jsp";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		String quantities = request.getParameter("quantity");
		String defuties = request.getParameter("defuty");
		System.out.println(quantities);
		System.out.println(defuties);
		if(mvo == null) {
			url = "member/loginForm.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
