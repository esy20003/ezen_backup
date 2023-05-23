package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.QnaVO;
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
		String sql = " select*from qna_board where qseq = ? ";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qseq);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				qvo.setQseq(qseq);
				qvo.setTitle(rs.getString("title"));
				qvo.setContent(rs.getString("content"));
				qvo.setId(rs.getString("id"));
				qvo.setIndate(rs.getTimestamp("indate"));
				qvo.setReply(rs.getString("reply"));
				qvo.setRep(rs.getString("rep"));
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
	}
		return qvo;
	}

	public void insertQna(QnaVO qvo) {
		con = Dbman.getConnection();
		String sql = "insert into qna_board( qseq, id, title, content) "
				+ " values( qna_board_qseq.nextVal ,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, qvo.getId());
			pstmt.setString(2, qvo.getTitle());
			pstmt.setString(3, qvo.getContent());
			pstmt.executeUpdate();
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);
		}
	}


}