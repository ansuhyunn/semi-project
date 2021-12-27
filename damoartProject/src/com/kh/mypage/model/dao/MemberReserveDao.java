package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.mypage.model.vo.Order;

import static com.kh.common.JDBCTemplate.*;

public class MemberReserveDao {

	Properties prop = new Properties();
	
	public MemberReserveDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MemberReserveDao.class.getResource("/db/sql/mypage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 예매내역 페이징바
	public int selectReListCount(Connection conn, int memNo) {
		int relistCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectReListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);	
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				relistCount = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return relistCount;
	}
	
	// 환불내역 페이징바
	public int selectCaListCount(Connection conn, int memNo) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectCaListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);	
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	/*
	// 예매내역조회
	public ArrayList<Order> selectReserve(Connection conn, int memNo){
		ArrayList<Order> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("selectReserve");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				String status = "";
				switch(rset.getString("order_status")) {
				case "W" : status = "입금대기"; break;
				case "P" : status = "결제완료"; break;
				case "C" : status = "예매취소"; break;
				case "CC" : status = "환불완료"; break;
				case "N" : status = "취소거절"; break;
				case "O" : status = "예매확정"; break;
				default : break;
				}
				
				list.add(new Order(rset.getInt("mem_no"),
								   rset.getInt("order_no"),
								   rset.getInt("final_price"),
								   rset.getDate("order_date"),
								   rset.getInt("pno"),
								   rset.getString("title"),
								   rset.getString("main_img"),
								   opt,
								   rset.getInt("order_count"),
								   status));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	*/
	public ArrayList<Order> selectReserve(Connection conn, int memNo, PageInfo pi){
		ArrayList<Order> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("selectReserve");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				String status = "";
				switch(rset.getString("order_status")) {
				case "P" : status = "결제완료"; break;
				case "C" : status = "예매취소"; break;
				case "CC" : status = "환불완료"; break;
				case "O" : status = "예매확정"; break;
				default : break;
				}
				
				list.add(new Order(rset.getInt("mem_no"),
								   rset.getInt("order_no"),
								   rset.getInt("final_price"),
								   rset.getDate("order_date"),
								   rset.getInt("pno"),
								   rset.getString("title"),
								   rset.getString("main_img"),
								   opt,
								   rset.getInt("order_count"),
								   status));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	// 예매내역 상세조회
	public Order selectReserveDetail(Connection conn, int memNo, int oNo) {
		Order detailView = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("selectReserveDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, oNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				detailView =new Order(rset.getInt("order_no"),
									   rset.getDate("order_date"),
									   rset.getString("order_name"),
									   rset.getInt("pno"),
									   rset.getString("title"),
									   rset.getString("main_img"),
									   opt,
									   rset.getInt("order_count"),
									   rset.getString("area"),
									   rset.getDate("pay_date"),
									   rset.getInt("pay_price"),
									   rset.getString("order_phone"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return detailView;
	}

	// 취소/환불 내역 조회
	/*
	public ArrayList<Order> selectRefund(Connection conn, int memNo){
		ArrayList<Order> clist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("selectRefund");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				String status = "";
				switch(rset.getString("order_status")) {
				case "W" : status = "입금대기"; break;
				case "P" : status = "결제완료"; break;
				case "C" : status = "예매취소"; break;
				case "CC" : status = "환불완료"; break;
				case "N" : status = "취소거절"; break;
				case "O" : status = "예매확정"; break;
				default : break;
				}
				
				clist.add(new Order(rset.getInt("mem_no"),
								   rset.getInt("order_no"),
								   rset.getInt("final_price"),
								   rset.getDate("order_date"),
								   rset.getInt("pno"),
								   rset.getString("title"),
								   rset.getString("main_img"),
								   opt,
								   rset.getInt("order_count"),
								   status));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return clist;
	}
	*/
	
	public ArrayList<Order> selectRefund(Connection conn, int memNo, PageInfo pi){
		ArrayList<Order> clist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("selectRefund");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				String status = "";
				switch(rset.getString("order_status")) {
				case "P" : status = "결제완료"; break;
				case "C" : status = "예매취소"; break;
				case "CC" : status = "환불완료"; break;
				case "O" : status = "예매확정"; break;
				default : break;
				}
				
				clist.add(new Order(rset.getInt("mem_no"),
								   rset.getInt("order_no"),
								   rset.getInt("final_price"),
								   rset.getDate("order_date"),
								   rset.getInt("pno"),
								   rset.getString("title"),
								   rset.getString("main_img"),
								   opt,
								   rset.getInt("order_count"),
								   status));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return clist;
	}
	
	// 취소환불 상세
	public Order selectRefundDetail(Connection conn, int memNo, int oNo) {
		Order cdetailView = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("selectRefundDetail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memNo);
			pstmt.setInt(2, oNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String opt = "";
				switch(rset.getString("order_opt")) {
				case "C" : opt = "어린이"; break;
				case "T" : opt = "청소년"; break;
				case "A" : opt = "성인"; break;
				default : break;
				}
				
				cdetailView = new Order(rset.getInt("order_no"),
									   rset.getDate("order_date"),
									   rset.getString("order_name"),
									   rset.getInt("pno"),
									   rset.getString("title"),
									   rset.getString("main_img"),
									   opt,
									   rset.getInt("order_count"),
									   rset.getString("area"),
									   rset.getDate("pay_date"),
									   rset.getInt("pay_price"),
									   rset.getString("order_phone"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return cdetailView;
	}
}
