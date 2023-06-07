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
import com.ezen.ticket.dto.SuccessReplyVO;
import com.ezen.ticket.dto.SuccessVO;

public class AdminSuccessViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "admin/adminSuccessView.jsp";
		int scseq = Integer.parseInt(request.getParameter("sucseq"));
		System.out.println("받아온 sucseq" + scseq);
		HttpSession session = request.getSession();
		AdminVO avo = (AdminVO)session.getAttribute("loginAdmin");
		if(avo == null) {
			url ="ticket.do?command=adminLoginForm";
		} else {
			SuccessDao sdao = SuccessDao.getInstance();
			
			sdao.plusOneReadcount(scseq); // 리뷰 조회수 증가
			
			ArrayList<SuccessReplyVO> list = sdao.selectReply(scseq);
			request.setAttribute("replyList", list); /// 댓글 리스트 긁어와서 뿌려
			
			System.out.println("댓글 리스트 = >" +  list.size());
			
			SuccessVO svo = sdao.getSuccess(scseq);
			request.setAttribute("SuccessVO", svo);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
