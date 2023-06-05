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
				rvo.setReadcount(rs.getInt("readcount"));

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
				rvo.setReadcount(rs.getInt("readcount"));
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

	public void plusOneReadcount(int rseq) {

		con = Dbman.getConnection();
		String sql="update review_board set readcount = readcount + 1 where rseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rseq);
			pstmt.executeUpdate();
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}

	}

	public ArrayList<ReviewReplyVO> selectReply(int rseq) {
		ArrayList<ReviewReplyVO> list = new ArrayList<ReviewReplyVO>();
		con = Dbman.getConnection();
		String sql ="select * from review_reply_member where rseq =? order by repseq desc";
		//String sql ="select R.*, M.id from review_reply R, member M where R.mseq = M.mseq (select * from review_reply where rseq=?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rseq);
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				ReviewReplyVO rvo = new ReviewReplyVO();
				rvo.setRepseq(rs.getInt("repseq"));
				rvo.setRseq(rs.getInt("rseq"));
				//			rvo.setId(rs.getString("id"));
				rvo.setMseq(rs.getInt("mseq"));
				rvo.setReplycontent(rs.getString("replycontent"));
				rvo.setWritedate(rs.getTimestamp("writedate"));
				rvo.setId(rs.getString("id"));

				list.add(rvo);
				// rs 을 두번 썼을때는 위ㅔ에 선언해서 불러다 쓴 이미 선언했던rs 가 지워짐 result set 을 rs2로 하나 더 만들던가  뷰 쓰던가(조인쓰던지)
			} 
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);
		}
		return list;
	}

	public void insertReply(ReviewReplyVO rvo) {
		//댓글번호 //리뷰번호 //멤버번호 
		String sql ="insert into review_reply(repseq, rseq , mseq, replycontent) values("
				+ " reply_seq.nextVal, ?, ? ,?)";

		con = Dbman.getConnection();
		try {
			System.out.println("insertReply" + rvo.getRseq());
			System.out.println("insertReply" +  rvo.getMseq());
			System.out.println("insertReply" + rvo.getReplycontent());
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rvo.getRseq());
			pstmt.setInt(2, rvo.getMseq());
			pstmt.setString(3, rvo.getReplycontent());

			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}

	}
	public void deleteReviewReply(int repseq) {

		con = Dbman.getConnection();
		String sql ="delete from review_reply where repseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, repseq);
			pstmt.executeUpdate();

		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		
	}
	// 리뷰 삭제 시 해당 리뷰 댓글도 삭제
	public void deleteReplyByrseq(int rseq) {

		con = Dbman.getConnection();
		String sql ="delete review_reply where rseq =?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, rseq);
			pstmt.executeUpdate();

		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}
	}



}
