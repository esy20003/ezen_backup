package com.ezen.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.ticket.dto.MemberVO;
import com.ezen.ticket.dto.OrderVO;
import com.ezen.ticket.util.Dbman;

public class OrderDao {
	private OrderDao() {}
	
	private static OrderDao itc=new OrderDao();
	public static OrderDao getInstance() {return itc;}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void insertOrders(MemberVO mvo, int cseq, String date, String time, String area, int quantity, int mseq2, int locationNum) {
		OrderVO ovo=null;
		con=Dbman.getConnection();
		String sql="insert into orders(oseq,mseq,cseq) values(orders_oseq.nextVal,?,?)";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, mvo.getMseq());
			pstmt.setInt(2, cseq);
			pstmt.executeUpdate();
			
			sql="select * from orders where mseq=? and oseq = (SELECT MAX(oseq) FROM orders)";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, mvo.getMseq());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ovo=new OrderVO();
				ovo.setOseq(rs.getInt("oseq"));
				ovo.setOindate(rs.getTimestamp("indate"));
				ovo.setMseq(rs.getInt("mseq"));
				ovo.setCseq(rs.getInt("cseq"));
				
				//여기 부분은 주문 한개만 가능함
				sql="insert into order_detail(odseq, oseq, mseq, cseq, indate,  contentDate, contentTime, area, mseq2, quantity,locationNum) "
						+ "values(order_detail_odseq.nextVal, ?, ?,?,?,to_date(?,'yyyy-mm-dd'),?,?,?,?,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, ovo.getOseq());
				pstmt.setInt(2, ovo.getMseq());
				pstmt.setInt(3, ovo.getCseq());
				pstmt.setTimestamp(4, ovo.getOindate());
				pstmt.setString(5, date);
				pstmt.setString(6, time);
				pstmt.setString(7, area);
				pstmt.setInt(8, mseq2);
				pstmt.setInt(9, quantity);
				pstmt.setInt(10, locationNum);
				pstmt.executeUpdate();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		
	}

	public ArrayList<OrderVO> getOrderList(int mseq) {
		ArrayList<OrderVO> list=new ArrayList<OrderVO>();
		OrderVO ovo=null;
		con=Dbman.getConnection();
		String sql="select * from order_view where mseq=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, mseq);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ovo=new OrderVO();
				ovo.setOindate(rs.getTimestamp("indate"));
				ovo.setOseq(rs.getInt("oseq"));
				ovo.setMseq(mseq);
				ovo.setTitle(rs.getString("title"));
				ovo.setCseq(rs.getInt("cseq"));
				ovo.setContent_price(rs.getInt("content_price"));
				ovo.setCom_price(rs.getInt("com_price"));
				ovo.setQuantity(rs.getInt("quantity"));
				list.add(ovo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		return list;
	}


	

}
