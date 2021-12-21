package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
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

		close(conn);	
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

		close(conn);	
		return result;
	}
	
	
	public ArrayList<Product> selectIngList(PageInfo pi){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ManageDao().selectIngList(conn, pi);
		
		close(conn); 
		return list;
	}
	

	
	public Product productDetailView(int pNo) {
		Connection conn = getConnection();
		Product p = new ManageDao().productDetailView(conn, pNo);
		close(conn);
		return p;
	}
	
	// 전시 등록
	public int insertProduct(Product p, Attachment at1, Attachment at2) {
		Connection conn = getConnection();
		int result1 = new ManageDao().insertProduct(conn, p);
		int result2 = new ManageDao().insertMainAttachment(conn, at1);
		int result3 = new ManageDao().insertDetailAttachment(conn, at2);
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result1 * result2 * result3;
	}
	
	// 전시 수정
	public Attachment selectAttachment(int pNo) {
		Connection conn = getConnection();
		Attachment at = new ManageDao().selectAttachment(conn, pNo);
		close(conn);
		return at;
	}
	
	
	// 전시 수정
	public int updateProduct(Product p, Attachment at1, Attachment at2) {
		Connection conn = getConnection();
		int result1 = new ManageDao().updateProduct(conn, p);
		int result2 = new ManageDao().updateMainAttachment(conn, at1);
		int result3 = new ManageDao().updateDetailAttachment(conn, at2);
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result1 * result2 * result3;
	}
	
}
