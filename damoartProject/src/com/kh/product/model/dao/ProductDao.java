package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.vo.Best;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.Qna;

public class ProductDao {

	private Properties prop = new Properties();
	private Properties ArrayProp = new Properties();
		
	public ProductDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/product/product-mapper.xml").getPath()));
			ArrayProp.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/product/productArray-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// best
	public ArrayList<Best> selectBestList(Connection conn){
		ArrayList<Best> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("bestMonth");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Best(rset.getInt("PNO"),
								  rset.getString("TITLE"),
								  rset.getString("AREA"),
								  rset.getString("S_DATE"),
								  rset.getString("E_DATE"),
								  rset.getInt("COUNT"),
								  rset.getString("MAIN_IMG")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 무료전시 
	public ArrayList<Product> selectFreeList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectFreeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 이달의 전시 추출
	public ArrayList<Product> selectMonthList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMonthList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 오픈예정 추출
	public ArrayList<Product> selectPreList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPreList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 진행중 추출
	public ArrayList<Product> selectIngList(Connection conn, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectIngList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
		
	
	// 지역별 메인 추출
	public ArrayList<Product> selectRegionList(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRegionList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 지역 선택 결과
	public ArrayList<Product> selectRegionResultList(Connection conn, String value){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		if(value.equals("ki")) {
			String sql = prop.getProperty("selectKIregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}else if(value.equals("kc")) {
			String sql = prop.getProperty("selectKCregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}	
		}else if(value.equals("jr")) {
			String sql = prop.getProperty("selectJRregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}else if(value.equals("ks")) {
			String sql = prop.getProperty("selectKSregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}else if(value.equals("jj")) {
			String sql = prop.getProperty("selectJJregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}else if(value.equals("se")) {
			String sql = prop.getProperty("selectSEregionList");
			try {
				pstmt = conn.prepareStatement(sql);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getInt("PNO"),
										 rset.getString("TITLE"),
										 rset.getString("REGION"),
										 rset.getString("AGE"),
										 rset.getString("AREA"),
										 rset.getString("S_DATE"),
										 rset.getString("E_DATE"),
										 rset.getString("TIME"),
										 rset.getString("MAIN_IMG"),
										 rset.getString("DETAIL_IMG"),
										 rset.getString("ETC")));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}else {}	
			
		return list;
	}
	
	
	// detail 정보 추출
	public ArrayList<Product> selectDetailList(Connection conn, int pno){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("ENROLL_DATE"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getInt("A_PRICE"),
									 rset.getInt("T_PRICE"),
									 rset.getInt("C_PRICE"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC"),
									 rset.getString("SOLDOUT"),
									 rset.getInt("REVIEW_STAR")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// detail 이미지 추출
	public Product selectDetailImg(Connection conn, int pno) {
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailImg");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				p = new Product(rset.getString("DETAIL_IMG"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return p;
	}
	
	
	// qna 추출
	public ArrayList<Qna> selectQnaList(Connection conn, int pno){
		ArrayList<Qna> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("qnaList");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String category = "";
				switch(rset.getString("Q_CATEGORY_CODE")) {
				case "Q1" : category = "[티켓]"; break;
         	    case "Q2" : category = "[취소/환불]"; break;
         	    case "Q3" : category = "[주문/결제]"; break;
         	    case "Q4" : category = "[상품]"; break;
         	    case "Q5" : category = "[기타]"; break;
         	    default :  break;
				}
				list.add(new Qna(rset.getInt("PNO"),
								 category,
								 rset.getString("Q_TITLE"),
								 rset.getString("Q_WRITER"),
								 rset.getString("CREATE_DATE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	
	// 정렬기준 방식에 따른 결과 추출
	// 무료전시 오픈날짜순
	public ArrayList<Product> selectOpenFree(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("FreeOpenDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 무료전시 종료날짜순
	public ArrayList<Product> selectEndFree(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("FreeEndDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
		
	
	// 진행중전시 오픈날짜순
	public ArrayList<Product> selectOpenDate(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("OpenDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 진행중전시 종료날짜순
	public ArrayList<Product> selectEndDate(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("EndDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 진행중전시 높은가격순
	public ArrayList<Product> selectHighPrice(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("HighPrice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 진행중전시 낮은가격순
	public ArrayList<Product> selectLowPrice(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("LowPrice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 진행중 별점순
	public ArrayList<Product> selectStar(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("star");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("TITLE"),
									 rset.getInt("REVIEW_STAR")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
		
		

	// 오픈예정 오픈날짜순
	public ArrayList<Product> selectOpenPre(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("OpenPre");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	// 오픈예정 높은가격순
	public ArrayList<Product> selectHighPre(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("HighPre");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
		
		
	// 오픈예정 낮은가격순
	public ArrayList<Product> selectLowPre(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("LowPre");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	

	// 이달의전시 오픈날짜순
	public ArrayList<Product> selectMonthOpen(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("MonthOpen");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
		
		
	// 이달의전시 종료날짜순
	public ArrayList<Product> selectMonthEnd(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("MonthEnd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
		
		
	// 이달의전시 높은가격순
	public ArrayList<Product> selectMonthHigh(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("MonthHigh");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 이달의전시 낮은가격순
	public ArrayList<Product> selectMonthLow(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("MonthLow");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AGE"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("TIME"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("DETAIL_IMG"),
									 rset.getString("ETC")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 이달의전시 별점순
	public ArrayList<Product> selectMonthStar(Connection conn){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = ArrayProp.getProperty("MonthStar");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("AREA"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("MAIN_IMG"),
									 rset.getString("TITLE"),
									 rset.getInt("REVIEW_STAR")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	
	
	
	
	
	// 전시 상세 검색
	public ArrayList<Product> selectSearchList(Connection conn, String op1, String op2, String op3, String op4){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		if(op2.equals("se")) {
			op2 = "서울";
		}else if(op2.equals("ki")) {
			op2 = "경기/인천";
		}else if(op2.equals("kc")) {
			op2 = "강원/충청";
		}else if(op2.equals("jr")) {
			op2 = "전라도";
		}else if(op2.equals("ks")) {
			op2 = "경상도";
		}else{
			op2 = "제주도";
		}
		
		if(op4.equals("all")) {
			op4 = "전체관람가";
		}else if(op4.equals("kids")) {
			op4 = "유아동";
		}else if(op4.equals("teen")) {
			op4 = "청소년";
		}else{
			op4 = "성인";
		}
		
		if(op1.equals("today")) {
			if(op3.equals("0") || op3.equals("10000") || op3.equals("19999")) {
				String sql = prop.getProperty("SearchListToday");
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, op2);
					pstmt.setString(2, op3);
					pstmt.setString(3, op4);
					rset = pstmt.executeQuery();
					while(rset.next()) {
						list.add(new Product(rset.getInt("PNO"),
											 rset.getString("TITLE"),
											 rset.getString("REGION"),
											 rset.getString("AGE"),
											 rset.getString("AREA"),
											 rset.getString("S_DATE"),
											 rset.getString("E_DATE"),
											 rset.getString("TIME"),
											 rset.getString("MAIN_IMG"),
											 rset.getString("DETAIL_IMG"),
											 rset.getString("ETC")));
					}
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
			}else if(op3.equals("20000")) {
				String sql = prop.getProperty("SearchListToday2");
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, op2);
					pstmt.setString(2, op3);
					pstmt.setString(3, op4);
					rset = pstmt.executeQuery();
					while(rset.next()) {
						list.add(new Product(rset.getInt("PNO"),
											 rset.getString("TITLE"),
											 rset.getString("REGION"),
											 rset.getString("AGE"),
											 rset.getString("AREA"),
											 rset.getString("S_DATE"),
											 rset.getString("E_DATE"),
											 rset.getString("TIME"),
											 rset.getString("MAIN_IMG"),
											 rset.getString("DETAIL_IMG"),
											 rset.getString("ETC")));
					}
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
			}
		}else if(op1.equals("week")) {
			if(op3.equals("0") || op3.equals("10000") || op3.equals("19999")) {
				String sql = prop.getProperty("SearchListWeek");
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, op2);
					pstmt.setString(2, op3);
					pstmt.setString(3, op4);
					rset = pstmt.executeQuery();
					while(rset.next()) {
						list.add(new Product(rset.getInt("PNO"),
											 rset.getString("TITLE"),
											 rset.getString("REGION"),
											 rset.getString("AGE"),
											 rset.getString("AREA"),
											 rset.getString("S_DATE"),
											 rset.getString("E_DATE"),
											 rset.getString("TIME"),
											 rset.getString("MAIN_IMG"),
											 rset.getString("DETAIL_IMG"),
											 rset.getString("ETC")));
					}
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
			}else if(op3.equals("20000")) {
				String sql = prop.getProperty("SearchListWeek2");
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, op2);
					pstmt.setString(2, op3);
					pstmt.setString(3, op4);
					rset = pstmt.executeQuery();
					while(rset.next()) {
						list.add(new Product(rset.getInt("PNO"),
											 rset.getString("TITLE"),
											 rset.getString("REGION"),
											 rset.getString("AGE"),
											 rset.getString("AREA"),
											 rset.getString("S_DATE"),
											 rset.getString("E_DATE"),
											 rset.getString("TIME"),
											 rset.getString("MAIN_IMG"),
											 rset.getString("DETAIL_IMG"),
											 rset.getString("ETC")));
					}
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
			}
		}else if(op1.equals("month")) {
			if(op3.equals("0") || op3.equals("10000") || op3.equals("19999")) {
				String sql = prop.getProperty("SearchListMonth");
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, op2);
					pstmt.setString(2, op3);
					pstmt.setString(3, op4);
					rset = pstmt.executeQuery();
					while(rset.next()) {
						list.add(new Product(rset.getInt("PNO"),
											 rset.getString("TITLE"),
											 rset.getString("REGION"),
											 rset.getString("AGE"),
											 rset.getString("AREA"),
											 rset.getString("S_DATE"),
											 rset.getString("E_DATE"),
											 rset.getString("TIME"),
											 rset.getString("MAIN_IMG"),
											 rset.getString("DETAIL_IMG"),
											 rset.getString("ETC")));
					}
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
			}else if(op3.equals("20000")) {
				String sql = prop.getProperty("SearchListMonth2");
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, op2);
					pstmt.setString(2, op3);
					pstmt.setString(3, op4);
					rset = pstmt.executeQuery();
					while(rset.next()) {
						list.add(new Product(rset.getInt("PNO"),
											 rset.getString("TITLE"),
											 rset.getString("REGION"),
											 rset.getString("AGE"),
											 rset.getString("AREA"),
											 rset.getString("S_DATE"),
											 rset.getString("E_DATE"),
											 rset.getString("TIME"),
											 rset.getString("MAIN_IMG"),
											 rset.getString("DETAIL_IMG"),
											 rset.getString("ETC")));
					}
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					close(rset);
					close(pstmt);
				}
			}
		}else {}	
			
		return list;
	}	
		
		
		
}//class
