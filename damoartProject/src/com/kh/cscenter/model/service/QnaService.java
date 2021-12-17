package com.kh.cscenter.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
import com.kh.cscenter.model.dao.QnaDao;
import com.kh.cscenter.model.vo.QnA;

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
}
