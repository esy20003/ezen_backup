package com.ezen.ticket.controller.action.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.QnaVO;

public class UpdateQnaFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qseq = Integer.parseInt( request.getParameter("qseq") );
		QnaDao qdao = QnaDao.getInstance();
		QnaVO  qvo = qdao.getQna(qseq);
		
		request.setAttribute("qna", qvo);
		RequestDispatcher dp = request.getRequestDispatcher("qna/updateQnaForm.jsp");
		dp.forward(request, response);

	}

}
