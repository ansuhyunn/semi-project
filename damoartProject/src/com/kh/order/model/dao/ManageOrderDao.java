package com.kh.order.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.order.model.vo.ManageOrder;

public class ManageOrderDao {
	
	private Properties prop = new Properties();
	

	public ManageOrderDao() {
		try {
			prop.loadFromXML(new FileInputStream(ManageOrderDao.class.getResource("/db/sql/orderManage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public ArrayList<ManageOrder> selectOrderManage(Connection conn) {
		ArrayList<ManageOrder> list = new ArrayList<>(); // 비어있음
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOrderManage");
		
		try {
			pstmt = conn.prepareStatement(sql);
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

}
