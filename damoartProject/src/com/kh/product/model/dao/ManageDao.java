package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
import com.kh.product.model.vo.Product;

public class ManageDao {

	private Properties prop = new Properties();
	
	public ManageDao() {
		try {
			prop.loadFromXML(new FileInputStream(ProductDao.class.getResource("/db/sql/product/productManage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 전체 상품 갯수
	public int selectProCount(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	
	// 전체 상품 조회해서 갯수만큼 담긴 list 만들기
	public ArrayList<Product> selectAllList(Connection conn, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("ENROLL_DATE"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AREA"),
									 rset.getString("AGE"),
									 rset.getString("TIME"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("SOLDOUT")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	// 오픈 예정 상품
	public int selectPreCount(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPreCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
		
		
	// 오픈 예정 상품 list 만들기
	public ArrayList<Product> selectPreList(Connection conn, PageInfo pi){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPreList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("PNO"),
									 rset.getString("ENROLL_DATE"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AREA"),
									 rset.getString("AGE"),
									 rset.getString("TIME"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("SOLDOUT")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	// 진행중 상품
	public int selectIngCount(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectIngCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
		
		
	// 진행중 상품 list 만들기
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
									 rset.getString("ENROLL_DATE"),
									 rset.getString("TITLE"),
									 rset.getString("REGION"),
									 rset.getString("AREA"),
									 rset.getString("AGE"),
									 rset.getString("TIME"),
									 rset.getString("S_DATE"),
									 rset.getString("E_DATE"),
									 rset.getString("SOLDOUT")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	// 전시 등록
	public int insertProduct(Connection conn, Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getTitle());
			pstmt.setString(2, p.getRegion());
			pstmt.setString(3, p.getAge());
			pstmt.setString(4, p.getArea());
			pstmt.setString(5, p.getsDate());
			pstmt.setString(6, p.geteDate());
			pstmt.setString(7, p.getTime());
			pstmt.setInt(8, p.getaPrice());
			pstmt.setInt(9, p.gettPrice());
			pstmt.setInt(10, p.getcPrice());
			pstmt.setString(11, p.getMainImg());
			pstmt.setString(12, p.getDetailImg());
			pstmt.setString(13, p.getEtc());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	// 메인이미지 업로드 : 
	public int insertMainAttachment(Connection conn, Attachment at1) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at1.getOriginName());
			pstmt.setString(2, at1.getChangeName());
			pstmt.setString(3, at1.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	// 디테일이미지 업로드
	public int insertDetailAttachment(Connection conn, Attachment at2) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at2.getOriginName());
			pstmt.setString(2, at2.getChangeName());
			pstmt.setString(3, at2.getFilePath());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	// 등록 전시 조회
	public Product productDetailView(Connection conn, int pNo) {
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("productDetailView");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product(rset.getInt("PNO"),
								rset.getString("ENROLL_DATE"),
								rset.getString("title"),
								rset.getString("region"),
								rset.getString("age"),
								rset.getString("area"),
								rset.getString("s_date"),
								rset.getString("e_date"),
								rset.getString("time"),
								rset.getInt("a_price"),
								rset.getInt("t_price"),
								rset.getInt("c_price"),
								rset.getString("main_img"),
								rset.getString("detail_img"),
								rset.getString("etc"),
								rset.getString("soldout"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}

		return p;
	}
	
	
	public Attachment selectAttachment(Connection conn, int qNo) {
		Attachment at = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAttachment");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				at = new Attachment(rset.getInt("file_no"),
								    rset.getString("origin_name"),
								    rset.getString("change_name"),
								    rset.getString("file_path"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}

		return at;
	}
	
	
	// 전시 수정
	public int updateProduct(Connection conn, Product p) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getTitle());
			pstmt.setString(2, p.getRegion());
			pstmt.setString(3, p.getAge());
			pstmt.setString(4, p.getArea());
			pstmt.setString(5, p.getsDate());
			pstmt.setString(6, p.getsDate());
			pstmt.setString(7, p.getsDate());
			pstmt.setString(8, p.geteDate());
			pstmt.setString(9, p.geteDate());
			pstmt.setString(10, p.geteDate());
			pstmt.setString(11, p.getTime());
			pstmt.setInt(12, p.getaPrice());
			pstmt.setInt(13, p.gettPrice());
			pstmt.setInt(14, p.getcPrice());
			pstmt.setString(15, p.getMainImg());
			pstmt.setString(16, p.getDetailImg());
			pstmt.setString(17, p.getEtc());
			pstmt.setString(18, p.getSoldOut());
			pstmt.setInt(19, p.getpNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	// 메인이미지 수정
	public int updateMainAttachment(Connection conn, Attachment at1) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at1.getOriginName());
			pstmt.setString(2, at1.getChangeName());
			pstmt.setString(3, at1.getFilePath());
			pstmt.setInt(4, at1.getFileNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	// 디테일이미지 수정
	public int updateDetailAttachment(Connection conn, Attachment at2) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at2.getOriginName());
			pstmt.setString(2, at2.getChangeName());
			pstmt.setString(3, at2.getFilePath());
			pstmt.setInt(4, at2.getFileNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
}
