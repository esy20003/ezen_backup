package com.ezen.ticket.controller.action.anr;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.CartDao;
import com.ezen.ticket.dto.CartVO;
import com.ezen.ticket.dto.MemberVO;

public class ApplyCartAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url="apply_register/apply/applyCart.jsp";
		
		HttpSession session=request.getSession();
		MemberVO mvo=(MemberVO)session.getAttribute("loginUser");
		if(mvo ==null) {
			url="ticket.do?command=loginForm";
		}else {
			CartDao cdao=CartDao.getInstance();
			int mseq=mvo.getMseq();
			String cseqStr=request.getParameter("cseq");
			int cseq=Integer.parseInt(cseqStr);
			String date=request.getParameter("date").substring(0,10).replace("-", "");
			String time=request.getParameter("time");
			String area=request.getParameter("area");
			String quantity=request.getParameter("quantity");
			int result=0;
			if(request.getParameter("mseq2")!=null) {
				int mseq2=Integer.parseInt(request.getParameter("mseq2"));
				result=cdao.insertCart(mseq,cseq,date,time,area,mseq2,quantity);
				System.out.println("대리인 선택했어욤 대리인번호:"+mseq2);
			}else {
				result=cdao.insertCartMseq2Null(mseq,cseq,date,time,area,quantity);
				System.out.println("대리인 선택안함!");
			}
			System.out.println(result);
			if(result==1) {
				System.out.println("카트에 넣기 성공!");
				request.setAttribute("message", "장바구니에 상품을 담았습니다. 장바구니로 가시겠습니까?");
			}else if(result==3){
				System.out.println("중복!");
				request.setAttribute("message", "장바구니에 동일 내역이 존재합니다.");
			}else {
				request.setAttribute("message", "오류 발생. 관리자에게 문의바랍니다.");
				
				System.out.println("실패,,,우우우,,,,,,,,,,,,,");
			}
			
			
			
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
