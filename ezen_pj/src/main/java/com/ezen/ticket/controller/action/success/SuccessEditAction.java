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

public class SuccessEditAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "ticket.do?command=successView";
		//String pwd = request.getParameter("pwd");
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("loginUser");
		if(mvo == null) {
			url ="ticket.do?command=loginForm";
		}else {
			SuccessVO svo = new SuccessVO();
			ServletContext context = session.getServletContext();
			String path = context.getRealPath("images/content");
			MultipartRequest multi = new MultipartRequest(
					request,
					path,
					5*1024*1024,
					"UTF-8",
					new DefaultFileRenamePolicy()
			);
			
			svo.setSucseq(Integer.parseInt(multi.getParameter("sucseq")));
			System.out.println(multi.getParameter("sucseq"));
			svo.setTitle(multi.getParameter("title"));
			svo.setContent(multi.getParameter("content"));

			if(multi.getFilesystemName("image") == null) {
				svo.setImage(multi.getParameter("oldimage"));
			} else {
				svo.setImage(multi.getFilesystemName("image"));
			}
			
			SuccessDao sdao = SuccessDao.getInstance();
			sdao.updateSuccess(svo);
			url = url + "&sucseq=" + svo.getSucseq(); 
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
