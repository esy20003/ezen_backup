package com.ezen.ticket.controller.action.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.AdminVO;
import com.ezen.ticket.dto.SuccessVO;
import com.ezen.ticket.util.Paging;

public class AdminSuccessListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "admin/adminSuccessList.jsp";
		HttpSession session=request.getSession();
		AdminVO avo=(AdminVO)session.getAttribute("loginAdmin");
		if(avo ==null) {
			url="ticket.do?command=adminLoginForm";
		}else {
			SuccessDao sdao = SuccessDao.getInstance();
			int page = 1;
			if(request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}
			Paging paging = new Paging();
			paging.setPage(page);
			int count = sdao.getAllcount();
			paging.setTotalCount(count);
			ArrayList<SuccessVO> list = sdao.selectSuccess(paging);
			
			System.out.println(list.size());
			request.setAttribute("successList", list);
			request.setAttribute("paging", paging);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
