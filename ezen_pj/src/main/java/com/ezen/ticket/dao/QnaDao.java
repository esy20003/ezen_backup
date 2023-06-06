package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.QnaVO;
import com.ezen.ticket.dto.AdminQnaReplyVO;
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
		String sql = "select * from qna_board where qseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				qvo.setQseq(rs.getInt("qseq"));
				qvo.setPwd(rs.getString("pwd"));
				qvo.setId(rs.getString("id"));
				qvo.setTitle(rs.getString("title"));
				qvo.setContent(rs.getString("content"));
				qvo.setIndate(rs.getTimestamp("indate"));
				qvo.setReadcount(rs.getInt("readCount"));
			}
		} catch (SQLException var8) {
			var8.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		return qvo;
	}

	public void insertQna(QnaVO qvo) {
		
		con = Dbman.getConnection();
		String sql = "insert into qna_board( qseq, id, title, content, mseq, pwd) "
				+ " values( qna_board_qseq.nextVal, ?, ?, ?, ?, ?)";
		try {
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, qvo.getId());
			pstmt.setString(2, qvo.getTitle());
			pstmt.setString(3, qvo.getContent());
			pstmt.setInt(4, qvo.getMseq());
			pstmt.setString(5, qvo.getPwd());
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
	
	}

	public void deleteQna(int qseq) {
		con = Dbman.getConnection();
		String sql = "delete from qna_board where qseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}

	}

	public void deleteReplyByQnanum(int qseq) {
		String sql = "delete from reply where qnanum=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt( 1,  qseq );
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);  }	
	
		
	}

	public void updateQna(QnaVO qvo) {
		String sql = "update qna_board set id=?, pwd=?, title=?, content=? where qseq=? ";
		this.con = Dbman.getConnection();

		try {
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, qvo.getId());
			this.pstmt.setString(2, qvo.getPwd());
			this.pstmt.setString(3, qvo.getTitle());
			this.pstmt.setString(4, qvo.getContent());
			this.pstmt.setInt(5, qvo.getQseq());
			this.pstmt.executeUpdate();
		} catch (SQLException var7) {
			var7.printStackTrace();
		} finally {
			Dbman.close(this.con, this.pstmt, this.rs); 
		}
		
}



	public void plusOneReadcount(int qseq) {
		
		con = Dbman.getConnection();
		String sql = "update qna_board set readcount = readcount+1 where qseq=?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			pstmt.executeUpdate();
		} catch (SQLException var7) {
			var7.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}

	}
	
	public int getReplycnt(int qseq) {
		int count=0;
		con = Dbman.getConnection();
		String sql = "select count(*) as cnt from reply where qnanum=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			rs = pstmt.executeQuery();
			if( rs.next() ) count = rs.getInt("cnt");
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);  }
		
		return count;	
	}

	public AdminQnaReplyVO getQnaReply(int qseq) {
		AdminQnaReplyVO aqvo=null;
		con=Dbman.getConnection();
		String sql="select * from adminQna_reply where qseq=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				aqvo=new AdminQnaReplyVO();
				aqvo.setQseq(qseq);
				aqvo.setQrseq(rs.getInt("qrseq"));
				aqvo.setQnaContent(rs.getString("qnaContent"));
				aqvo.setWriteDate(rs.getTimestamp("writeDate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally {Dbman.close(con, pstmt, rs);}
		
		return aqvo;
	}

	public int insertQnaReply(int qseq, String id, String replyContent) {
		int result=0;
		con=Dbman.getConnection();
		String sql="insert into adminQna_reply(qrseq,qseq,id,qnaContent) "
				+ "values(adminQna_reply_qrseq.nextVal,?,?,?)";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			pstmt.setString(2, id);
			pstmt.setString(3, replyContent);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		return result;
	}

	public int updateQnaRepNtoY(int qseq) {
		int result=0;
		con=Dbman.getConnection();
		String sql="update qna_board set repyn='Y' where qseq=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		
		return result;
	}

	public int deleteQnaReply(int qrseq) {
		int result=0;
		con=Dbman.getConnection();
		String sql="delete from adminQna_reply where qrseq=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, qrseq);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		return result;
	}

	public int updateQnaRepYtoN(int qseq) {
		int result=0;
		con=Dbman.getConnection();
		String sql="update qna_board set repyn='N' where qseq=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		
		return result;
	}


	
	
	
	
	
	
	
}
	
	
	
	
	