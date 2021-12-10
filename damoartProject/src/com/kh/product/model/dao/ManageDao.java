package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.PageInfo;
import com.kh.product.model.vo.Product;

public class ManageDao {

	private Properties prop = new Properties();
	
	public ManageDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/productManage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 전체 상품 갯수
	public int selectProCount(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	
	// 전체 상품 조회해서 갯수만큼 담긴 list 만들기
	public ArrayList<Product> selectAllList(Connection conn, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("ENROLL_DATE"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AREA"),
									 rset.getString("AGE"),
									 rset.getString("TIME"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("SOLDOUT")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	// 오픈 예정 상품
	public int selectPreCount(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selecPreCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
		
		
	// 오픈 예정 상품 list 만들기
	public ArrayList<Product> selectpreList(Connection conn, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPreList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("ENROLL_DATE"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AREA"),
									 rset.getString("TIME"),
									 rset.getString("AGE"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("SOLDOUT")));
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
