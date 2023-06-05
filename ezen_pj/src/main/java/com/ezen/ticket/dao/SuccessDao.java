package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.ReviewReplyVO;
import com.ezen.ticket.dto.ReviewVO;
import com.ezen.ticket.dto.SuccessReplyVO;
import com.ezen.ticket.dto.SuccessVO;
import com.ezen.ticket.util.Dbman;
import com.ezen.ticket.util.Paging;

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
				svo.setReadcount(rs.getInt("readcount"));
				list.add(svo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs); }
		return list;
	}
	
	public int getAllcount() {
		int count = 0;
		String sql ="select count(*) as count from success_board";
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
	
	public ArrayList<SuccessVO> selectSuccess(Paging paging) {
		ArrayList<SuccessVO> list = new ArrayList<SuccessVO>();
		String sql = " select * from( "
				+ " select * from( "
				+ " select rownum as rn, s.*from ((select * from success_board order by sucseq desc) s) "
				+ " ) where rn>=? "
				+ " ) where rn<=? ";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, paging.getStartNum());
			pstmt.setInt(2, paging.getEndNum());
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				SuccessVO svo = new SuccessVO();
				svo.setSucseq(rs.getInt("sucseq"));
				//svo.setMseq(rs.getInt("mseq"));
				svo.setId(rs.getString("id"));
				//svo.setPwd(rs.getString("pwd"));
				svo.setTitle(rs.getString("title"));
				svo.setIndate(rs.getTimestamp("indate"));
				svo.setContent(rs.getString("content"));
				svo.setReply(rs.getString("reply"));
				svo.setRepyn(rs.getString("repyn").charAt(0));
				svo.setImage(rs.getString("image"));
				svo.setReadcount(rs.getInt("readcount"));
				list.add(svo);
			}

		} catch (SQLException e) { e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}

		return list;
	}

	public void plusOneReadcount(int sucseq) {
		
		con = Dbman.getConnection();
		String sql="update success_board set readcount = readcount + 1 where sucseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sucseq);
			pstmt.executeUpdate();
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}
		
	}

	public ArrayList<SuccessReplyVO> selectReply(int sucseq) {
		ArrayList<SuccessReplyVO> list = new ArrayList<SuccessReplyVO>();
		con = Dbman.getConnection();
		String sql ="select * from success_reply_member where sucseq =? order by srseq desc";
		//String sql ="select R.*, M.id from success_reply R, member M where R.mseq = M.mseq (select * from success_reply where sucseq=?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sucseq);
			rs = pstmt.executeQuery();
			while(rs.next() ) {
				SuccessReplyVO svo = new SuccessReplyVO();
				svo.setSrseq(rs.getInt("srseq"));
				svo.setSseq(rs.getInt("sseq"));
				//			rvo.setId(rs.getString("id"));
				svo.setMseq(rs.getInt("mseq"));
				svo.setReplycontent(rs.getString("replycontent"));
				svo.setWritedate(rs.getTimestamp("writedate"));
				svo.setId(rs.getString("id"));

				list.add(svo);
				// rs 을 두번 썼을때는 위ㅔ에 선언해서 불러다 쓴 이미 선언했던rs 가 지워짐 result set 을 rs2로 하나 더 만들던가  뷰 쓰던가(조인쓰던지)
			} 
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);
		}
		return list;
	}

	public SuccessVO getSuccess(int sucseq) {
		SuccessVO svo = new SuccessVO();
		con = Dbman.getConnection();
		String sql ="select * from success_board where sucseq=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sucseq);
			rs = pstmt.executeQuery();
			if(rs.next() ) {
				svo.setSucseq(sucseq);
				svo.setId(rs.getString("id"));
				svo.setPwd(rs.getString("pwd"));
				svo.setTitle(rs.getString("title"));
				svo.setIndate(rs.getTimestamp("indate"));
				svo.setContent(rs.getString("content"));
				svo.setReply(rs.getString("reply"));
				svo.setRepyn(rs.getString("repyn").charAt(0));
				svo.setImage(rs.getString("image"));
				svo.setReadcount(rs.getInt("readcount"));
			}
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}
		return svo;
	}

	public void insertSuccess(SuccessVO svo) {
		con = Dbman.getConnection();
		String sql="insert into success_board(sucseq, mseq, id, pwd, title, content, image) "
				+ " values(success_board_sucseq.nextVal, member_mseq.nextVal, ?, ?, ?, ?, ?)";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, svo.getId());
			pstmt.setString(2, svo.getPwd());
			pstmt.setString(3, svo.getTitle());
			pstmt.setString(4, svo.getContent());
			pstmt.setString(5, svo.getImage());
			pstmt.executeUpdate();

		} catch (SQLException e) { e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);
		}
	}

	public void updateSuccess(SuccessVO svo) {
		
		String sql ="update success_board set title=?, content=?, image=? where sucseq=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, svo.getTitle());
			pstmt.setString(2, svo.getContent());
			pstmt.setString(3, svo.getImage());
			pstmt.setInt(4, svo.getSucseq());
			pstmt.executeUpdate();

		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		
	}

	public void deleteSuccess(int sucseq) {
		con = Dbman.getConnection();
		String sql ="delete success_board where sucseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sucseq);
			pstmt.executeUpdate();

		} catch (SQLException e) {e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);
		}
		
	}

	public void insertReply(SuccessReplyVO svo) {
		//댓글번호 //리뷰번호 //멤버번호 
				String sql ="insert into success_reply(srseq, sseq , mseq, replycontent) values("
						+ " reply_seq.nextVal, ?, ? ,?)";

				con = Dbman.getConnection();
				try {
					System.out.println("insertReply" + svo.getSseq());
					System.out.println("insertReply" +  svo.getMseq());
					System.out.println("insertReply" + svo.getReplycontent());
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, svo.getSseq());
					pstmt.setInt(2, svo.getMseq());
					pstmt.setString(3, svo.getReplycontent());

					pstmt.executeUpdate();
				} catch (SQLException e) { e.printStackTrace();
				} finally {Dbman.close(con, pstmt, rs);}

			}
	// 리뷰 삭제 시 해당 리뷰 댓글도 삭제
	public void deleteReplyBysseq(int sseq) {
		
		con = Dbman.getConnection();
		String sql ="delete success_reply where sseq =?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sseq);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		} finally {Dbman.close(con, pstmt, rs);}
	}

	public void deleteReviewReply(int srseq) {
		con = Dbman.getConnection();
		String sql ="delete from success_reply where srseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, srseq);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
		
	}
		
	}
	

