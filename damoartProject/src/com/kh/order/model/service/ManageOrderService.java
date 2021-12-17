package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.order.model.dao.ManageOrderDao;
import com.kh.order.model.vo.ManageOrder;

public class ManageOrderService {
	
	
	public ArrayList<ManageOrder> selectOrderManage(){
		Connection conn = getConnection();	
		ArrayList<ManageOrder> list = new ManageOrderDao().selectOrderManage(conn);
		
		close (conn);		
		return list;

}
}
