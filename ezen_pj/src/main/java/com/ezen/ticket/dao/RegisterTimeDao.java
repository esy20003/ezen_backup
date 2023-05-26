package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.RegisterTimeVO;
import com.ezen.ticket.util.Dbman;

public class RegisterTimeDao {
	
	private RegisterTimeDao() {}
	private static RegisterTimeDao itc = new RegisterTimeDao();
	public static RegisterTimeDao getInstance() { return itc; }
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ArrayList<RegisterTimeVO> getMyRegister(MemberVO mvo) {
		
		ArrayList<RegisterTimeVO> registerTime = new ArrayList<RegisterTimeVO>();
		RegisterTimeVO rgtVO = null;
		con = Dbman.getConnection();
		String sql = "select * from registertime where mseq = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mvo.getMseq());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				rgtVO = new RegisterTimeVO();
				rgtVO.setRtseq(rs.getInt("rtseq"));
				rgtVO.setMseq(rs.getInt("mseq"));
				rgtVO.setStartdatetime(rs.getString("startdatetime"));
				rgtVO.setEnddatetime(rs.getString("enddatetime"));
				registerTime.add(rgtVO);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs); }
		return registerTime;
	}

	public ArrayList<RegisterTimeVO> getCommissioner(String tDateTime) {
		ArrayList<RegisterTimeVO> list=new ArrayList<RegisterTimeVO>();
		RegisterTimeVO rtvo=null;
		con=Dbman.getConnection();
		String
		return list;
	}
	
	
}
