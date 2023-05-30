package com.ezen.ticket.controller.action.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.QnaVO;

public class QnaCheckPassAction implements Action {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		int qseq = Integer.parseInt( request.getParameter("qseq") );
		qseq = 0; 
		String pwd = request.getParameter("pwd");  // 입력한 비밀번호
		QnaDao qdao  = QnaDao.getInstance();
		QnaVO qvo = qdao.getQna( qseq );
		
		// bdto.getPass() 와 pass 에 담긴 두값을 비교 처리 합니다
		String url = null;
		if( qvo.getPwd()== null) { // 데이터베이스 오류. 
			request.setAttribute("message", "비밀번호오류 관리에게 문의 하세요");
			url = "qna/qnaCheckPass.jsp";
		} else if( qvo.getPwd().equals(pwd) ) {	// 둘이 같다면, checkSuccess.jsp 로 이동
			url = "qna/checkSuccess.jsp";
			HttpSession session = request.getSession();
			session.setAttribute("pwd", "T");
		} else {
			request.setAttribute("message", "비밀번호가 틀렸습니다.");
			url = "qna/qnaCheckPass.jsp"; // 비번 입력하는곳으로 되돌아 갑니다
		}
		RequestDispatcher dp = request.getRequestDispatcher(url);
		dp.forward(request, response);
	}

}
