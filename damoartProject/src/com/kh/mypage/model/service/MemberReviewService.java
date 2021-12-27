package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.mypage.model.dao.MemberReserveDao;
import com.kh.mypage.model.dao.MemberReviewDao;
import com.kh.mypage.model.vo.Review;

public class MemberReviewService {

	// 작성한 리뷰 페이징바
	public int selectListCount(int memNo) {
		Connection conn = getConnection();
		int listCount = new MemberReviewDao().selectListCount(conn, memNo); 
		close(conn);
		return listCount; 
	}
	
	public ArrayList<Review> reviewBeforeList(int memNo){
		
		Connection conn = getConnection();
		ArrayList<Review> blist = new MemberReviewDao().reviewBeforeList(conn, memNo);
		close(conn);
		return blist;
		
	}
	
	public ArrayList<Review> reviewAfterList(int memNo, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Review> alist = new MemberReviewDao().reviewAfterList(conn, memNo, pi);
		close(conn);
		return alist;
	}

}
