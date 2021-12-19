package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;

import com.kh.order.model.dao.ManageOrderDao;
import com.kh.order.model.vo.ManageOrder;

public class ManageOrderService {
	ManageOrderDao manageOrder = new ManageOrderDao();
	
	public ArrayList<ManageOrder> selectOrderManage(){
		Connection conn = getConnection();	
		ArrayList<ManageOrder> list = manageOrder.selectOrderManage(conn);
		close (conn);		
		return list;

	}
	
	public ArrayList<ManageOrder> selectOrderManage(String st, String end){
		Connection conn = getConnection();	
		manageOrder.setDate(st, end);
		ArrayList<ManageOrder> list = manageOrder.selectOrderManage(conn);
		
		close (conn);		
		return list;

	}
	
	public int updateOrderCancel(ManageOrder m) {
		
		Connection conn = getConnection();
		int result = new ManageOrderDao().updateOrderCancel(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
}
