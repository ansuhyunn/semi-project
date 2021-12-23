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
								   rset.getInt("ORDER_NO"),
								   rset.getString("REVIEW_ID"),
								   rset.getString("review_name"),
								   rset.getString("REVIEW_CONTENT"),
								   rset.getString("review_date"),
								   rset.getString("REVIEW_STAR"),
								   rset.getInt("REVIEW_VIEW"),
								   rset.getString("REVIEW_FILE")));
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
								   rset.getInt("ORDER_NO"),
								   rset.getString("REVIEW_ID"),
								   rset.getString("REVIEW_PWD"),
								   rset.getString("review_name"),
								   rset.getString("REVIEW_CONTENT"),
								   rset.getString("review_date"),
								   rset.getString("REVIEW_STAR"),
								   rset.getInt("REVIEW_VIEW"),
								   rset.getString("REVIEW_SECRET"),
								   rset.getString("REVIEW_FILE"),
								   rset.getString("DELETE_STATUS"),
								   rset.getString("BLIND_STATUS")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
		// 티켓 받아오는거.....
	/*	
	public ArrayList<Ticket> selectTicketList(Connection conn){
			// select문 => ResultSet (여러행) => ArrayList<Category)
			ArrayList<Category> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectCategoryList");
			
			try {
				pstmt = conn.prepareStatement(sql); // 완성된 sql문
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Category(rset.getInt("category_no"), 
										  rset.getString("category_name")));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return list;
			
		}
		*/
	
//		//리뷰넣기
//		public int insertReview(Connection conn, Review r) {
//			int result = 0;
//			PreparedStatement pstmt = null;
//			String sql = prop.getProperty("insertReview");
//			
//			try {
//				pstmt = conn.prepareStatement(sql);
//				pstmt.setInt(1, Integer.parseInt(r.getRvNo()));
//				pstmt.setString(2, r.getReviewName());
//				pstmt.setString(3, r.getReviewContent());
//				pstmt.setInt(4, Integer.parseInt(r.getReview/**/()));
//				
//				result = pstmt.executeUpdate();
//				
//			} catch (SQLException e) {
//				e.printStackTrace();
//			} finally {
//				close(pstmt);
//			}
//			
//			return result;
//		}
//		
//		public int insertAttachment(Connection conn, Attachment at) {
//			int result = 0;
//			PreparedStatement pstmt = null;
//			String sql = prop.getProperty("insertAttachment");
//			
//			try {
//				pstmt = conn.prepareStatement(sql); // 미완성된 sql
//				pstmt.setString(1, at.getOriginName());
//				pstmt.setString(2, at.getChangeName());
//				pstmt.setString(3, at.getFilePath());
//				
//				result = pstmt.executeUpdate();
//				
//			} catch (SQLException e) {
//				e.printStackTrace();
//			} finally {
//				close(pstmt);
//			}
//			
//			return result;
//			
//		}
		
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
		
		

}
