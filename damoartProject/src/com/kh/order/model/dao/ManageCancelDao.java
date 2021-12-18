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

import com.kh.order.model.vo.ManageCancel;

public class ManageCancelDao {

private Properties prop = new Properties();
	

	public ManageCancelDao() {
		try {
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
											 rset.getString("mem_id")));
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
