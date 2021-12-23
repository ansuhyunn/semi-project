package com.kh.mainPage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.mainPage.model.vo.MainPageProduct;

public class MainPageProductDao {

	private Properties prop = new Properties();
	
	public MainPageProductDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MainPageProductDao.class.getResource("/db/sql/mainpageProduct-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// new전시
	
	public ArrayList<MainPageProduct> selectNewList(Connection conn){
		ArrayList<MainPageProduct> newList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewPorduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				newList.add(new MainPageProduct(rset.getInt("PNO"),
									 		    rset.getString("TITLE"),
									 		    rset.getString("REGION"),
									 		    rset.getString("AREA"),
									 		    rset.getString("S_DATE"),
									 		    rset.getString("E_DATE"),
									 		    rset.getString("MAIN_IMG")));
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return newList;
	}
	
	/*
	public MainPageProduct selectNewList(Connection conn){
		MainPageProduct newList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectNewPorduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				newList = new MainPageProduct(rset.getInt("PNO"),
									 		    rset.getString("TITLE"),
									 		    rset.getString("REGION"),
									 		    rset.getString("AREA"),
									 		    rset.getString("S_DATE"),
									 		    rset.getString("E_DATE"),
									 		    rset.getString("MAIN_IMG"));
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return newList;
	}
	*/
}
