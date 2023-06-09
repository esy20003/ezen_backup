package com.ezen.ticket.controller.action.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.QnaVO;

public class QnaWriteAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ticket.do?command=qnaList";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			url = "ticket.do?command=loginForm";
		} else {
			QnaVO qvo = new QnaVO();
			qvo.setMseq(mvo.getMseq());
			qvo.setId(mvo.getId());
			qvo.setPwd(mvo.getPwd());
			qvo.setTitle(request.getParameter("title"));
			qvo.setContent(request.getParameter("content"));
			QnaDao qdao = QnaDao.getInstance();
			qdao.insertQna(qvo);
		}

		response.sendRedirect(url);
	}
}
