package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.MemberPointDao;
import com.kh.mypage.model.vo.Point;

public class MemberPointService {

	public ArrayList<Point> selectPoint(String memId) {
		Connection conn = getConnection();
		ArrayList<Point> list = new MemberPointDao().selectPoint(conn, memId);
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
