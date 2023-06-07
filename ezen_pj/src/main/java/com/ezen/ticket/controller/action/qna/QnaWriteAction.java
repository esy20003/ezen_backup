package com.ezen.ticket.controller.action.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.QnaDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.QnaVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnaWriteAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "ticket.do?command=qnaList";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		ServletContext context = session.getServletContext();
		if (mvo == null) {
			url = "ticket.do?command=loginForm";
		} else {
			QnaDao qdao = QnaDao.getInstance();
			QnaVO qvo = new QnaVO();
			
			String path = context.getRealPath("images");
			
			MultipartRequest multi = new MultipartRequest(
					request,path,20*1024*1024,"UTF-8",new DefaultFileRenamePolicy()
			);

			qvo.setMseq(mvo.getMseq());
			qvo.setId(mvo.getId());
			qvo.setPwd(mvo.getPwd());
			qvo.setTitle(multi.getParameter("title"));
			qvo.setContent(multi.getParameter("content"));
			qvo.setImage(multi.getFilesystemName("image"));
			qdao.insertQna( qvo );
		}

		response.sendRedirect(url);
	}
}
