package com.ezen.ticket.controller.action.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.MemberDao;
import com.ezen.ticket.dto.MemberVO;

public class MemberUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberVO mvo = new MemberVO();
		mvo.setId(request.getParameter("id"));
		mvo.setPwd(request.getParameter("pwd"));
		mvo.setName(request.getParameter("name"));
		mvo.setNickname(request.getParameter("nickname"));
		mvo.setEmail(request.getParameter("email"));
		mvo.setPhone(request.getParameter("phone"));
		mvo.setBirth(request.getParameter("birth"));
		mvo.setZip_num(request.getParameter("zip_num"));
		mvo.setAddress2(request.getParameter("address2"));

		MemberDao mdao = MemberDao.getInstance();
		mdao.updateMember();
		
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", mvo);
		
		request.getRequestDispatcher("ticket.do?command=index").forward(request, response);
		
	}

}
