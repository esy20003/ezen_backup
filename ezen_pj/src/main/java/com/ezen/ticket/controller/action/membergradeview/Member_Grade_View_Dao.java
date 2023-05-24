package com.ezen.ticket.controller.action.membergradeview;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.CartVO;
import com.ezen.ticket.dto.Member_Grade_View_VO;
import com.ezen.ticket.util.Dbman;

public class Member_Grade_View_Dao {
	
	private Member_Grade_View_Dao() {}
	private static Member_Grade_View_Dao itc = new Member_Grade_View_Dao();
	public static Member_Grade_View_Dao getInstance() { return itc; }
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public ArrayList<Member_Grade_View_VO> setDefutyList(ArrayList<CartVO> list, int size) {
		ArrayList<Member_Grade_View_VO> defutylist = null;
		if(size == 0) {
			return defutylist;
		}else {
			System.out.println("성공");
			defutylist = new ArrayList<Member_Grade_View_VO>();
			Member_Grade_View_VO mgvVO = null;
			con = Dbman.getConnection();
			String sql = "select * from member_grade_view where cmseq=?";
			try {
				
				for(int sseq = 0; sseq < size; sseq++) {
					
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, list.get(sseq).getMseq2());
					rs = pstmt.executeQuery();
					if(rs.next()) {
						mgvVO = new Member_Grade_View_VO();
						mgvVO.setCmseq(rs.getInt("cmseq"));
						mgvVO.setCid(rs.getString("cid"));
						mgvVO.setCnickname(rs.getString("cnickname"));
						mgvVO.setSuccess(rs.getInt("success"));
						mgvVO.setGrade(rs.getInt("grade"));
						mgvVO.setGname(rs.getString("gname"));
						mgvVO.setGprice(rs.getString("gprice"));
						defutylist.add(mgvVO);
					}
				}
				
			} catch (SQLException e) { e.printStackTrace();
			} finally { Dbman.close(con, pstmt, rs); }
			return defutylist;
		}
		
	}
	
	
	
}
