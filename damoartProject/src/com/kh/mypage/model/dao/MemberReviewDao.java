package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.mypage.model.vo.Review;

import static com.kh.common.JDBCTemplate.*;

public class MemberReviewDao {

	Properties prop = new Properties();
	
	public MemberReviewDao() {
		try {
			prop.loadFromXML(new FileInputStream(MemberReviewDao.class.getResource("/db/sql/mypage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Review> reviewBeforeList(Connection conn, int memNo){
		ArrayList<Review> blist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("reviewBeforeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				blist.add(new Review(rset.getString("title"),
						 			 rset.getString("main_img"),
						 			 opt,
						 			 rset.getString("order_date"),
						 			 rset.getString("avadate"),
						 			 rset.getInt("mem_no")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return blist;
		
	}
}
