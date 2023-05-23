package com.ezen.ticket.controller.action.anr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dto.MemberVO;

public class RegisterAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "apply_register/apply/registerEnd.jsp";
		HttpSession session = request.getSession();
        MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
        if (mvo == null) {
            response.sendRedirect("ticket.do?command=loginForm");
        } else {
            
            request.getRequestDispatcher(url).forward(request, response);
        }
	}

}
