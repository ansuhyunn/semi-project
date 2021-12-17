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
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Cart(rset.getString("title"),
								  rset.getString("area"),
								  rset.getString("sDate"),
								  rset.getString("eDate"),
								  rset.getInt("aPrice"),
								  rset.getInt("tPrice"),
								  rset.getInt("cPrice"),
								  rset.getString("mainImage"),
								  rset.getString("soldOut"),
								  rset.getString("cartOpt"),
								  rset.getInt("cartCount"),
								  rset.getInt("cartMem")
								  ));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		} 
		return list;
	} 
	
	/*
	public int insertCart(Connection conn, Cart c) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getMemNo());
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
	 */
}
