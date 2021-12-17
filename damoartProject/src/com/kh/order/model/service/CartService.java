package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.order.model.dao.CartDao;
import com.kh.order.model.vo.Cart;


public class CartService {
	
	
	public ArrayList<Cart> selectCartList() {
		Connection conn = getConnection();
		ArrayList<Cart> list = new CartDao().selectCartList(conn, 0);
		close(conn);
		
		return list;
	}
	
	
	/*
	public int insertCart(Cart c) {
		Connection conn = getConnection();
		int result = new CartDao().insertCart(conn, c);
		if(result > 0) {
			commit (conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	*/
}	
