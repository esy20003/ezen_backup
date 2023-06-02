package com.ezen.ticket.controller.action.anr;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ContentDao;
import com.ezen.ticket.dao.OrderDao;
import com.ezen.ticket.dto.ContentVO;
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
			//지금 이거는 주문을 1개만 하는 경우만 가능함
			int cseq=Integer.parseInt(request.getParameter("cseq"));
			String date=request.getParameter("date").substring(0,10).replace("-", "");
			String time=request.getParameter("time");
			String area=request.getParameter("area");
			int quantity=Integer.parseInt(request.getParameter("quantity"));
			int mseq2=Integer.parseInt(request.getParameter("mseq2"));
			ArrayList<ContentVO> forLocationNum=ContentDao.getInstance().selectContentByCseq(cseq);
			int locationNum=forLocationNum.get(0).getLocationNum();
			OrderDao odao=OrderDao.getInstance();
			odao.insertOrders(mvo,cseq, date, time, area, quantity, mseq2,locationNum);
			
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
