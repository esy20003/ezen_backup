package com.ezen.ticket.controller.action.success;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.SuccessReplyVO;
import com.ezen.ticket.dto.SuccessVO;

public class SuccessViewNoCountAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("sucseq"));
		System.out.println("sucseq  가 받아지냐 ?" +  num); // 받아지는것 확인함
		
		SuccessDao sdao = SuccessDao.getInstance();
		
		ArrayList<SuccessReplyVO> list = sdao.selectReply(num); 
		request.setAttribute("replyList", list); // list 긁어온걸 replyList 에 파라미터전달
		
		SuccessVO svo = sdao.getSuccess(num);
		request.setAttribute("SuccessVO", svo); // 파라미터전달
		
		System.out.println("댓글 리스트 = >" +  list.size());
		RequestDispatcher dp = request.getRequestDispatcher("success/successView.jsp");
		dp.forward(request, response);

	}

}
