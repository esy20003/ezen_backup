package com.ezen.ticket.controller.action.content;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ContentDao;
import com.ezen.ticket.dto.MemberVO;

public class ContentSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			System.out.println("여기왔습니다. 로그인 하였습니다.");
			String key = request.getParameter("key");
			System.out.println("key 값 = " + key);
			ContentDao cdao = ContentDao.getInstance();
			ArrayList<ContentVO> list = cdao.contentSearch(key);
			int cseq = cdao.contentSearch(key);
			System.out.println("cseq 값 = " + cseq);
			String url = "ticket.do?command=contentDetail&cseq=" + cseq;
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
