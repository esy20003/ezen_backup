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
import com.ezen.ticket.dto.ContentVO;
import com.ezen.ticket.dto.MemberVO;

public class CartDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 장바구니에서 주문하기 눌러서 넘어갈 페이지
		String url = "cart/cartDetail.jsp";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		
		
		if(mvo == null) {
			url = "member/login.jsp";
		}else {
			String [] cseqArr = request.getParameterValues("cartseq");
			CartDao cdao = CartDao.getInstance();
			ArrayList<CartVO> cartList = new ArrayList<CartVO>();
			ArrayList<ContentVO> contentList = new ArrayList<ContentVO>();
			for(String cseq : cseqArr) {
				cartList = cdao.selectCart(Integer.parseInt(cseq), mvo);
				contentList = cdao.selectContent(Integer.parseInt(cseq));
			}
			request.setAttribute("order", cartList);
			request.setAttribute("content", contentList);
		}
		
		request.getRequestDispatcher(url).forward(request, response);

	}

}
