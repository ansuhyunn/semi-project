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

import com.kh.order.model.vo.ManageCancel;

public class ManageCancelDao {

private Properties prop = new Properties();
	
String startDt = "";
String endDt = "";

	public ManageCancelDao() {
		try {
			startDt = "";
			endDt = "";
			
			Date date = new Date();
			String year =  String.valueOf(date.getYear() + 1900);
			String month =  String.valueOf(date.getMonth() + 1);
			String day =  String.valueOf(date.getDate());
			
			// 한자리수일 경우 0을 채워준다. 
			if(month.length() == 1){ 
			  month = "0" + month; 
			} 
			if(day.length() == 1){ 
			  day = "0" + day; 
			}
			
			this.startDt = year.substring(2,4) + month + day;
			this.endDt = year.substring(2,4) + month + day;
			prop.loadFromXML(new FileInputStream(ManageCancelDao.class.getResource("/db/sql/cancelManage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}


		public ArrayList<ManageCancel> selectCancelManage(Connection conn) {
			ArrayList<ManageCancel> list = new ArrayList<>(); // 비어있음
			
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("selectCancelManage");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, startDt);
				pstmt.setString(2, endDt);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new ManageCancel(rset.getInt("order_no"),
											 rset.getString("order_name"),
											 rset.getDate("order_date"),
											 rset.getInt("pNo"),
											 rset.getString("title"),
											 rset.getString("order_status"),
											 rset.getInt("total_price"),
											 rset.getInt("pay_price"),
											 rset.getString("pay_opt"),
											 rset.getString("mem_id"),
											 rset.getString("main_img"),
											 rset.getInt("order_count")));
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


		public int deleteOrder(Connection conn, int orderNo) {
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("updateCancelCancel");
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, orderNo);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
			return result;
		}
		
		public int deletedenyOrder(Connection conn, int orderNo) {
			int result = 0;
			PreparedStatement pstmt = null;
			String sql = prop.getProperty("updateCanceldeny");
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, orderNo);
				
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
			return result;
		}
		}
