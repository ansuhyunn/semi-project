package com.kh.order.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.order.model.dao.OrderDao;
import com.kh.order.model.vo.Order;


import static com.kh.common.JDBCTemplate.*;

public class OrderService {

	public ArrayList<Order> selectOrderList(){
		Connection conn = getConnection();
		ArrayList<Order> list = new OrderDao().selectOrderList(conn, 0);
		close(conn);
		return list;
	}
}
