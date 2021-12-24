package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.MemberReviewDao;
import com.kh.mypage.model.vo.Review;

public class MemberReviewService {

	public ArrayList<Review> reviewBeforeList(int memNo){
		
		Connection conn = getConnection();
		ArrayList<Review> blist = new MemberReviewDao().reviewBeforeList(conn, memNo);
		close(conn);
		return blist;
		
	}
	
	public ArrayList<Review> reviewAfterList(int memNo){
		Connection conn = getConnection();
		ArrayList<Review> alist = new MemberReviewDao().reviewAfterList(conn, memNo);
		close(conn);
		return alist;
	}

}
