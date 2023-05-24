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
		ArrayList<ContentVO> list =null;	
		ArrayList<ContentVO> list2 =null;	
		if(mvo ==null) {
			url="ticket.do?command=loginForm";
		}else {
			ContentDao cdao=ContentDao.getInstance();
			int category=Integer.parseInt(request.getParameter("category"));
			list = cdao.selectContent(category);
			
			int cseq=Integer.parseInt(request.getParameter("cseq"));

			list2=cdao.selectContentDetailByTitle(cseq);
			
			request.setAttribute("category", category);

			request.setAttribute("contentList", list);
			request.setAttribute("contentDateList", list2);
			
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
