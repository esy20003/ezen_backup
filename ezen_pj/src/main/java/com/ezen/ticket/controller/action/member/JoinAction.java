package com.ezen.ticket.controller.action.member;

import java.io.IOException;
import java.net.URLEncoder;

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
		//mvo.setGender((int)request.getParameter("gender"));
		// String setGender = request.getParameter(Integer.toString(mvo.getGender())) ;
		// String a = (String)(request.getParameter("gender"));
		// System.out.println("a : => :" +  a);
		
		MemberDao mdao = MemberDao.getInstance();
		MemberVO mvo = new MemberVO();
		String genders = request.getParameter("gender");
		int gender = 0;
		if(genders.equals("남")) {
			gender = 1;
		} else if(genders.equals("여")) {
			gender = 2;
		} else {
			gender = 0;
		}
		//int gender = Integer.parseInt(genders);
		mvo.setId(request.getParameter("id"));
		mvo.setPwd(request.getParameter("pwd"));
		mvo.setName(request.getParameter("name"));
		mvo.setGender(gender);
		mvo.setNickname(request.getParameter("nickname"));
		mvo.setEmail(request.getParameter("email"));
		mvo.setPhone(request.getParameter("phone"));
		mvo.setBirth(request.getParameter("birth"));
		mvo.setZip_num(request.getParameter("zip_num"));
		mvo.setAddress1(request.getParameter("address1"));
		mvo.setAddress2(request.getParameter("address2"));
		
		// 회원가입 버튼 누르면 이리로
			int result = mdao.insertMember(mvo); 
			
			String message = "";
			if(result == 1) { //result 가 1이면
				message = "회원가입이 완료되었습니다 로그인하세요";
			} else {
				message = "회원가입에 실패했습니다관리자에게 문의하세요로그인하세요";
			}
			System.out.println(result);
			// 성공시											& message &는 추가로 전달할 파라미터 message 보냄
			response.sendRedirect("ticket.do?command=loginForm&message=" + URLEncoder.encode(message , "UTF-8"));
			
	}

}
