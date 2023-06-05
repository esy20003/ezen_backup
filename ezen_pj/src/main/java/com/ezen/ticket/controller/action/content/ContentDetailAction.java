package com.ezen.ticket.controller.action.content;

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

public class ContentDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String url = "content/contentDetail.jsp";
		HttpSession session = request.getSession();
		ContentDao cdao = ContentDao.getInstance();
		ArrayList<ContentVO> content = new ArrayList<ContentVO>();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		
		if(mvo == null) {
			url = "ticket.do?command=loginForm";
		}else {
			int cseq = Integer.parseInt(request.getParameter("cseq"));
			content = cdao.selectContentByCseq(cseq);
			
			request.setAttribute("content", content);
			
		}
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
