package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.QnaVO;
import com.ezen.ticket.dto.ReplyVO;
import com.ezen.ticket.util.Dbman;
import com.ezen.ticket.util.Paging;

public class QnaDao {

	private QnaDao() {}
	private static QnaDao itc = new QnaDao();
	public static QnaDao getInstance() { return itc; }

	Connection con=null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public ArrayList<QnaVO> selectQna(Paging paging) {
		ArrayList<QnaVO> list= new ArrayList<>();
		//String sql = "select*from qna order by qseq desc";
		String sql = " select*from( "
				+ " select*from( "
				+ " select rownum as rn, q.*from ((select*from qna_board order by qseq desc) q) "
				+ " ) where rn>=? "
				+ " ) where rn<=? ";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, paging.getStartNum());
			pstmt.setInt(2,paging. getEndNum());
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				QnaVO qvo = new QnaVO();
				qvo.setQseq(rs.getInt("qseq"));
				qvo.setTitle(rs.getString("title"));
				qvo.setContent(rs.getString("content"));
				qvo.setId(rs.getString("id"));
				qvo.setIndate(rs.getTimestamp("indate"));
				qvo.setReply(rs.getString("reply"));
				qvo.setRepyn(rs.getString("repyn"));
				list.add(qvo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
	}
		return list;
	}

	public int getAllCount() {
		int count =0;
		String sql = "select count(*) as cnt from qna_board";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next() ) count=rs.getInt("cnt");
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
	}
		return count;
	}

	public QnaVO getQna(int qseq) {
		QnaVO qvo = new QnaVO();
		con = Dbman.getConnection();
		String sql = " select * from qna_board where qseq=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				qvo.setQseq(rs.getInt("qseq"));
				qvo.setTitle(rs.getString("title"));
				qvo.setContent(rs.getString("content"));
				qvo.setId(rs.getString("id"));
				qvo.setPwd(rs.getString("pwd"));
				qvo.setIndate(rs.getTimestamp("indate"));
				qvo.setReply(rs.getString("reply"));
				qvo.setRepyn(rs.getString("repyn"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
	}
		return qvo;
	}

	public void insertQna(QnaVO qvo) {
		
		con = Dbman.getConnection();
		String sql = "insert into qna_board( qseq, id, title, content, mseq, pwd) "
				+ " values( qna_board_qseq.nextVal, ?, ?, ?, ?, ?)";
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qvo.getQseq());
			pstmt.setString(2, qvo.getId());
			pstmt.setString(3, qvo.getTitle());
			pstmt.setString(4, qvo.getContent());
			pstmt.setInt(5, qvo.getMseq());
			pstmt.setString(6, qvo.getPwd());
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
	
	}

	public void deleteQna(int num) {
		String sql = "delete from qna where num=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);  }		
	
	}

	public void deleteReplyByQnanum(int num) {
		String sql = "delete from reply where qnanum=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt( 1,  num );
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);  }	
	
		
	}

	public void updateQna(QnaVO qvo) {
		String sql = "update qna set userid=?, pwd=?, title=?, content=?, imgfilename=? where num=? ";
		this.con = Dbman.getConnection();

		try {
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, qvo.getId());
			this.pstmt.setString(2, qvo.getPwd());
			this.pstmt.setString(3, qvo.getTitle());
			this.pstmt.setString(4, qvo.getContent());
			this.pstmt.setString(5, qvo.getImgfilename());
			this.pstmt.setInt(6, qvo.getQseq());
			this.pstmt.executeUpdate();
		} catch (SQLException var7) {
			var7.printStackTrace();
		} finally {
			Dbman.close(this.con, this.pstmt, this.rs); 
		}
		
}

	public ArrayList<ReplyVO> selectReply(int qseq) {
		ArrayList<ReplyVO> list = new ArrayList();
		this.con = Dbman.getConnection();
		String sql = "select * from reply where qnanum=? order by qnanum desc";

		try {
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setInt(1, qseq);
			this.rs = this.pstmt.executeQuery();

			while (this.rs.next()) {
				ReplyVO rvo = new ReplyVO();
				rvo.setReplynum(this.rs.getInt("replynum"));
				rvo.setQnanum(this.rs.getInt("qnanum"));
				rvo.setUserid(this.rs.getString("userid"));
				rvo.setWritedate(this.rs.getTimestamp("writedate"));
				rvo.setContent(this.rs.getNString("content"));
				list.add(rvo);
			}
		} catch (SQLException var8) {
			var8.printStackTrace();
		} finally {
			Dbman.close(this.con, this.pstmt, this.rs);
		}

		return list;
	}
	
}
	
	
	
	