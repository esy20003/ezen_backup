package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.util.Dbman;

public class MemberDao {

private MemberDao() {}
	
	private static MemberDao instance = new MemberDao();
	
	public static MemberDao getInstance() {
		return instance;
	}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public MemberVO getMember(String id) {
		MemberVO mvo = null;
		String sql ="select * from member where id = ?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				mvo = new MemberVO();
				mvo.setMseq(rs.getInt("mseq"));
				mvo.setId(rs.getString("id"));
				mvo.setPwd(rs.getString("pwd"));   
				mvo.setName(rs.getString("name"));
				mvo.setNickname(rs.getString("nickname"));
				mvo.setEmail(rs.getString("email"));
				mvo.setPhone(rs.getString("phone"));
				mvo.setZip_num(rs.getString("zip_num"));
				mvo.setAddress1(rs.getString("address1"));
				mvo.setAddress2(rs.getString("address2"));
				mvo.setGrade(rs.getString("grade"));
				mvo.setSuccess(rs.getInt("success"));
				mvo.setIndate(rs.getTimestamp("indate"));
				mvo.setUseyn(rs.getString("useyn"));
				mvo.setGender(rs.getInt("gender"));
			} 
			
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);
		}
		
		return mvo;
	}
	
	
	
}
