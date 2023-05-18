package com.ezen.ticket.controller.action.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.QnaVO;

public class QnaViewAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "qna/qnaView.jsp";
		int qseq = Integer.parseInt(request.getParameter("qseq"));
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			url = "shop.do?command=loginForm";
		} else {
			QnaDao qdao = QnaDao.getInstance();
			QnaVO qvo = qdao.getQna(qseq);
			request.setAttribute("qnaVO", qvo);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}