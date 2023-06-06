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

public class UpdateQnaAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		QnaDao qdao = QnaDao.getInstance();
		QnaVO qvo = new QnaVO();
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		ServletContext context = session.getServletContext();
		String path = context.getRealPath("images");
		
		MultipartRequest multi = new MultipartRequest(
				request,path,20*1024*1024,"UTF-8",new DefaultFileRenamePolicy()
		);

		qvo.setQseq(Integer.parseInt(multi.getParameter("qseq")));
		qvo.setMseq(mvo.getMseq());
		qvo.setId(multi.getParameter("id"));
		qvo.setPwd(multi.getParameter("pwd"));
		qvo.setTitle(multi.getParameter("title"));
		qvo.setContent(multi.getParameter("content"));
		

		
		if(multi.getFilesystemName("newFile")==null)
			qvo.setImage(multi.getParameter("oldFile"));
		else
			qvo.setImage(multi.getFilesystemName("newFile"));
		
		qdao.updateQna( qvo );
		String url  = "ticket.do?command=qnaViewNoCount&qseq=" + qvo.getQseq();
		RequestDispatcher dp = request.getRequestDispatcher(url);
		dp.forward(request, response);
	}

}