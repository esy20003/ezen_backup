package com.ezen.ticket.controller.action.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.AdminQnaReplyVO;

public class AddReplyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminQnaReplyVO rvo = new AdminQnaReplyVO();
		int qnanum = Integer.parseInt(request.getParameter("qnanum"));
		rvo.setId(request.getParameter("id"));
		rvo.setContent(request.getParameter("reply"));
		rvo.setQnanum(qnanum);
		QnaDao qdao = QnaDao.getInstance();
		qdao.insertReply(rvo);
		response.sendRedirect("ticket.do?command=qnaViewNoCount&qseq=" + qnanum);
	}
}