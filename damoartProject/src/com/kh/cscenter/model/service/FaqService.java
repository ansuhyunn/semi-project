package com.kh.cscenter.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.cscenter.model.dao.FaqDao;
import com.kh.cscenter.model.dao.GuideDao;
import com.kh.cscenter.model.vo.FAQ;

public class FaqService {
	
	public int selectListCount() {
		Connection conn = getConnection();		
		int listCount = new FaqDao().selectListCount(conn);		
		close(conn);
		return listCount;
		
	}

	public ArrayList<FAQ> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<FAQ> list = new FaqDao().selectList(conn, pi);
		close(conn);
		return list;
	}
	
	public FAQ selectFaq(int FaqNo) {
		Connection conn = getConnection();
		FAQ f = new FaqDao().selectFaq(conn, FaqNo);
		close(conn);
		return f;
	}
	
	public int insertFaq(FAQ f) {
		Connection conn = getConnection();
		int result = new FaqDao().insertFaq(conn, f);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int updateFaq(FAQ f) {
		Connection conn = getConnection();
		int result = new FaqDao().updateFaq(conn, f);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
}
