package com.ezen.ticket.controller.action.review;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ReviewDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.ReviewVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewEditAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "ticket.do?command=reviewView";
		//String pwd = request.getParameter("pwd");
		System.out.println("이도저도 아닐 경우일 경우 url == > " + url);
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null) {
			url ="ticket.do?command=loginForm";
		}else {
			ReviewVO rvo = new ReviewVO();
			ServletContext context = session.getServletContext();
			String path = context.getRealPath("images/content");
			MultipartRequest multi = new MultipartRequest(
					request,
					path,
					5*1024*1024,
					"UTF-8",
					new DefaultFileRenamePolicy()
			);
			rvo.setRseq(Integer.parseInt(multi.getParameter("rseq")));
			//System.out.println(multi.getParameter("rseq"));
			rvo.setTitle(multi.getParameter("title"));
			rvo.setContent(multi.getParameter("content"));
			// 분기처리자체를 잘못함
			// 이미지 선택을 했을경우 if 선택하지 않았을 경우 else 로 타는것은 맞지만
			// 이미지를 선택했던 선택하지 않았던 update 자체는 실행을 해야함
			if(multi.getFilesystemName("image") == null) {
				rvo.setImage("oldimage");
				System.out.println("if일 경우 url == > " + url);
			} else {
				rvo.setImage(multi.getFilesystemName("image"));
				ReviewDao rdao = ReviewDao.getInstance();
				rdao.updateReview(rvo);
				url = url + "&rseq=" + rvo.getRseq();
				System.out.println("else일 경우 url == > " + url);
			}
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
