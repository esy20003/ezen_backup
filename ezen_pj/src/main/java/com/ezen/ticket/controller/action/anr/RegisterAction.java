package com.ezen.ticket.controller.action.anr;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dto.MemberVO;

public class RegisterAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        MemberVO mvo = (MemberVO) session.getAttribute("loginUser");

        if (mvo == null) {
            // 로그인되지 않은 경우 로그인 페이지로 이동
            response.sendRedirect("ticket.do?command=loginForm");
        } else {
            // 선택된 날짜와 시간 처리 및 저장 로직 작성
            String dateTime = request.getParameter("dateTime");

            // 저장 로직 작성 예시
            // 예시: DB에 등록 정보 저장 또는 다른 필요한 처리 수행
            // 예: registerService.saveDateTime(mvo.getId(), dateTime);

            // registerEnd.jsp로 이동
            request.getRequestDispatcher("apply_register/apply/registerEnd.jsp").forward(request, response);
        }
	}

}
