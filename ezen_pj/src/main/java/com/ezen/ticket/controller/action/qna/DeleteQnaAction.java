package com.ezen.ticket.controller.action.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;

public class DeleteQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int qseq = Integer.parseInt(request.getParameter("qseq"));
		QnaDao qdao = QnaDao.getInstance();
		int result=qdao.deleteQna(qseq);
		if(result==1) {
			System.out.println("qna 글 지우기 성공");
			result=0;
			result=qdao.deleteQnaReplyByQseq(qseq);
			if(result==1) {
				System.out.println("qna 답변도 지움!");
			}else {
				System.out.println("답변 지우기는 실패ㅠ");
			}
		}else {
			System.out.println("qna 글 지우기 실패ㅠ");
		}
		String url = "ticket.do?command=qnaList";
		RequestDispatcher dp = request.getRequestDispatcher(url);
		dp.forward(request, response);
	}
}
