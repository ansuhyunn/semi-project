package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.mypage.model.dao.MemberPointDao;
import com.kh.mypage.model.dao.MemberReserveDao;
import com.kh.mypage.model.vo.Point;

public class MemberPointService {

	// 페이징바
	public int selectListCount(String memId) {
		Connection conn = getConnection();
		int listCount = new MemberPointDao().selectListCount(conn, memId); 
		close(conn);
		return listCount; 
	}
	
	public ArrayList<Point> selectPoint(String memId, PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Point> list = new MemberPointDao().selectPoint(conn, memId, pi);
		close(conn);
		return list;
	}
	
	public Point memberPoint(String memId) {
		Connection conn = getConnection();
		Point poi = new MemberPointDao().memberPoint(conn, memId);
		close(conn);
		return poi;
	}
}
