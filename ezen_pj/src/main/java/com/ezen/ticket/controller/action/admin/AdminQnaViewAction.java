package com.ezen.ticket.controller.action.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.AdminQnaReplyVO;
import com.ezen.ticket.dto.AdminVO;
import com.ezen.ticket.dto.QnaVO;

public class AdminQnaViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "admin/adminQnaView.jsp";
		HttpSession session = request.getSession();
		AdminVO avo = (AdminVO) session.getAttribute("loginAdmin");
		if(avo == null) {
			url = "ticket.do?command=adminLoginForm";
		}else {
			int qseq=Integer.parseInt(request.getParameter("qseq"));
			QnaDao qdao=QnaDao.getInstance();//이미 생성된 메서드를 이용
			QnaVO qvo=qdao.getQna(qseq);
			System.out.println("qvo 출력 "+qvo.getQseq()+" "+qvo.getContent());
			
			AdminQnaReplyVO aqvo=qdao.getQnaReply(qseq);

			request.setAttribute("QnaVO", qvo);
			request.setAttribute("qnaReplyVO", aqvo);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
