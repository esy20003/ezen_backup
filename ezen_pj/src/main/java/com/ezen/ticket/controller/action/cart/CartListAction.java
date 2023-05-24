package com.ezen.ticket.controller.action.cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.controller.action.membergradeview.Member_Grade_View_Dao;
import com.ezen.ticket.dao.CartDao;
import com.ezen.ticket.dto.CartVO;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.Member_Grade_View_VO;

public class CartListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "cart/cartListForm.jsp";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if(mvo == null) {
			url = "ticket.do?command=loginForm";
		}else {
			CartDao cartdao = CartDao.getInstance();
			Member_Grade_View_Dao mgvdao = Member_Grade_View_Dao.getInstance();
			ArrayList<CartVO> list = cartdao.getMyCartList_notBuy(mvo.getMseq());
			ArrayList<CartVO> buycartlist = cartdao.getMyCartList_Buy(mvo.getMseq());
			ArrayList<Member_Grade_View_VO> defutylist = mgvdao.setDefutyList(list, list.size());
			request.setAttribute("notBuy_cartList", list);
			request.setAttribute("buy_cartList", buycartlist);
			request.setAttribute("defuty", defutylist);
		}
		
		/* request.getRequestDispatcher("main.jsp").forward(request, response); */
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
