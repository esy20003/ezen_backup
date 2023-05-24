package com.ezen.ticket.controller.action.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.CartDao;
import com.ezen.ticket.dto.MemberVO;

public class CartDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String [] cseqArr = request.getParameterValues("cartseq");
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		
		CartDao cdao = CartDao.getInstance();
		
		for( String cseq : cseqArr )
			cdao.deleteCart( Integer.parseInt(cseq), mvo );
		
		response.sendRedirect("ticket.do?command=cartList");
		
	}

}
