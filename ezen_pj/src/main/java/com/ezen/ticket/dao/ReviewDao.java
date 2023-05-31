package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.ReviewReplyVO;
import com.ezen.ticket.dto.ReviewVO;
import com.ezen.ticket.util.Dbman;
import com.ezen.ticket.util.Paging;

public class ReviewDao {

	private ReviewDao() {};
	private static ReviewDao instance = new ReviewDao();
	public static ReviewDao getInstance() {return instance;}

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public ArrayList<ReviewVO> selectReview(Paging paging) {
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		String sql = " select * from( "
				+ " select * from( "
				+ " select rownum as rn, r.*from ((select * from review_board order by rseq desc) r) "
				+ " ) where rn>=? "
				+ " ) where rn<=? ";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, paging.getStartNum());
			pstmt.setInt(2, paging.getEndNum());
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				ReviewVO rvo = new ReviewVO();
				rvo.setRseq(rs.getInt("rseq"));
				//rvo.setMseq(rs.getInt("mseq"));
				rvo.setId(rs.getString("id"));
				//rvo.setPwd(rs.getString("pwd"));
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
	public int getAllcount() {
		int count = 0;
		String sql ="select count(*) as count from review_board";
		con = Dbman.getConnection();

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next() ) {
				count = rs.getInt("count");
			}

		} catch (SQLException e) { e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);
		}

		return count;
	}
	public ReviewVO getReview(int rseq) {
		ReviewVO rvo = new ReviewVO();
		con = Dbman.getConnection();
		String sql ="select * from review_board where rseq=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rseq);
			rs = pstmt.executeQuery();
			if(rs.next() ) {
				rvo.setRseq(rseq);
				rvo.setId(rs.getString("id"));
				rvo.setPwd(rs.getString("pwd"));
				rvo.setTitle(rs.getString("title"));
				rvo.setIndate(rs.getString("indate"));
				rvo.setContent(rs.getString("content"));
				rvo.setReply(rs.getString("reply"));
				rvo.setRepyn(rs.getString("repyn"));
				rvo.setImage(rs.getString("image"));
			}
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}
		return rvo;
	}
	
	public void insertReview(ReviewVO rvo) {

		con = Dbman.getConnection();
		String sql="insert into review_board(rseq, mseq, id, pwd, title, content, image) "
				+ " values(review_board_rseq.nextVal, member_mseq.nextVal, ?, ?, ?, ?, ?)";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rvo.getId());
			pstmt.setString(2, rvo.getPwd());
			pstmt.setString(3, rvo.getTitle());
			pstmt.setString(4, rvo.getContent());
			pstmt.setString(5, rvo.getImage());
			pstmt.executeUpdate();

		} catch (SQLException e) { e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);
		}
	}
	public void updateReview(ReviewVO rvo) {
		
		String sql ="update review_board set title=?, content=?, image=? where rseq=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, rvo.getTitle());
			pstmt.setString(2, rvo.getContent());
			pstmt.setString(3, rvo.getImage());
			pstmt.setInt(4, rvo.getRseq());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		
	}
	public void deleteReview(int rseq) {
		
		con = Dbman.getConnection();
		String sql ="delete review_board where rseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rseq);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);
		}
		
		
	}
	public void insertReply(ReviewReplyVO rvo) {
												       //댓글번호 //리뷰번호 //멤버번호 
		String sql ="insert into review_reply( rseq, repseq, mseq, replycontent) values("
				+ " reply_seq.nextVal, ?, ?, ? )";
		
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rvo.getRepseq());
			pstmt.setInt(2, rvo.getMseq());
			pstmt.setString(3, rvo.getReplycontent());
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}
		
	}
	public ArrayList<ReviewReplyVO> selectReply(int num) {
		ArrayList<ReviewReplyVO> list = new ArrayList<ReviewReplyVO>();
		con = Dbman.getConnection();
		String sql ="select * from reply where  ";
	
		
		
		
		return list;
	}


}
