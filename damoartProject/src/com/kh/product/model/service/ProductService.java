package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.product.model.dao.ManageDao;
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
	
	
	public ArrayList<Product> selectRegionList() {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectRegionList(conn);
		
		close(conn); 
		return list;
	}
	
	
	public ArrayList<Product> selectRegionResultList(String value) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectRegionResultList(conn, value);
		
		close(conn); 
		return list;
	}
	
	
	public ArrayList<Product> selectIngList() {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectIngList(conn);
		
		close(conn); 
		return list;
	}
	
	
	public ArrayList<Product> selectDetailList(int pno) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectDetailList(conn, pno);
		
		close(conn); 
		return list;
	}
	
	
	public ArrayList<Product> selectDetailImg(int pno) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectDetailImg(conn, pno);
		
		close(conn);
		return list;
	}
	

}
