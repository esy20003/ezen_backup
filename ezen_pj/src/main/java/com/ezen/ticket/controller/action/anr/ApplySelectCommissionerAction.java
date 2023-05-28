package com.ezen.ticket.controller.action.anr;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.ContentDao;
import com.ezen.ticket.dao.RegisterTimeDao;
import com.ezen.ticket.dto.ContentVO;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.RegisterTimeVO;

public class ApplySelectCommissionerAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url="apply_register/apply/applySelectCommissioner.jsp";
		
		HttpSession session=request.getSession();
		MemberVO mvo=(MemberVO)session.getAttribute("loginUser");
		if(mvo ==null) {
			url="ticket.do?command=loginForm";
		}else {
		String cseqStr=request.getParameter("cseq");
		int cseq=Integer.parseInt(cseqStr);
//		cseq로 locationName, artist 명 뽑기
		ContentDao cdao=ContentDao.getInstance();
		ArrayList<ContentVO> list=cdao.selectFromContentByTitle(cseq);
		
		
		
		
//		cseq랑 area이름으로 area, 가격, 좌석배치도 필요
		String area=request.getParameter("area");
		ArrayList<ContentVO> list2=cdao.selectAreaPrice(cseq, area);
		

//		list의 tDateTime으로 registerTime이랑 비교해서 대리인 추출
		RegisterTimeDao rtdao=RegisterTimeDao.getInstance();
		String tDate=list.get(0).getTDateTime().substring(0, 8);
		int tTime=Integer.parseInt(list.get(0).getTDateTime().substring(8,12));
		System.out.println("티켓팅날짜:"+tDate+" 시간:"+tTime);
		ArrayList<RegisterTimeVO> commissionerList=rtdao.getCommissioner(tDate, tTime);

		
		request.setAttribute("detailList",list); //제목, 아티스트,포스터
		request.setAttribute("date", request.getParameter("date")); //이건 다음페이지 콘텐츠용
		request.setAttribute("time", request.getParameter("time"));//이건 다음페이지 콘텐츠용
		request.setAttribute("areaList", list2); //위치명, area, 가격, 좌석배치도
		request.setAttribute("quantity", request.getParameter("quantity")); //수량
		request.setAttribute("comList", commissionerList);//대리인 리스트~!
		
		request.getRequestDispatcher(url).forward(request, response);
		}
	}


}
