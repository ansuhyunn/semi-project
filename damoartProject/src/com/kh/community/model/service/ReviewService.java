package com.kh.community.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
import com.kh.community.model.dao.ReviewDao;
import com.kh.community.model.vo.Review;
import com.kh.cscenter.model.dao.NoticeDao;
import com.kh.product.model.dao.ManageDao;
import com.kh.product.model.vo.Product;

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

	
	//리뷰 작성 
	public int insertReview(Review r) {
		Connection conn = getConnection();
		int result = new ReviewDao().insertReview(conn, r);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	// 카운팅
	public int increaseCount(int rno) {
		Connection conn = getConnection();
		int result = new ReviewDao().increaseCount(conn, rno);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	// 관리자 리뷰 전체 갯수
	public int selectReviewCount() {
		Connection conn = getConnection();
		
		int result = new ReviewDao().selectReviewCount(conn);

		close(conn);	
		return result;
	}
	
	// 관리자 리뷰 리스트
	public ArrayList<Review> selectAllList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Review> list = new ReviewDao().selectAllList(conn, pi);
		
		close(conn); 
		return list;
	}
	
	// 관리자 리뷰 상세보기
	public Review detailReview(int rno) {
		Connection conn = getConnection();
		
		Review r = new ReviewDao().detailReview(conn, rno);
		close(conn);
		return r;
	}
	
	
	// 리뷰 삭제
	public int deleteReview(int rNo) {
		Connection conn = getConnection();
		int result = new ReviewDao().deleteReview(conn, rNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
}
