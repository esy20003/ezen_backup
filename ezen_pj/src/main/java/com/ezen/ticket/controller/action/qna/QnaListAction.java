package com.ezen.ticket.controller.action.qna;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.QnaVO;
import com.ezen.ticket.util.Paging;

public class QnaListAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "qna/qnaList.jsp";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			url = "ticket.do?command=loginForm";
		} else {
			QnaDao qdao = QnaDao.getInstance();
			int page = 1;
			if (request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}

			Paging paging = new Paging();
			paging.setPage(page);
			int count = qdao.getAllCount();
			paging.setTotalCount(count);
			ArrayList<QnaVO> list = qdao.selectQna(paging);
			request.setAttribute("qnaList", list);
			request.setAttribute("paging", paging);
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}
