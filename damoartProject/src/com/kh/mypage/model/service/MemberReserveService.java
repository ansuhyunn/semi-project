package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.MemberReserveDao;
import com.kh.mypage.model.vo.Order;

public class MemberReserveService {

	public ArrayList<Order> selectReserve(int memNo) {
		
		Connection conn = getConnection();
		ArrayList<Order> list = new MemberReserveDao().selectReserve(conn, memNo);
		close(conn);
		return list;
	}

}
