package com.ezen.ticket.controller.action.qna;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.QnaVO;
import com.ezen.ticket.dto.AdminQnaReplyVO;

public class QnaViewNoCountAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qseq = Integer.parseInt(request.getParameter("qseq"));
		QnaDao qdao = QnaDao.getInstance();
		qdao.plusOneReadcount( qseq ); //조회수 증가 메서드 호출
		
		//ArrayList<ReplyVO> list = qdao.selectReply(qseq);
		//request.setAttribute("list", list);
		
		QnaVO qvo = qdao.getQna(qseq);
		request.setAttribute("QnaVO", qvo);
		
		HttpSession session = request.getSession();
		session.removeAttribute("pwd");
		
		RequestDispatcher rd = request.getRequestDispatcher("qna/qnaView.jsp");
		rd.forward(request, response);
	}
}