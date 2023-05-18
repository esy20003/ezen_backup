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
	private static QnaDao itc = new QnaDao();
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public static QnaDao getInstance() {
		return itc;
	}

	public ArrayList<QnaVO> selectQna(Paging paging) {
		ArrayList<QnaVO> list = new ArrayList();
		String sql = " select*from(  select*from(  select rownum as rn, q.*from ((select*from qna order by qseq desc) q)  ) where rn>=?  ) where rn<=? ";
		this.con = Dbman.getConnection();

		try {
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setInt(1, paging.getStartNum());
			this.pstmt.setInt(2, paging.getEndNum());
			this.rs = this.pstmt.executeQuery();

			while (this.rs.next()) {
				QnaVO qvo = new QnaVO();
				qvo.setQseq(this.rs.getInt("qseq"));
				qvo.setSubject(this.rs.getString("subject"));
				qvo.setContent(this.rs.getString("content"));
				qvo.setId(this.rs.getString("id"));
				qvo.setIndate(this.rs.getTimestamp("indate"));
				qvo.setReply(this.rs.getString("reply"));
				qvo.setRep(this.rs.getString("rep"));
				list.add(qvo);
			}
		} catch (SQLException var8) {
			var8.printStackTrace();
		} finally {
			Dbman.close(this.con, this.pstmt, this.rs);
		}

		return list;
	}

	public int getAllCount() {
		int count = 0;
		String sql = "select count(*) as cnt from qna";
		this.con = Dbman.getConnection();

		try {
			this.pstmt = this.con.prepareStatement(sql);
			this.rs = this.pstmt.executeQuery();
			if (this.rs.next()) {
				count = this.rs.getInt("cnt");
			}
		} catch (SQLException var7) {
			var7.printStackTrace();
		} finally {
			Dbman.close(this.con, this.pstmt, this.rs);
		}

		return count;
	}

	public QnaVO getQna(int qseq) {
		QnaVO qvo = new QnaVO();
		String sql = " select*from qna where qseq = ? ";
		this.con = Dbman.getConnection();

		try {
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setInt(1, qseq);
			this.rs = this.pstmt.executeQuery();
			if (this.rs.next()) {
				qvo.setQseq(qseq);
				qvo.setSubject(this.rs.getString("subject"));
				qvo.setContent(this.rs.getString("content"));
				qvo.setId(this.rs.getString("id"));
				qvo.setIndate(this.rs.getTimestamp("indate"));
				qvo.setReply(this.rs.getString("reply"));
				qvo.setRep(this.rs.getString("rep"));
			}
		} catch (SQLException var8) {
			var8.printStackTrace();
		} finally {
			Dbman.close(this.con, this.pstmt, this.rs);
		}

		return qvo;
	}

	public void insertQna(QnaVO qvo) {
		this.con = Dbman.getConnection();
		String sql = "insert into qna( qseq, id, subject, content)  values( qna_seq.nextVal ,?,?,?)";

		try {
			this.pstmt = this.con.prepareStatement(sql);
			this.pstmt.setString(1, qvo.getId());
			this.pstmt.setString(2, qvo.getSubject());
			this.pstmt.setString(3, qvo.getContent());
			this.pstmt.executeUpdate();
		} catch (SQLException var7) {
			var7.printStackTrace();
		} finally {
			Dbman.close(this.con, this.pstmt, this.rs);
		}

	}
}