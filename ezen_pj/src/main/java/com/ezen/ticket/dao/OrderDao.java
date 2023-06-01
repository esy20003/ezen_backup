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
	
	public OrderVO insertAndSelectOrders(MemberVO mvo, int cseq) {
		OrderVO ovo=null;
		con=Dbman.getConnection();
		String sql="insert into orders(oseq,mseq,cseq) values(orders_oseq.nextVal,?,?)";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, mvo.getMseq());
			pstmt.setInt(2, cseq);
			pstmt.executeUpdate();
			
			sql="select * from orders where mseq=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, mvo.getMseq());
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ovo=new OrderVO();
				ovo.setOseq(rs.getInt("oseq"));
				ovo.setMseq(rs.getInt("mseq"));
				ovo.setCseq(rs.getInt("cseq"));
				ovo.setOindate(rs.getTimestamp("indate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		
		return ovo;
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
				list.add(ovo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {Dbman.close(con, pstmt, rs);}
		return list;
	}

	

}
