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
	int memNo = 0;
	
	
	public OrderDao() {
		try {
			prop.loadFromXML(new FileInputStream(OrderDao.class.getResource("/db/sql/order-mapper.xml").getPath()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
	public int getMemNo() {
		return this.memNo;
	}
	

	public Order selectOrderListO(Connection conn) {
			Order o =null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectOrderList");
			
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, this.memNo);
				rset = pstmt.executeQuery();
				
				System.out.println("memNo: " + this.memNo);
				
				if(rset.next()) {

					o = new Order(rset.getString("title"),
									  rset.getString("area"),
									  rset.getString("s_date"),
									  rset.getString("e_date"),
									  rset.getString("cart_opt"),
									  rset.getInt("cart_count"),
									  rset.getInt("a_price"),
									  rset.getInt("t_price"),
									  rset.getInt("c_price"),
									  rset.getString("mem_name"),
									  rset.getString("phone"),
									  rset.getString("email"),
									  rset.getInt("mem_no"),
									  rset.getString("main_img"),
									  rset.getInt("poi_point"));
				}

				System.out.println("o : " + o);
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			} 
			return o;
		} 
	
	
	public ArrayList<Order> selectOrderList(Connection conn) {
			ArrayList<Order> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectOrderList");
			System.out.println(rset);
			System.out.println("왜 안나오지? " + memNo);
			
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, this.memNo);
				rset = pstmt.executeQuery();
				
				System.out.println("memNo: " + this.memNo);
				
				while(rset.next()) {

					list.add(new Order(rset.getString("title"),
									  rset.getString("area"),
									  rset.getString("s_date"),
									  rset.getString("e_date"),
									  rset.getString("cart_opt"),
									  rset.getInt("cart_count"),
									  rset.getInt("a_price"),
									  rset.getInt("t_price"),
									  rset.getInt("c_price"),
									  rset.getString("mem_name"),
									  rset.getString("phone"),
									  rset.getString("email"),
									  rset.getInt("mem_no"),
									  rset.getString("main_img"),
									  rset.getInt("poi_point")));
				}

				System.out.println("list : " + list);
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			} 
			System.out.println(" listlistlistlist : " + list);
			return list;
		} 

	public ArrayList<Order> selectOrder(Connection conn) {
		ArrayList<Order> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOrder");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, this.memNo);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
	
			   list.add(new Order(rset.getString("title"),
								  rset.getString("mem_name"),
								  rset.getInt("mem_no"),
								  rset.getInt("pay_no"),
								  rset.getInt("pay_price"),
								  rset.getInt("order_no"),
								  rset.getDate("pay_date")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		} 
		return list;
		
		} 


	}

