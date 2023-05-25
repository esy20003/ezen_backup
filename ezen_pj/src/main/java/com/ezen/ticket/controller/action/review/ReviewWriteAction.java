package com.ezen.ticket.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.MemberDao;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.ReviewVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url ="review/reviewList.jsp";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		
		if(mvo == null) {
			url = "ticket.do?command=loginForm";
		} else {
			ServletContext content = request.getServletContext();
			String path = content.getRealPath("images/content");
			MultipartRequest multi = new MultipartRequest(
					request,
					path,
					5*1024*1024,
					"UTF-8",
					new DefaultFileRenamePolicy()
			);
			ReviewVO rvo = new ReviewVO();
			rvo.setTitle(multi.getParameter("title"));
			rvo.setContent(multi.getParameter("content"));
			rvo.setImage(multi.getFilesystemName("image"));
			ReviewDao rdao = ReviewDao.getInstance();
			
			rdao.insertReview(rvo);
		}
			response.sendRedirect(url);
	}

}
