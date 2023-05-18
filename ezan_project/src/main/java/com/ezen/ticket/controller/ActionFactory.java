package com.ezen.ticket.controller;

import com.ezen.ticket.controller.action.Action;
import com.ezen.ticket.controller.action.IndexAction;
import com.ezen.ticket.controller.action.member.LoginFormAction;

public class ActionFactory {

	private ActionFactory() {}
	private static ActionFactory itc = new ActionFactory();
	public static ActionFactory getInstance() { return itc; }
	
	public Action getAction(String command) {
		
		Action ac = null;
		
		if(command.equals("index")) ac = new IndexAction();
		else if(command.equals("loginForm")) ac = new LoginFormAction();
		return ac;
	}

	
	
	

}
