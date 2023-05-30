package com.ezen.ticket.controller.action.cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.CartDao;
import com.ezen.ticket.dto.CartVO;
import com.ezen.ticket.dto.MemberVO;

public class CartUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "cart/cartUpdate.jsp";
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		
		String [] cseqArr = request.getParameterValues("cartseq");
		
		if(mvo == null) {
			url = "member/login.jsp";
		}else {
			// 대리인, 수량 수정
			CartDao cdao = CartDao.getInstance();
			ArrayList<CartVO> cartList = new ArrayList<CartVO>();
			
			for(String cseq : cseqArr)
				cartList = cdao.selectCart(Integer.parseInt(cseq), mvo);
			
			request.setAttribute("cart", cartList);
			
		}
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
