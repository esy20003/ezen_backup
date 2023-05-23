package com.ezen.ticket.controller.action.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.MemberDao;
import com.ezen.ticket.dto.MemberVO;

public class JoinAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// String gender = Integer.toString(request.getParameter("gender"));
		MemberDao mdao = MemberDao.getInstance();
		MemberVO mvo = new MemberVO();
		// String setGender = request.getParameter(Integer.toString(mvo.getGender())) ;
		String a = (String)(request.getParameter("gender"));
		System.out.println("a : => :" +  a);
		mvo.setId(request.getParameter("id"));
		mvo.setPwd(request.getParameter("pwd"));
		mvo.setName(request.getParameter("name"));
		//mvo.setGender((int)request.getParameter("gender"));
		mvo.setGender(request.getParameter("gender"));
		mvo.setNickname(request.getParameter("nickname"));
		mvo.setEmail(request.getParameter("email"));
		mvo.setPhone(request.getParameter("phone"));
		mvo.setBirth(request.getParameter("birth"));
		mvo.setZip_num(request.getParameter("zip_num"));
		mvo.setAddress1(request.getParameter("address1"));
		mvo.setAddress2(request.getParameter("address2"));
		
	}

}
