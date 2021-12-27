package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
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
	
	// 작성한 리뷰 페이징바
	public int selectListCount(Connection conn, int memNo) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReviewListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);	
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Review> reviewBeforeList(Connection conn, int memNo){
		ArrayList<Review> blist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("reviewBeforeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				blist.add(new Review(rset.getInt("pno"),
									 rset.getInt("order_no"),
									 rset.getString("title"),
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
	
	public ArrayList<Review> reviewAfterList(Connection conn, int memNo, PageInfo pi){
		ArrayList<Review> alist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("reviewAfterList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				alist.add(new Review(rset.getInt("rv_no"),
									 rset.getString("title"),
									 rset.getString("main_img"),
									 opt,
									 rset.getString("order_date"),
									 rset.getString("avadate"),
									 rset.getString("review_date"),
									 rset.getString("review_title")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return alist;
	}
}
