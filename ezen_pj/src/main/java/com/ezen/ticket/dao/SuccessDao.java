package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.SuccessVO;
import com.ezen.ticket.util.Dbman;

public class SuccessDao {
	
	private SuccessDao() {}
	private static SuccessDao itc = new SuccessDao();
	public static SuccessDao getInstance() { return itc; }
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public ArrayList<SuccessVO> getSuccess() {
		ArrayList<SuccessVO> list = new ArrayList<SuccessVO>();
		SuccessVO svo = null;
		String sql = "select * from success_board";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				svo = new SuccessVO();
				svo.setSucseq(rs.getInt("sucseq"));
				svo.setMseq(rs.getInt("mseq"));
				svo.setId(rs.getString("id"));
				svo.setPwd(rs.getString("pwd"));
				svo.setTitle(rs.getString("title"));
				svo.setIndate(rs.getTimestamp("indate"));
				svo.setContent(rs.getString("content"));
				svo.setReply(rs.getString("reply"));
				svo.setRepyn(rs.getString("repyn").charAt(0));
				svo.setImage(rs.getString("image"));
				list.add(svo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs); }
		return list;
	}
	
}
