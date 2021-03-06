package com.kh.order.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.order.model.vo.ManageSales;

public class ManageSalesDao {
	
	private Properties prop = new Properties();
	
	public ManageSalesDao() {
		
		try {
			prop.loadFromXML(new FileInputStream( ManageSalesDao.class.getResource("/db/sql/salesManage-mapper.xml").getPath() ));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public ArrayList<ManageSales> selectSalesManage(Connection conn) {
		ArrayList<ManageSales> list = new ArrayList<>(); // 비어있음
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSalesManage");
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new ManageSales(rset.getInt("order_no"),
											 rset.getInt("total_price"),
											 rset.getInt("final_price"),
											 rset.getDate("order_date"),
											 rset.getInt("pNo"),
											 rset.getString("order_opt"),
											 rset.getInt("order_count"),
											 rset.getString("soldout"),
											 rset.getString("title"),
											 rset.getString("s_date"),
											 rset.getString("e_date"),
											 rset.getString("order_status"),
											 rset.getString("main_img")));

				}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	
	public ArrayList<ManageSales> selectSalesDay(Connection conn,Date startDt, Date endDt) {
		ArrayList<ManageSales> list = new ArrayList<>(); // 비어있음
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectSalesDay");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setDate(1, startDt);
			pstmt.setDate(2, endDt);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new ManageSales(rset.getInt("total_price"),
										 rset.getInt("final_price"),
										 rset.getDate("order_date"),
										 rset.getInt("order_count"),
										 rset.getString("order_status"),
										 rset.getString("main_img")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	
	}
}
