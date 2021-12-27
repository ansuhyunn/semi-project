package com.kh.common.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.dao.AdminMainDao;
import com.kh.common.model.vo.AdminMainOrder;

public class AdminMainService {
	
	public ArrayList<AdminMainOrder> selectAdminMainList() {
		Connection conn = getConnection();
		ArrayList<AdminMainOrder> oList = new AdminMainDao().selectAdminMainList(conn);
		close(conn);
		return oList;
	}
	
	public int newOrderCount() {
		Connection conn = getConnection();
		int newOrderCount = new AdminMainDao().newOrderCount(conn);
		close(conn);
		return newOrderCount;
	}
	
	public int orderCancelCount() {
		Connection conn = getConnection();
		int cancelCount = new AdminMainDao().orderCancelCount(conn);
		close(conn);
		return cancelCount;
	}
}
