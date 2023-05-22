package com.ezen.ticket.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.dao.ContentDao;
import com.ezen.ticket.dto.ContentVO;

public class IndexAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * ProductDao pdao = ProductDao.getInstance();
		 * 
		 * ArrayList<ProductVO> bestList = pdao.getBestList(); ArrayList<ProductVO>
		 * newList = pdao.getNewList();
		 * 
		 * request.setAttribute("bestList", bestList); 
		 * request.setAttribute("newList", newList);
		 * 
		 * RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
		 * dispatcher.forward(request, response);
		 */
		
		// bestContent 받아오기
		ContentDao cdao = ContentDao.getInstance();
		ArrayList<ContentVO> bestContent = cdao.getBestContent();
		
		ArrayList<ContentVO> concert = cdao.getConsert();
		
		request.setAttribute("bestContent", bestContent);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);
		
	}

}
