package com.ezen.ticket.controller.action.cart;

import java.io.IOException;
import java.util.ArrayList;

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

		String[] cartSeqArr = request.getParameterValues("cartseq");
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			String url = "member/login.jsp";
			request.getRequestDispatcher(url).forward(request, response);
		} else {
			CartDao cdao = CartDao.getInstance();
			for (String cartSeq : cartSeqArr)
				cdao.deleteCart(Integer.parseInt(cartSeq));

			response.sendRedirect("ticket.do?command=cartList");
		}

	}

}
