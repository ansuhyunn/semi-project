package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.mypage.model.vo.Order;

public class MemberReserveDao {

	Properties prop = new Properties();
	
	public MemberReserveDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MemberReserveDao.class.getResource("/db/sql/mypage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Order> selectReserve(Connection conn, int memNo){
		ArrayList<Order> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("selectReserve");
		
	}

}
