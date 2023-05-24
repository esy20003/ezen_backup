package com.ezen.ticket.controller.action.membergradeview;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Member_Grade_View_Dao {
	
	private Member_Grade_View_Dao() {}
	private static Member_Grade_View_Dao itc = new Member_Grade_View_Dao();
	public static Member_Grade_View_Dao getInstance() { return itc; }
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	
}
