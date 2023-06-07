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

public class ContentFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "content/content.jsp";
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
		ArrayList<ContentVO> exhibition = cdao.selectContentsByCategory(5);

		request.setAttribute("concert", concert);
		request.setAttribute("musical", musical);
		request.setAttribute("sports", sports);
		request.setAttribute("festival", festival);
		request.setAttribute("exhibition", exhibition);
		request.getRequestDispatcher(url).forward(request, response);

	}

}
