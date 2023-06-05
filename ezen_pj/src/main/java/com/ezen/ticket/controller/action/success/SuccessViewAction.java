package com.ezen.ticket.controller.action.success;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.SuccessReplyVO;
import com.ezen.ticket.dto.SuccessVO;

public class SuccessViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "success/successView.jsp";
		int sucseq = Integer.parseInt(request.getParameter("sucseq"));
		System.out.println("받아온 sucseq" + sucseq);
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null) {
			url ="ticket.do?command=loginForm";
		} else {
			SuccessDao sdao = SuccessDao.getInstance();
			
			sdao.plusOneReadcount(sucseq); // 리뷰 조회수 증가
			
			ArrayList<SuccessReplyVO> list = sdao.selectReply(sucseq);
			request.setAttribute("replyList", list); /// 댓글 리스트 긁어와서 뿌려
			
			System.out.println("댓글 리스트 = >" +  list.size());
			
			SuccessVO svo = sdao.getSuccess(sucseq);
			request.setAttribute("SuccessVO", svo);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
