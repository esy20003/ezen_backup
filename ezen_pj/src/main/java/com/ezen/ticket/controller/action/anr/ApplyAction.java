package com.ezen.ticket.controller.action.anr;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.OrderDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.OrderVO;

public class ApplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url="apply_register/apply/applyFinalPage.jsp";
		HttpSession session=request.getSession();
		MemberVO mvo=(MemberVO)session.getAttribute("loginUser");
		if(mvo ==null) {
			url="ticket.do?command=loginForm";
		}else {
			int cseq=Integer.parseInt(request.getParameter("cseq"));
			OrderDao odao=OrderDao.getInstance();
			ArrayList<OrderVO> list=	odao.insertAndSelectOrders(mvo,cseq);
			
			request.setAttribute("orderList", list);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
