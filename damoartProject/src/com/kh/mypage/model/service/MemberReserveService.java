package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.MemberReserveDao;
import com.kh.mypage.model.vo.Order;

public class MemberReserveService {
	// 예매내역조회
	public ArrayList<Order> selectReserve(int memNo) {
		
		Connection conn = getConnection();
		ArrayList<Order> list = new MemberReserveDao().selectReserve(conn, memNo);
		close(conn);
		return list;
	}
	
	public Order selectReserveDetail(int memNo) {
		Connection conn = getConnection();
		Order detailView = new MemberReserveDao().selectReserveDetail(conn, memNo);
		close(conn);
		return detailView;
	}

}
