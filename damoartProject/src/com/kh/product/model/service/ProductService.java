package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.dao.ManageDao;
import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Best;
import com.kh.product.model.vo.Detail;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.Qna;

public class ProductService {
	
	
	public ArrayList<Best> selectBestList() {
		Connection conn = getConnection();
		
		ArrayList<Best> list = new ProductDao().selectBestList(conn);
		
		close(conn); 
		return list;
	}
	
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
	
	
	public ArrayList<Product> selectIngList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectIngList(conn, pi);
		
		close(conn); 
		return list;
	}
	
	public ArrayList<Product> haveStar(int pno) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().haveStar(conn, pno);
		
		close(conn); 
		return list;
	}
	
	public ArrayList<Product> selectDetailList(int pno) {
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectDetailList(conn, pno);
		
		close(conn); 
		return list;
	}
	
	
	public Detail selectDetailImg(int pno) {
		Connection conn = getConnection();
		
		Detail d = new ProductDao().selectDetailImg(conn, pno);
		
		close(conn);
		return d;
	}
	
	
	
	// ???????????? ??????
	public ArrayList<Product> selectOpenFree(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectOpenFree(conn);
		
		close(conn);
		return list;
	}
	
	
	public ArrayList<Product> selectEndFree(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectEndFree(conn);
		
		close(conn);
		return list;
	}
	//
	
	
	
	// ????????? ??????
	public ArrayList<Product> selectOpenDate(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectOpenDate(conn);
		
		close(conn);
		return list;
	}
	
	
	public ArrayList<Product> selectEndDate(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectEndDate(conn);
		
		close(conn);
		return list;
	}
	
	
	public ArrayList<Product> selectHighPrice(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectHighPrice(conn);
		
		close(conn);
		return list;
	}

	
	public ArrayList<Product> selectLowPrice(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectLowPrice(conn);
		
		close(conn);
		return list;
	}
	
	
	public ArrayList<Product> selectStar(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectStar(conn);
		
		close(conn);
		return list;
	}
	//
	
	
	
	// ???????????? ??????
	public ArrayList<Product> selectOpenPre(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectOpenPre(conn);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Product> selectHighPre(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectHighPre(conn);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Product> selectLowPre(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectLowPre(conn);
		
		close(conn);
		return list;
	}
	//
	
	
	
	// ??????????????? ??????
	public ArrayList<Product> selectMonthEnd(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectMonthEnd(conn);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Product> selectMonthOpen(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectMonthOpen(conn);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Product> selectMonthHigh(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectMonthHigh(conn);
		
		close(conn);
		return list;
	}
	
	public ArrayList<Product> selectMonthLow(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectMonthLow(conn);
		
		close(conn);
		return list;
	}
	
	
	public ArrayList<Product> selectMonthStar(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectMonthStar(conn);
		
		close(conn);
		return list;
	}
	//
	
	
	
	// ??????????????????
	public ArrayList<Product> selectSearchList(String op1,String op2,String op3,String op4){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().selectSearchList(conn, op1, op2, op3, op4);

		close(conn);
		return list;
	}

	
	
	// qna????????????
	public ArrayList<Qna> selectQnaList(int pno){
		Connection conn = getConnection();
		
		ArrayList<Qna> list = new ProductDao().selectQnaList(conn, pno);
		
		close(conn);
		return list;
	}
	
}
