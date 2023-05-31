package com.ezen.ticket.controller.action.content;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ContentDao;
import com.ezen.ticket.dto.ContentVO;

public class ContentFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * HttpSession session = request.getSession(); MemberVO mvo =
		 * (MemberVO)session.getAttribute("loginUser");
		 * 할 필요가 없음 누구나 대리티켓팅을 할 수 있음.
		 */
		
		ContentDao cdao = ContentDao.getInstance();
		// 콘서트
		ArrayList<ContentVO> concert = cdao.selectContentsByCategory(1);
		// 뮤지컬
		ArrayList<ContentVO> musical = cdao.selectContentsByCategory(2);
		// 스포츠
		ArrayList<ContentVO> sports = cdao.selectContentsByCategory(3);
		// 페스티벌
		ArrayList<ContentVO> festival = cdao.selectContentsByCategory(4);
		// 전시/행사
		ArrayList<ContentVO> event = cdao.selectContentsByCategory(5);
		
		request.setAttribute("concert", concert);
		request.setAttribute("musical", musical);
		request.setAttribute("sports", sports);
		request.setAttribute("festival", festival);
		request.setAttribute("event", event);
		
		request.getRequestDispatcher("content/content.jsp").forward(request, response);
		
		
	}

}
