package com.kh.order.model.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.order.model.dao.OrderDao;
import com.kh.order.model.vo.Order;


import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

public class OrderService {
	
	OrderDao dao = new OrderDao(); 

		public ArrayList<Order> selectOrderList(){
			Connection conn = getConnection();
			ArrayList<Order> list = dao.selectOrderList(conn);
			close(conn);
			return list;
		}
		
		public Order selectOrderListO(){
			Connection conn = getConnection();
			Order o = dao.selectOrderListO(conn);
			close(conn);
			return o;
		}
	
	
	public void setMemNo(int memNo) {
		this.dao.setMemNo(memNo);
	}
	
	public int getMemNo() {
		return this.dao.getMemNo();
	}
	
	public ArrayList<Order> selectOrder(){
		Connection conn = getConnection();
		ArrayList<Order> list = dao.selectOrder(conn);
		close(conn);
		return list;
	}
	
}
