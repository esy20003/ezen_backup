package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;

import com.ezen.ticket.dto.CartVO;
import com.ezen.ticket.dto.CommissionerVO;
import com.ezen.ticket.dto.ContentVO;
import com.ezen.ticket.dto.Content_Loc_Seat_ViewVO;
import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.util.Dbman;

public class CartDao {

	private CartDao() {
	}

	private static CartDao itc = new CartDao();

	public static CartDao getInstance() {
		return itc;
	}

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public ArrayList<CartVO> getMyCartList_notBuy(int mseq) {
		ArrayList<CartVO> list = new ArrayList<CartVO>();
		CartVO cartVO = null;
		String sql = "select * from cart where mseq = ? and buyyn = 'N'";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mseq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cartVO = new CartVO();
				cartVO.setMseq(rs.getInt("mseq"));
				cartVO.setCseq(rs.getInt("cseq"));
				cartVO.setContentdate(rs.getTimestamp("contentdate"));
				cartVO.setContenttime(rs.getString("contenttime"));
				cartVO.setLocationnum(rs.getInt("locationnum"));
				cartVO.setArea(rs.getString("area"));
				cartVO.setQuantity(rs.getInt("quantity"));
				cartVO.setIndate(rs.getTimestamp("indate"));
				cartVO.setMseq2(rs.getInt("mseq2"));
				cartVO.setBuyyn(rs.getString("buyyn").charAt(0));
				list.add(cartVO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}

		return list;
	}

	public ArrayList<CartVO> getMyCartList_Buy(int mseq) {
		ArrayList<CartVO> buycartlist = new ArrayList<CartVO>();
		CartVO cartVO = null;
		String sql = "select * from cart where mseq = ? and buyyn = 'Y'";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mseq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cartVO = new CartVO();
				cartVO.setMseq(rs.getInt("mseq"));
				cartVO.setCseq(rs.getInt("cseq"));
				cartVO.setContentdate(rs.getTimestamp("contentdate"));
				cartVO.setContenttime(rs.getString("contenttime"));
				cartVO.setLocationnum(rs.getInt("locationnum"));
				cartVO.setArea(rs.getString("area"));
				cartVO.setQuantity(rs.getInt("quantity"));
				cartVO.setIndate(rs.getTimestamp("indate"));
				cartVO.setBuyyn(rs.getString("buyyn").charAt(0));
				buycartlist.add(cartVO);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		return buycartlist;
	}

