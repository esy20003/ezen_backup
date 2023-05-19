package com.ezen.ticket.controller;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.controller.action.IndexAction;
import com.ezen.ticket.controller.action.anr.ApplyAndRegisterAction;
import com.ezen.ticket.controller.action.anr.RegisterFormAction;
import com.ezen.ticket.controller.action.anr.ApplyFormAction;
import com.ezen.ticket.controller.action.anr.RegisterFormAction;

import com.ezen.ticket.controller.action.qna.QnaListAction;
import com.ezen.ticket.controller.action.qna.QnaViewAction;
import com.ezen.ticket.controller.action.qna.QnaWriteAction;
import com.ezen.ticket.controller.action.qna.QnaWriteFormAction;
import com.ezen.ticket.controller.action.member.ContractAction;
import com.ezen.ticket.controller.action.member.JoinFormAction;
import com.ezen.ticket.controller.action.member.LoginAction;
import com.ezen.ticket.controller.action.member.LoginFormAction;
import com.ezen.ticket.controller.action.member.LogoutAction;


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
		
		else if (command.equals("applyAndRegister")) ac = new ApplyAndRegisterAction();

		else if (command.equals("registerForm")) ac = new RegisterFormAction();
		else if (command.equals("applyForm")) ac = new ApplyFormAction();
		

		
		// login
		else if(command.equals("loginForm")) ac = new LoginFormAction();

		

		else if(command.equals("login")) ac = new LoginAction();
		else if(command.equals("logout")) ac = new LogoutAction();
		 
		// join

		else if(command.equals("contract")) ac = new ContractAction();
		else if(command.equals("joinForm")) ac = new JoinFormAction();
	
		return ac;
	}

	
	
	

}
