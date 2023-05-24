package com.ezen.ticket.controller;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.controller.action.IndexAction;
import com.ezen.ticket.controller.action.anr.ApplyAndRegisterAction;
import com.ezen.ticket.controller.action.anr.ApplyFormAction;
import com.ezen.ticket.controller.action.anr.CategorySelectAction;

import com.ezen.ticket.controller.action.anr.RegisterAction;

import com.ezen.ticket.controller.action.anr.NextMonthAction;
import com.ezen.ticket.controller.action.anr.PrevMonthAction;

import com.ezen.ticket.controller.action.anr.RegisterFormAction;
import com.ezen.ticket.controller.action.anr.TitleSelectAction;
import com.ezen.ticket.controller.action.cart.CartListAction;
import com.ezen.ticket.controller.action.member.ContractAction;
import com.ezen.ticket.controller.action.member.EditFormAction;
import com.ezen.ticket.controller.action.member.FindZipNumAction;
import com.ezen.ticket.controller.action.member.IdCheckFormAction;
import com.ezen.ticket.controller.action.member.JoinAction;
import com.ezen.ticket.controller.action.member.JoinFormAction;
import com.ezen.ticket.controller.action.member.LoginAction;
import com.ezen.ticket.controller.action.member.LoginFormAction;
import com.ezen.ticket.controller.action.member.LogoutAction;
import com.ezen.ticket.controller.action.member.MemberUpdateAction;
import com.ezen.ticket.controller.action.qna.QnaListAction;
import com.ezen.ticket.controller.action.qna.QnaViewAction;
import com.ezen.ticket.controller.action.qna.QnaWriteAction;
import com.ezen.ticket.controller.action.qna.QnaWriteFormAction;


public class ActionFactory {

	private ActionFactory() {}
	private static ActionFactory itc = new ActionFactory();
	public static ActionFactory getInstance() { return itc; }
	
	public Action getAction(String command) {
		
		Action ac = null;
		
		if(command.equals("index")) ac = new IndexAction();

		else if(command.equals("qnaList")) ac = new QnaListAction();
		else if (command.equals("qnaView")) ac = new QnaViewAction();
		else if (command.equals("qnaWriteForm")) ac = new QnaWriteFormAction();
		else if (command.equals("qnaWrite")) ac = new QnaWriteAction();
		
		//anr
		else if (command.equals("applyAndRegister")) ac = new ApplyAndRegisterAction();
		else if (command.equals("applyForm")) ac = new ApplyFormAction();
		else if (command.equals("categorySelect")) ac = new CategorySelectAction();
		else if (command.equals("titleSelect")) ac = new TitleSelectAction();

		else if (command.equals("registerForm")) ac = new RegisterFormAction();
		else if (command.equals("register")) ac = new RegisterAction();
		else if (command.equals("prevMonth")) ac = new PrevMonthAction();
		else if (command.equals("nextMonth")) ac = new NextMonthAction();
		

		
		// login
		else if(command.equals("loginForm")) ac = new LoginFormAction();
		else if(command.equals("login")) ac = new LoginAction();
		else if(command.equals("logout")) ac = new LogoutAction();
		 
		// join

		else if(command.equals("contract")) ac = new ContractAction();
		else if(command.equals("joinForm")) ac = new JoinFormAction();
		else if(command.equals("idCheckForm")) ac = new IdCheckFormAction();
		else if(command.equals("findZipNum")) ac = new FindZipNumAction();

		else if(command.equals("join")) ac = new JoinAction();
		// update, delete
		else if(command.equals("editForm")) ac = new EditFormAction();
		else if(command.equals("memberUpdate")) ac = new MemberUpdateAction();
		
		
		// cart
		else if(command.equals("cartList")) ac = new CartListAction();
		

		return ac;
	}

	
	
	

}
