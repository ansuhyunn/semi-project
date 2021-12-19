package com.kh.mypage.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.mypage.model.vo.Point;

public class MemberPointDao {

	Properties prop = new Properties();
	
	public MemberPointDao() {
		try {
			prop.loadFromXML(new FileInputStream(MemberPointDao.class.getResource("/db/sql/mypage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Point> selectPoint(Connection conn, String memId) {
		ArrayList<Point> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("pointList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Point(rset.getDate("poi_date"),
							       rset.getInt("poi_point"),
							       rset.getString("poi_content"),
							       rset.getInt("order_no"),
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
	
	public Point memberPoint(Connection conn, String memId) {
		Point poi = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("memberPoint");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				poi = new Point(rset.getInt("point"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return poi;
	}
	
	
}
