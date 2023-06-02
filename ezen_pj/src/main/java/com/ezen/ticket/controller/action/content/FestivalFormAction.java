package com.ezen.ticket.controller.action.content;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ContentDao;
import com.ezen.ticket.dto.ContentVO;

public class FestivalFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ContentDao cdao = ContentDao.getInstance();
		ArrayList<ContentVO> festival = cdao.selectContentsByCategory(4);
		
		request.setAttribute("festival", festival);
		request.getRequestDispatcher("content/festival.jsp").forward(request, response);
		
	}

}
