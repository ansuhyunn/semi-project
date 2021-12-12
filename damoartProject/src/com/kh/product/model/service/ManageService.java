package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.PageInfo;
import com.kh.product.model.dao.ManageDao;
import com.kh.product.model.vo.Product;

public class ManageService {
	
	// 전체 상품 
	public int selectProCount() {
		Connection conn = getConnection();
		
		int result = new ManageDao().selectProCount(conn);

		close(conn);	// select문이지만 list의 정보를 다 가져오는게 아니고 몇개의 행인지만 알면 되므로 commit, rollback이 필요없음
		return result;
	}
	
	
	public ArrayList<Product> selectAllList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ManageDao().selectAllList(conn, pi);
		
		close(conn); 
		return list;
	}
	
	
	// 오픈 예정 상품
	public int selectPreCount() {
		Connection conn = getConnection();
		
		int result = new ManageDao().selectPreCount(conn);

		close(conn);	// select문이지만 list의 정보를 다 가져오는게 아니고 몇개의 행인지만 알면 되므로 commit, rollback이 필요없음
		return result;
	}
	
	
	public ArrayList<Product> selectPreList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ManageDao().selectPreList(conn, pi);
		
		close(conn); 
		return list;
	}
	
	
	// 진행중 상품
	public int selectIngCount() {
		Connection conn = getConnection();
		
		int result = new ManageDao().selectIngCount(conn);

		close(conn);	// select문이지만 list의 정보를 다 가져오는게 아니고 몇개의 행인지만 알면 되므로 commit, rollback이 필요없음
		return result;
	}
	
	
	public ArrayList<Product> selectIngList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ManageDao().selectIngList(conn, pi);
		
		close(conn); 
		return list;
	}

}
