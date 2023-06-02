package com.ezen.ticket.controller.action.order;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.dao.OrderDao;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.OrderVO;

public class OrderViewAction implements Action {
	

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "order/orderView.jsp";
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		if(mvo == null) {
			url = "ticket.do?command=loginForm";
		}else {
			OrderDao odao=OrderDao.getInstance();
			ArrayList<OrderVO> list=new ArrayList<OrderVO>();
			list=odao.getOrderList(mvo.getMseq());
			
			//여러개 중에 같은 oseq인 애들을 처리하는 부분
			int count=0;
			if(list.size()!=1) {
				for(int i=1; i<=list.size();i++) {
					if(list.get(i).getOseq()==list.get(i-1).getOseq()) {
						count++;
						ArrayList<Integer> oseq=new ArrayList<Integer>();
						ArrayList<Integer> countList=new ArrayList<Integer>();//count 어케저장함
						for(int j=0; j<oseq.size();j++) {
							if(oseq.get(j)!=oseq.get(j-1)) {
							oseq.add(list.get(i-1).getOseq());
						}
						list.remove(i);
					}
				}else {count=0;}
			}
			request.setAttribute("count", count);
			request.setAttribute("orderList", list);
			
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}