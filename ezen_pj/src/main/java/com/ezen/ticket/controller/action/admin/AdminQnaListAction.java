package com.ezen.ticket.controller.action.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.AdminVO;
import com.ezen.ticket.dto.QnaVO;
import com.ezen.ticket.util.Paging;

public class AdminQnaListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "admin/adminQnaList.jsp";
		HttpSession session = request.getSession();
		AdminVO avo = (AdminVO) session.getAttribute("loginAdmin");
		if(avo == null) {
			url = "ticket.do?command=adminLoginForm";
		}else {
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
