package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;

public class ProductService {
	
	public ArrayList<Product> selectFreeList() {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectFreeList(conn);
		
		close(conn); 
		return list;
	}
	
	public ArrayList<Product> selectMonthList() {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectMonthList(conn);
		
		close(conn); 
		return list;
	}
	
	public ArrayList<Product> selectPreList() {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectPreList(conn);
		
		close(conn); 
		return list;
	}

}
