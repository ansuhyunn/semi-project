package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.dao.ManageDao;
import com.kh.product.model.dao.ManageSearchDao;
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
	
	// 전시 판매 중지
	public int SoldOutProduct(int pNo) {
		Connection conn = getConnection();
		int result = new ManageDao().SoldOutProduct(conn, pNo);
		close(conn);
		return result;
	}
	
	
	// 전시 삭제
	public int deleteProduct(int pNo) {
		Connection conn = getConnection();
		int result = new ManageDao().deleteProduct(conn, pNo);
		close(conn);
		return result;
	}
	
	
	// 진행중 전시 검색 
	public int selectSearchIngListCount(String category, String keyword) {
		Connection conn = getConnection();
		int listCount = 0;
		if(category.equals("searchTitle")) {
			listCount = new ManageSearchDao().ingTitleSearchCount(conn, keyword);
		}else if(category.equals("searchArea")) {
			listCount = new ManageSearchDao().ingAreaSearchCount(conn, keyword);
		}else {
			listCount = new ManageSearchDao().ingSoldSearchCount(conn, keyword);
		}
		close(conn);
		return listCount;
	}
	
	
	public ArrayList<Product> selectIngSearchList(PageInfo pi, String category, String keyword) {
		Connection conn = getConnection();
		ArrayList<Product> list = new ArrayList<>();
		if(category.equals("searchTitle")) {
			list = new ManageSearchDao().ingTitleSearchList(conn, pi, keyword);
		}else if(category.equals("searchArea")) {
			list = new ManageSearchDao().ingAreaSearchList(conn, pi, keyword);
		}else {
			list = new ManageSearchDao().ingSoldSearchList(conn, pi, keyword);
		}
		close(conn);
		return list;
	}
	
	
	
	public int selectSearchListCount(String category, String keyword) {
		Connection conn = getConnection();
		int listCount = 0;
		if(category.equals("searchTitle")) {
			listCount = new ManageSearchDao().titleSearchCount(conn, keyword);
		}else if(category.equals("searchArea")) {
			listCount = new ManageSearchDao().areaSearchCount(conn, keyword);
		}else {
			listCount = new ManageSearchDao().soldSearchCount(conn, keyword);
		}
		close(conn);
		return listCount;
	}
	
	public ArrayList<Product> selectSearchList(PageInfo pi, String category, String keyword) {
		Connection conn = getConnection();
		ArrayList<Product> list = new ArrayList<>();
		if(category.equals("searchTitle")) {
			list = new ManageSearchDao().titleSearchList(conn, pi, keyword);
		}else if(category.equals("searchArea")) {
			list = new ManageSearchDao().areaSearchList(conn, pi, keyword);
		}else {
			list = new ManageSearchDao().soldSearchList(conn, pi, keyword);
		}
		close(conn);
		return list;
	}
	
}
