package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.ReviewVO;
import com.ezen.ticket.util.Dbman;

public class ReviewDao {

	private ReviewDao() {};
	private static ReviewDao instance = new ReviewDao();
	public static ReviewDao getInstance() {return instance;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public ArrayList<ReviewVO> reviewListView() {
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql ="select * from review_board";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next() ) {
				ReviewVO rvo = new ReviewVO();
				rvo.setRseq(rs.getInt("rseq"));
				rvo.setMseq(rs.getInt("mseq"));
				rvo.setId(rs.getString("id"));
				rvo.setPwd(rs.getString("pwd"));
				rvo.setTitle(rs.getString("title"));
				rvo.setIndate(rs.getString("indate"));
				rvo.setContent(rs.getString("content"));
				rvo.setReply(rs.getString("reply"));
				rvo.setRepyn(rs.getString("repyn"));
				rvo.setImage(rs.getString("image"));
				
				list.add(rvo);
			}
			
		} catch (SQLException e) { e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}
		
		return list;
	}
	
	
	
	
	
	
	
	
}
