package com.kh.community.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
import com.kh.community.model.dao.ReviewDao;
import com.kh.community.model.vo.Review;

public class ReviewService {

	// 페이징바 관련
	public int selectListCount() {
		
		Connection conn = getConnection();
		int listCount = new ReviewDao().selectListCount(conn);
		
		close(conn);
		return listCount;
	}
	
	// 리뷰리스트 
	public ArrayList<Review> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Review> list = new ReviewDao().selectList(conn, pi);

		close(conn);
		return list;
	}
	
	// 리뷰보기
	public ArrayList<Review> selectReview(int rno) {
		Connection conn = getConnection();
		ArrayList<Review> list = new ReviewDao().selectReview(conn, rno);
		close(conn);
		return list;
	}

	
//	//리뷰 작성 Review
//	public int insertReview(Review r, Attachment at) {
//		Connection conn = getConnection();
//		
//		int result1 = new ReviewDao().insertReview(conn, r);
//		int result2 = 1;
//		if(at != null) {
//			result2 = new ReviewDao().insertAttachment(conn, at);
//		}
//		
//		if(result1 > 0 && result2 > 0) {
//			commit(conn);
//		}else {
//			rollback(conn);
//		}
//		
//		close(conn);
//		
//		return result1 * result2;
//	}
//	
//	// 카운팅
//	public int increaseCount(int rvNo) {
//		Connection conn = getConnection();
//		int result = new ReviewDao().increaseCount(conn, rvNo);
//		if(result > 0) {
//			commit(conn);
//		}else {
//			rollback(conn);
//		}
//		close(conn);
//		return result;
//	}
//	

//	
//	public Attachment selectAttachment(int boardNo) {
//		Connection conn = getConnection();
//		Attachment at = new ReviewDao().selectAttachment(conn, rvNo);
//		close(conn);
//		return at;
//	}

	
	
	
}
