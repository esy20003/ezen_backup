package com.ezen.ticket.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);
		
	}

}
