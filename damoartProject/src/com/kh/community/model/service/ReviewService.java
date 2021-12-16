package com.kh.community.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.community.model.dao.ReviewDao;
import com.kh.community.model.vo.Review;

public class ReviewService {

	public int selectListCount() {
			Connection conn = getConnection();
			int listCount = new ReviewDao().selectListCount(conn);
			close(conn);
			return listCount;
		
		
		
	
	}

	public ArrayList<Reivew> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Review> list = new ReviewDao().selectList(conn, pi);
		close(conn);
		return list;
	}

}
