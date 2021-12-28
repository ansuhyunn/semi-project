package com.kh.common.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.AdminMainOrder;

public class AdminMainDao {

	private Properties prop = new Properties();
	
	public AdminMainDao() {
		try {
			prop.loadFromXML(new FileInputStream(AdminMainDao.class.getResource("/db/sql/adminMain-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<AdminMainOrder> selectAdminMainList(Connection conn) {
		ArrayList<AdminMainOrder> oList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAdminMainList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				String status = "";
				if(rset.getString("order_status").equals("O")) {
					status = "예매확정";
				}else {
					status = "결제완료";
				}
				
				AdminMainOrder o = new AdminMainOrder();
				o.setOrderNo(rset.getInt("order_no"));
				o.setMemId(rset.getString("mem_id"));
				o.setMemName(rset.getString("order_name"));
				o.setOrderDate(rset.getString("order_date"));
				o.setTotalPrice(rset.getInt("total_Price"));
				o.setOrderStatus(status);
				
				oList.add(o);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return oList;
	}
	
	public int newOrderCount(Connection conn) {
		int newOrderCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("newOrderCount");
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				newOrderCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return newOrderCount;
		
	}
	
	public int orderCancelCount(Connection conn) {
		int cancelCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("orderCancelCount");
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				cancelCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return cancelCount;
		
		
	}
}
