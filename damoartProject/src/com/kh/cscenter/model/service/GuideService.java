package com.kh.cscenter.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.Attachment;
import com.kh.common.model.vo.PageInfo;
import com.kh.cscenter.model.dao.GuideDao;
import com.kh.cscenter.model.vo.Guide;

public class GuideService {
	
	public int selectListCount() {
		Connection conn = getConnection();		
		int listCount = new GuideDao().selectListCount(conn);		
		close(conn);
		return listCount;
		
	}
	
	public ArrayList<Guide> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Guide> list = new GuideDao().selectList(conn, pi);
		close(conn);
		return list;
	}

	public Guide selectGuide() {
		Connection conn = getConnection();
		Guide g = new GuideDao().selectGuide(conn);
		close(conn);
		return g;

	}
	
	public Attachment selectAttachment() {
		Connection conn = getConnection();
		Attachment at = new GuideDao().selectAttachment(conn);
		close(conn);
		return at;
	}
}
