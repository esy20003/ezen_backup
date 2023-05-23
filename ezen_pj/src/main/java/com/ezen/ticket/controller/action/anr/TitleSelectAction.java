package com.ezen.ticket.controller.action.anr;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ContentDao;
import com.ezen.ticket.dto.ContentVO;
import com.ezen.ticket.dto.MemberVO;

public class TitleSelectAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url="apply_register/apply/applyForm.jsp";
		HttpSession session=request.getSession();
		MemberVO mvo=(MemberVO)session.getAttribute("loginUser");
		if(mvo ==null) {
			url="ticket.do?command=loginForm";
		}else {
			ArrayList<ContentVO> list =null;	
			ContentDao cdao=ContentDao.getInstance();
			String title=request.getParameter("title");
			list=cdao.selectContentByTitle(title);
			request.setAttribute("contentList", list);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
