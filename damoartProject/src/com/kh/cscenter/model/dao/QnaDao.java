package com.kh.cscenter.model.dao;

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
import com.kh.cscenter.model.vo.QnA;

public class QnaDao {
	
private Properties prop = new Properties();
	
	public QnaDao() {
		try {
			prop.loadFromXML(new FileInputStream(QnaDao.class.getResource("/db/sql/qna-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	public int selectListCount(Connection conn) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
		
	}
	
	public ArrayList<QnA> selectList(Connection conn, PageInfo pi) {
		ArrayList<QnA> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
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
				list.add(new QnA(rset.getInt("Q_NO"),
						 		 rset.getInt("MEM_NO"),
						 		 rset.getString("Q_WRITER"),
						 		 rset.getString("SECRET"),
						 		 rset.getString("Q_TITLE"),
						 		 rset.getString("CREATE_DATE"),
						 		 category,
						 		 rset.getString("A_CONTENT")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public QnA selectQnA(Connection conn, int qNo) {
		QnA q = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectQnA");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				String category = "";
				switch(rset.getString("q_category_code")) {
				case "Q1" : category = "[티켓]"; break;
         	    case "Q2" : category = "[취소/환불]"; break;
         	    case "Q3" : category = "[주문/결제]"; break;
         	    case "Q4" : category = "[상품]"; break;
         	    case "Q5" : category = "[기타]"; break;
         	    default :  break;
				}
				q = new QnA(rset.getInt("q_no"),
						    rset.getString("title"),
						    rset.getString("q_writer"),
						    rset.getString("secret"),
						    rset.getString("q_title"),
						    rset.getString("q_content"),
						    rset.getString("create_date"),
						    category,
						    rset.getString("a_content"),
						    rset.getString("a_create_date"),
						    rset.getString("nickname"),
						    rset.getString("main_img"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}

		return q;
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

}
