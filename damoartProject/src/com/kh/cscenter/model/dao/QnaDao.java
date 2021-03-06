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
import com.kh.product.model.vo.Product;

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
	
	public ArrayList<QnA> selectList(Connection conn) {
		ArrayList<QnA> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, 1);
			pstmt.setInt(2, 5);
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
						    rset.getString("pNo"),
						    rset.getInt("mem_no"),
						    rset.getString("q_writer"),
						    rset.getString("secret"),
						    rset.getString("q_title"),
						    rset.getString("q_content").replace("\r\n", "<br>"),
						    rset.getString("create_date"),
						    category,
						    rset.getString("a_content"),
						    rset.getString("a_create_date"),
						    rset.getString("nickname"),
						    rset.getString("main_img"),
						    rset.getString("title"));
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
	
	public int insertAnswer(Connection conn, int qNo, String answer, int adminNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAnswer");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, answer);
			pstmt.setInt(2, adminNo);
			pstmt.setInt(3, qNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public ArrayList<Product> enrollFormProductSearch(Connection conn, String keyword){
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("enrollFormProductSearch");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Product p = new Product();
				p.setpNo(rset.getInt("pno"));
				p.setTitle(rset.getString("title"));
				p.setMainImg(rset.getString("main_img"));
				
				list.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public Product enrollFormProductSelectResult(Connection conn, int pNo) {
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("enrollFormProductSelectResult");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product();
				p.setpNo(rset.getInt("pno"));
				p.setTitle(rset.getString("title"));
				p.setMainImg(rset.getString("main_img"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}
	
	public int insertQuestion(Connection conn, QnA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertQuestion");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, q.getMemNo());
			pstmt.setString(2,  q.getqWriter());
			pstmt.setString(3, q.getSecret());
			pstmt.setString(4, q.getqTitle());
			pstmt.setString(5, q.getqContent());
			pstmt.setString(6, q.getqCategoryCode());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int insertPQuestion(Connection conn, QnA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertPQuestion");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(q.getpNo()));
			pstmt.setInt(2, q.getMemNo());
			pstmt.setString(3,  q.getqWriter());
			pstmt.setString(4, q.getSecret());
			pstmt.setString(5, q.getqTitle());
			pstmt.setString(6, q.getqContent());
			pstmt.setString(7, q.getqCategoryCode());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertAttachment(Connection conn, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at.getOriginName());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateQuestion(Connection conn, QnA q) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateQuestion");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, q.getqTitle());
			pstmt.setString(2, q.getqCategoryCode());
			pstmt.setInt(3, Integer.parseInt(q.getpNo()));
			pstmt.setString(4, q.getqContent());
			pstmt.setString(5, q.getSecret());
			pstmt.setInt(6, q.getqNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int updateAttachment(Connection conn, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at.getOriginName());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());
			pstmt.setInt(4, at.getFileNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public int insertNewAttachment(Connection conn, Attachment at) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertNewAttachment");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, at.getRefBno());
			pstmt.setString(2, at.getOriginName());
			pstmt.setString(3, at.getChangeName());
			pstmt.setString(4, at.getFilePath());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public int deleteQna(Connection conn, int qnaNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteQna");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qnaNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public int selectTitleSearchListCount(Connection conn, String keyword) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTitleSearchListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			
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
	
	public ArrayList<QnA> selectTitleSearchList(Connection conn, PageInfo pi, String keyword) {
		ArrayList<QnA> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectTitleSearchList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setString(1, keyword);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
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
	
	public int selectContentSearchListCount(Connection conn, String keyword) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectContentSearchListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);			
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
	
	public ArrayList<QnA> selectContentSearchList(Connection conn, PageInfo pi, String keyword) {
		ArrayList<QnA> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectContentSearchList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
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
	
	public int nonAnswerCount(Connection conn) {
		int nonAnswerCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("nonAnswerCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				nonAnswerCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return nonAnswerCount;
	}
	
	public int adminSelectSearchListCount(Connection conn, String keyword) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("adminSelectSearchListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			pstmt.setString(3, keyword);
			
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
		System.out.println(listCount);
		return listCount;
		
	}
	
	public ArrayList<QnA> adminSelectSearchList(Connection conn, PageInfo pi, String keyword) {
		ArrayList<QnA> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("adminSelectSearchList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			pstmt.setString(3, keyword);
			pstmt.setInt(4, startRow);
			pstmt.setInt(5, endRow);
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

}
