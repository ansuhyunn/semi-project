package com.kh.order.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.order.model.vo.Order;

public class OrderDao {

	private Properties prop = new Properties();
	
	public OrderDao() {
		try {
			prop.loadFromXML(new FileInputStream(OrderDao.class.getResource("/db/sql/order-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<Order> selectOrderList(Connection conn, int memNo) {
			ArrayList<Order> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectOrderList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, 6);
				rset = pstmt.executeQuery();

				System.out.println("start22");
				
				while(rset.next()) {

					list.add(new Order(rset.getString("title"),
									  rset.getString("area"),
									  rset.getDate("s_date"),
									  rset.getDate("e_date"),
									  rset.getString("cart_opt"),
									  rset.getInt("cart_count"),
									  rset.getInt("a_price"),
									  rset.getInt("t_price"),
									  rset.getInt("c_price")));
					
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
	}

