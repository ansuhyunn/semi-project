package com.kh.cscenter.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
import com.kh.cscenter.model.dao.QnaDao;
import com.kh.cscenter.model.vo.QnA;
import com.kh.product.model.vo.Product;

public class QnaService {
	
	public int selectListCount() {
		Connection conn = getConnection();		
		int listCount = new QnaDao().selectListCount(conn);		
		close(conn);
		return listCount;
		
	}
	
	public ArrayList<QnA> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<QnA> list = new QnaDao().selectList(conn, pi);
		close(conn);
		return list;
		
	}
	
	public QnA selectQnA(int qNo) {
		Connection conn = getConnection();
		QnA q = new QnaDao().selectQnA(conn, qNo);
		close(conn);
		return q;
		
	}
	
	public Attachment selectAttachment(int qNo) {
		Connection conn = getConnection();
		Attachment at = new QnaDao().selectAttachment(conn, qNo);
		close(conn);
		return at;
	}
	
	public int insertAnswer(int qNo, String answer, int adminNo) {
		Connection conn = getConnection();
		int result = new QnaDao().insertAnswer(conn, qNo, answer, adminNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public ArrayList<Product> enrollFormProductSearch(String keyword) {
		Connection conn = getConnection();
		ArrayList<Product> list = new QnaDao().enrollFormProductSearch(conn, keyword);
		close(conn);
		return list;
	}
	
	public Product enrollFormProductSelectResult(int pNo) {
		Connection conn = getConnection();
		Product p = new QnaDao().enrollFormProductSelectResult(conn, pNo);
		close(conn);
		return p;
		
	}
	
	public int insertQuestion(QnA q, Attachment at) {
		Connection conn = getConnection();
		int result1 = 0;
		if(q.getqPwd() != null) {			
			result1 = new QnaDao().nonMemberInsertQuestion(conn, q);
		}else {
			result1 = new QnaDao().memberInsertQuestion(conn, q);
		}
		int result2 = 1;
		if(at != null) {
			result2 = new QnaDao().insertAttachment(conn, at);
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1*result2;
	}
}
