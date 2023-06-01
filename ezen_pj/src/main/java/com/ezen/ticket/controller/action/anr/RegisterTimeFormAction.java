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

public class RegisterTimeFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "apply_register/register/registerTimeForm.jsp";
		HttpSession session=request.getSession();
		MemberVO mvo=(MemberVO)session.getAttribute("loginUser");
		
		int mseq=mvo.getMseq();
		String[] date = request.getParameterValues("date");
		String[] starttime = request.getParameterValues("starttime");
		String[] endtime = request.getParameterValues("endtime");
	
		RegisterTimeDao rdao = RegisterTimeDao.getInstance();
		for(int i=0; i<date.length; i++) {
			rdao.insertRegisterTime(mseq, date[i], starttime[i], endtime[i]);
		}
		ArrayList<RegisterTimeVO> regi = new ArrayList<RegisterTimeVO>();
		regi = rdao.getMyRegister(mvo);
		request.setAttribute("register", regi);
			
		request.getRequestDispatcher(url).forward(request, response);
	}

}
