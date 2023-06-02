package com.ezen.ticket.controller.action.success;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.SuccessDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.SuccessVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class SuccessWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "ticket.do?command=successList";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if (mvo == null) {
			url = "ticket.do?command=loginForm";
		} else {
			// 이미지 파일 업로드 기능 처리
			ServletContext context = request.getServletContext();
			String path = context.getRealPath("images/content");
			
			MultipartRequest multipartrequest = new MultipartRequest(
					request, // 요청
					path, // 이미지 업로드 할 경로
					5*1024*1024, // 이미지 업로드 용량 제한
					"UTF-8", // 인코딩 방식
					new DefaultFileRenamePolicy() // 동일 이름을 새로 만들어주는 기능
			);
			
			System.out.println(path);
			SuccessVO svo = new SuccessVO();
			//MemberVO mvo2 = new MemberVO();
			//rvo.setRseq(rvo.getRseq());
			svo.setMseq(mvo.getMseq());
			//System.out.println(mvo);
			svo.setId(mvo.getId());
			svo.setPwd(mvo.getPwd());
			svo.setTitle(multipartrequest.getParameter("title"));
			svo.setContent(multipartrequest.getParameter("content"));
			svo.setImage(multipartrequest.getFilesystemName("image"));
			
			
			SuccessDao sdao = SuccessDao.getInstance();
			sdao.insertSuccess(svo);
		}

		response.sendRedirect(url);

	}

}
