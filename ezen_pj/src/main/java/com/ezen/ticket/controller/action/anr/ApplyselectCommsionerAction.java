package com.ezen.ticket.controller.action.anr;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.RegisterTimeDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.RegisterTimeVO;

public class ApplyselectCommsionerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url="apply_register/apply/applySelectCommisioner.jsp";
		
		HttpSession session=request.getSession();
		MemberVO mvo=(MemberVO)session.getAttribute("loginUser");
		if(mvo ==null) {
			url="ticket.do?command=loginForm";
		}else {
		String date=request.getParameter("date");
		System.out.println(date);
		String time=request.getParameter("time");
		System.out.println(time);
		RegisterTimeDao rtdao=RegisterTimeDao.getInstance();
//		ArrayList<RegisterTimeVO> list=rtdao.getCommissioner
		request.getRequestDispatcher(url).forward(request, response);
		}
	}


}