	public void deleteCart(int cseq, MemberVO mvo) {

		con = Dbman.getConnection();
		String sql = "delete from cart where mseq = ? and cseq = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mvo.getMseq());
			pstmt.setInt(2, cseq);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}

	}

	public ArrayList<CartVO> selectCart(int cseq, MemberVO mvo) {

		con = Dbman.getConnection();
		String sql = "select * from cart where mseq = ? and cseq = ?";
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		try {
			CartVO cvo = null;
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mvo.getMseq());
			pstmt.setInt(2, cseq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cvo = new CartVO();
				cvo.setMseq(rs.getInt("mseq"));
				cvo.setCseq(rs.getInt("cseq"));
				cvo.setContentdate(rs.getTimestamp("contentdate"));
				cvo.setContenttime(rs.getString("contenttime"));
				cvo.setLocationnum(rs.getInt("locationnum"));
				cvo.setArea(rs.getString("area"));
				cvo.setMseq2(rs.getInt("mseq2"));
				cvo.setQuantity(rs.getInt("quantity"));
				cvo.setIndate(rs.getTimestamp("indate"));
				cvo.setBuyyn(rs.getString("buyyn").charAt(0));
				cartList.add(cvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}

		return cartList;
	}

	public ArrayList<ContentVO> selectContent(int cartseq) {

		ArrayList<ContentVO> contentList = new ArrayList<ContentVO>();
		ContentVO cvo = null;
		String sql = "select * from content where cseq = ?";

		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cartseq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cvo = new ContentVO();
				cvo.setCseq(rs.getInt("cseq"));
				cvo.setTitle(rs.getString("title"));
				cvo.setLocationNum(rs.getInt("locationnum"));
				cvo.setArtist(rs.getString("artist"));
				cvo.setImage(rs.getString("image"));
				cvo.setContent(rs.getString("content"));
				cvo.setCategory(rs.getInt("category"));
				cvo.setAge(rs.getString("age"));
				cvo.setBestyn(rs.getString("bestyn").charAt(0));
				cvo.settDateTime(rs.getString("tdatetime"));
				contentList.add(cvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}

		return contentList;

	}

	public int insertCart(int mseq, int cseq, String date, String time, String area, int mseq2, String quantity) {
		int result = 0;
		CartVO cvo = null;
		String sql = "insert into cart(mseq, cseq, contentDate,contentTime,locationNum,area, mseq2, quantity) values(?,?,to_date(?,'yyyy-mm-dd'),?,?,?,?,?)";

		// 여긴 이제 locationNum얻으려고하는 거
		CartDao cdao = CartDao.getInstance();
		ArrayList<ContentVO> forLocationNum = cdao.selectContent(cseq);
		int locationNum = forLocationNum.get(0).getLocationNum();// locationNum 얻음

		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			cvo = new CartVO();
			pstmt.setInt(1, mseq);
			pstmt.setInt(2, cseq);
			pstmt.setString(3, date);
			pstmt.setString(4, time);
			pstmt.setInt(5, locationNum);
			pstmt.setString(6, area);
			pstmt.setInt(7, mseq2);
			pstmt.setString(8, quantity);
			result = pstmt.executeUpdate();
		} catch (SQLIntegrityConstraintViolationException e) {
			return 3;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		return result;
	}

	public int insertCartMseq2Null(int mseq, int cseq, String date, String time, String area, String quantity) {
		int result = 0;
		CartVO cvo = null;
		String sql = "insert into cart(mseq, cseq, contentDate,contentTime,locationNum,area, quantity) values(?,?,to_date(?,'yyyy-mm-dd'),?,?,?,?)";

		// 여긴 이제 locationNum얻으려고하는 거
		CartDao cdao = CartDao.getInstance();
		ArrayList<ContentVO> forLocationNum = cdao.selectContent(cseq);
		int locationNum = forLocationNum.get(0).getLocationNum();// locationNum 얻음

		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			cvo = new CartVO();
			pstmt.setInt(1, mseq);
			pstmt.setInt(2, cseq);
			pstmt.setString(3, date);
			pstmt.setString(4, time);
			pstmt.setInt(5, locationNum);
			pstmt.setString(6, area);
			pstmt.setString(7, quantity);
			result = pstmt.executeUpdate();
		} catch (SQLIntegrityConstraintViolationException e) {
			return 3;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		return result;
	}

	public ArrayList<Content_Loc_Seat_ViewVO> select_Content_Loc_Seat_View(ArrayList<CartVO> list, int size) {
		ArrayList<Content_Loc_Seat_ViewVO> clsvlist = new ArrayList<Content_Loc_Seat_ViewVO>();
		Content_Loc_Seat_ViewVO clsvVO = null;
		con = Dbman.getConnection();
		String sql = "select * from content_loc_seat_view where cseq=?";
		try {
			pstmt = con.prepareStatement(sql);
			for (int i = 0; i < size; i++) {
				pstmt.setInt(1, list.get(i).getCseq());
				rs = pstmt.executeQuery();
				if (rs.next()) {
					clsvVO = new Content_Loc_Seat_ViewVO();
					clsvVO.setCseq(rs.getInt("cseq"));
					clsvVO.setTitle(rs.getString("title"));
					clsvVO.setLocationnum(rs.getInt("locationnum"));
					clsvVO.setLocationname(rs.getString("locationname"));
					clsvVO.setArtist(rs.getString("artist"));
					clsvVO.setArea(rs.getString("area"));
					clsvVO.setPrice(rs.getInt("price"));
					clsvVO.setAreaimage(rs.getString("areaimage"));
					clsvlist.add(clsvVO);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}

		return clsvlist;
	}

	public ArrayList<CommissionerVO> selectAllDefuty() {
		ArrayList<CommissionerVO> defutyList = new ArrayList<CommissionerVO>();
		CommissionerVO cvo = null;
		con = Dbman.getConnection();
		String sql = "select distinct(mseq), cnickname from commissioner_view order by mseq asc";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cvo = new CommissionerVO();
				cvo.setCnickname(rs.getString("cnickname"));
				defutyList.add(cvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			Dbman.close(con, pstmt, rs);
		}
		return defutyList;
	}

}
