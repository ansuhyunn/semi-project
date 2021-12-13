package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.vo.Product;

public class ProductDao {

	private Properties prop = new Properties();
		
	public ProductDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/product-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 무료전시 추출
	public ArrayList<Product> selectFreeList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFreeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	// 이달의 전시 추출
	public ArrayList<Product> selectMonthList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMonthList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 오픈예정 추출
	public ArrayList<Product> selectPreList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPreList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 지역별 메인 추출
	public ArrayList<Product> selectRegionList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRegionList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 지역 선택 결과
	public ArrayList<Product> selectRegionResultList(Connection conn, String value){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		if(value.equals("경기")) {
			String sql = prop.getProperty("selectKIregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}else if(value.equals("강원")) {
			String sql = prop.getProperty("selectKCregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}	
		}else {
			String sql = prop.getProperty("selectEtcRegionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}
		return list;
	}
	
	
	// 진행중 추출
	public ArrayList<Product> selectIngList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectIngList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// detail 정보 추출
	public ArrayList<Product> selectDetailList(Connection conn, int pno){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("ENROLL_DATE"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getInt("A_PRICE"),
									 rset.getInt("T_PRICE"),
									 rset.getInt("C_PRICE"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC"),
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
	
	
	// detail 이미지 추출
	public ArrayList<Product> selectDetailImg(Connection conn, int pno) {
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailImg");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getString("DETAIL_IMG")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	// 정렬기준 방식에 따른 결과
	// 종료날짜순
	public ArrayList<Product> selectEndDate(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectEndDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	// 오픈날짜순
	public ArrayList<Product> selectOpenDate(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOpenDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
		
	// 낮은가격순
	public ArrayList<Product> selectLowPrice(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOpenDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	// 높은가격순
	public ArrayList<Product> selectHighPrice(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOpenDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
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
