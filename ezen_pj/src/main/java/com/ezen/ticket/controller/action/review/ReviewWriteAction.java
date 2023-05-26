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
		String command = request.getParameter("command");
		String url ="ticket.do?command=reviewList"; // 처리하고 마지막에 갈 목적지
		HttpSession session = request.getSession(); // 세션값
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser"); // loginUser 가 있는지
		
		if(mvo == null) {
			url = "ticket.do?command=loginForm"; // 없으면 로그인폼으로 ㄱ
		} else {
			ServletContext content = request.getServletContext();  
			String path = content.getRealPath("images/content"); // 이미지 업로드 경로
			MultipartRequest multi = new MultipartRequest( 
					request,
					path,
					5*1024*1024,
					"UTF-8",
					new DefaultFileRenamePolicy()
			);
			ReviewVO rvo = new ReviewVO();
			System.out.println("rvo 의 현재 상태 : =>" + rvo);
			System.out.println(command);
			rvo.setTitle(multi.getParameter("title"));
			rvo.setContent(multi.getParameter("content"));
			rvo.setImage(multi.getFilesystemName("image"));
			rvo.setId(mvo.getId()); // mvo 에서 작성자의 id 를 얻음
			
			ReviewDao rdao = ReviewDao.getInstance();
			rdao.insertReview(rvo);
			
		}
			response.sendRedirect(url);
	}

}
