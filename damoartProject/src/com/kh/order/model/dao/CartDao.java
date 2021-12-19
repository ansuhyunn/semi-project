package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.order.model.vo.Cart;

public class CartDao {

	private Properties prop = new Properties();
	
	
	
	public CartDao() {

		try {
			prop.loadFromXML(new FileInputStream(CartDao.class.getResource("/db/sql/cart-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<Cart> selectCartList(Connection conn, int memNo) {
		ArrayList<Cart> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCartList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 5); // memNo으로 바꿔야됨
			rset = pstmt.executeQuery();
			
			System.out.println("start " + pstmt.toString());
			
			while(rset.next()) {

				System.out.println("add");
				
				list.add(new Cart(rset.getString("title"),
								  rset.getString("area"),
								  rset.getString("s_date"),
								  rset.getString("e_date"),
								  rset.getInt("a_price"),
								  rset.getInt("t_price"),
								  rset.getInt("c_price"),
								  rset.getString("main_img"),
								  rset.getString("soldout"),
								  rset.getString("cart_opt"),
								  rset.getInt("cart_count"),
								  rset.getInt("mem_no")
								  ));
			}

			System.out.println("end");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		} 
		return list;
	} 
	
	public int insertCart(Connection conn, Cart c) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getmemNo());
			pstmt.setInt(2, c.getpNo());
			pstmt.setString(3, c.getCartOpt());
			pstmt.setInt(4, c.getCartCount());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(conn);
		}
		return result;
	}
}
