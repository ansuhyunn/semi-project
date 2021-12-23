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
}
