package com.ezen.ticket.controller.action.order;

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

public class OrderDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String url = "order/orderDetail.jsp";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if(mvo == null) {
			url = "ticket.do?command=loginForm";
		}else {
			OrderDao odao=OrderDao.getInstance();
			int oseq=Integer.parseInt(request.getParameter("oseq"));
			ArrayList<OrderVO> odList=odao.getOrderDetailList(mvo.getMseq(),oseq);			
			
			request.setAttribute("orderDetailList", odList);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
