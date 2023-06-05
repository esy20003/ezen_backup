package com.ezen.ticket.controller.action.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;

public class DeleteReplyAction implements Action {
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reply = request.getParameter("reply");
		String qnanum = request.getParameter("qnanum");
		QnaDao qdao = QnaDao.getInstance();
		qdao.deleteReply(reply);
		String url = "ticket.do?command=qnaViewNoCount&qseq=" + qnanum;
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
