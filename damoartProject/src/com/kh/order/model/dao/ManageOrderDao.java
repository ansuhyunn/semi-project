package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

import com.kh.order.model.vo.ManageOrder;

public class ManageOrderDao {
	
	private Properties prop = new Properties();
	
	String startDt = "";
	String endDt = "";

	public ManageOrderDao() {
		try {
			startDt = "";
			endDt = "";
			
			Date date = new Date();
			String year =  String.valueOf(date.getYear() + 1900);
			String month =  String.valueOf(date.getMonth() + 1);
			String day =  String.valueOf(date.getDate());
			System.out.println("year :" + year  );
			System.out.println("month :" + month  );
			System.out.println("day :" + day);
			// 한자리수일 경우 0을 채워준다. 
			if(month.length() == 1){ 
			  month = "0" + month; 
			} 
			if(day.length() == 1){ 
			  day = "0" + day; 
			}
			
			this.startDt = year.substring(2,4) + month + day;
			this.endDt = year.substring(2,4) + month + day;
			System.out.println(this.startDt + this.endDt);
			prop.loadFromXML(new FileInputStream(ManageOrderDao.class.getResource("/db/sql/orderManage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	

	// 첫 화면 내역조회 (클릭이벤트 전) 
	public ArrayList<ManageOrder> selectOrderManage(Connection conn) {
		ArrayList<ManageOrder> list = new ArrayList<>(); // 비어있음
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOrderManage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, startDt);
			pstmt.setString(2, endDt);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new ManageOrder(rset.getInt("order_no"),
										 rset.getInt("total_price"),
										 rset.getInt("pay_price"),
										 rset.getDate("order_date"),
										 rset.getInt("pNo"),
										 rset.getString("order_opt"),
										 rset.getString("order_name"),
										 rset.getInt("order_count"),
										 rset.getString("title"),
										 rset.getString("order_status"),
										 rset.getString("pay_opt")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public void setDate(String st, String edt) {
		if(st != null && edt != null){
			startDt = st;
			endDt = edt;
		}
	}
	
	/*
	// 클릭이벤트 후
	public ArrayList<ManageOrder> selectOrderDayManage(Connection conn) {
		ArrayList<ManageOrder> list = new ArrayList<>(); // 비어있음
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOrderDayManage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, startDt);
			pstmt.setString(2, endDt);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new ManageOrder(rset.getInt("total_price"),
										 rset.getInt("final_price"),
										rset.getDate("order_date"),
										 rset.getInt("order_count"),
										 rset.getString("order_status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public void setDate(String st, String edt) {
		if(st != null && edt != null){
			startDt = st;
			endDt = edt;
		}
	}
	*/
	
	// 취소로 상태 업데이트
	public int updateOrderCancel(Connection conn, ManageOrder m) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateOrderCancelManage");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(2,(m.getOrderNo()));
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close (pstmt);
		}
		return result;
	}
}
