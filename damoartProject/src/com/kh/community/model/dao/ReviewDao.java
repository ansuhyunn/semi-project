package com.kh.community.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.community.model.vo.Review;
import com.kh.product.model.vo.Product;

import static com.kh.common.JDBCTemplate.*;

public class ReviewDao {

	private Properties prop = new Properties();
	
	public ReviewDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(ReviewDao.class.getResource("/db/sql/review-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	// 페이징바 
	public int selectListCount(Connection conn) {

		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
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

	
	// 메인 리스트
	public ArrayList<Review> selectList(Connection conn, PageInfo pi) {
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review(
								   rset.getString("TITLE"),
								   rset.getString("MAIN_IMG"),
								   rset.getInt("rv_no"),
								   rset.getString("NICKNAME"),
								   rset.getInt("ORDER_NO"),
								   rset.getString("review_TITLE"),
								   rset.getString("REVIEW_CONTENT"),
								   rset.getString("review_date"),
								   rset.getString("REVIEW_STAR"),
								   rset.getInt("REVIEW_VIEW")));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	// 게시글 상세보기
	public ArrayList<Review> selectReview(Connection conn, int rno){
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review(
								   rset.getString("TITLE"),
								   rset.getString("MAIN_IMG"),
								   rset.getInt("rv_no"),
								   rset.getString("NICKNAME"),
								   rset.getInt("ORDER_NO"),
								   rset.getString("review_TITLE"),
								   rset.getString("REVIEW_CONTENT"),
								   rset.getString("review_date"),
								   rset.getString("REVIEW_STAR"),
								   rset.getInt("REVIEW_VIEW")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	

		
	public int increaseCount(Connection conn, int rno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	// 리뷰작성
	public int insertReview(Connection conn, Review r) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql); 
			pstmt.setInt(1, r.getMemNo());
			pstmt.setInt(2, r.getOrderNo());
			pstmt.setString(3, r.getReviewTitle());
			pstmt.setString(4, r.getReviewContent());
			pstmt.setString(5, r.getReviewStar());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	// 관리자 리뷰 전체 갯수
	public int selectReviewCount(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("countReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("count");
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
	public ArrayList<Review> selectAllList(Connection conn, PageInfo pi){
		ArrayList<Review> list = new ArrayList<>();
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
				list.add(new Review(rset.getInt("RV_NO"),
									 rset.getString("MEM_ID"),
									 rset.getString("REVIEW_TITLE"),
									 rset.getString("REVIEW_DATE"),
									 rset.getString("REVIEW_STAR"),
									 rset.getString("DELETE_STATUS")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	public Review detailReview(Connection conn, int rno) {
		Review r =  null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				r= new Review(rset.getInt("RV_NO"),
									rset.getInt("MEM_NO"),
									rset.getString("MEM_ID"),
									rset.getInt("ORDER_NO"),
									rset.getString("REVIEW_TITLE"),
									rset.getString("REVIEW_CONTENT"),
									rset.getString("REVIEW_DATE"),
									rset.getString("REVIEW_STAR"),
									rset.getInt("REVIEW_VIEW"),
									rset.getString("DELETE_STATUS"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return r;
	}
	
	
	// 리뷰 삭제
	public int deleteReview(Connection conn, int rNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReview");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}



}
		
		


