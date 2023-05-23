package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.ContentVO;
import com.ezen.ticket.util.Dbman;

public class ContentDao {
	private ContentDao() {};
	private static ContentDao itc = new ContentDao();
	public static ContentDao getInstance() { return itc; }
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// bestContent 가져오기 (리스트에 담겨진 내용 images, title) -> 필요한 것 외에 cvo에 다 넣어주기! 아직 DB 관리 덜 됨..
	public ArrayList<ContentVO> getBestContent() {
		ArrayList<ContentVO> bestList = null;
		ContentVO cvo = new ContentVO();
		String sql = "select * from content";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			sql = "select * from content where bestyn=? ";
			//pstmt.setCharacterStream(1, 'Y');
			rs = pstmt.executeQuery();
			while(rs.next()) {
				cvo.setImage(rs.getString("image"));
				cvo.setTitle(rs.getString("title"));
				//bestList.add(cvo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs); }
		return bestList;
	}
	
	public ArrayList<ContentVO> getConsert() {
		ArrayList<ContentVO> concert = new ArrayList<ContentVO>();
		String sql = "select * from content where category=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, 1);
			rs = pstmt.executeQuery();
			
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs); }
		return concert;
	}

	public ArrayList<ContentVO> selectContent() {
		ArrayList<ContentVO> list=new ArrayList<ContentVO>();
		con=Dbman.getConnection();
		String sql="select*from content";
		ContentVO cvo=null;
		try {
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				cvo=new ContentVO();
				cvo.setCseq(rs.getInt("cseq"));
				cvo.setCategory(rs.getInt("category"));
				cvo.setTitle(rs.getString("title"));
				cvo.setLocationNum(rs.getInt("locationNum"));
				cvo.setArtist(rs.getString("artist"));
				cvo.setContent(rs.getString("content"));
				cvo.setImage(rs.getString("image"));
				cvo.setAge(rs.getString("age"));
				cvo.setBestyn(rs.getString("bestyn").charAt(0));
				list.add(cvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		
		
		return list;
	}
	
	
}
