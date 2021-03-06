package com.kh.cscenter.model.service;

import static com.kh.common.JDBCTemplate.*;

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
	
	public int insertGuide(Guide g, Attachment at) {
		Connection conn = getConnection();
		int result1 = new GuideDao().insertGuide(conn, g);
		int result2 = 1;
		if(at != null) {
			result2 = new GuideDao().insertAttachment(conn, at);		
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1*result2;
		
	}
	
	public int insertChangeStatus() {
		Connection conn = getConnection();
		int result = new GuideDao().insertChangeStatus(conn);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
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
	
	public Guide adminSelectGuide(int guideNo) {
		Connection conn = getConnection();
		Guide g = new GuideDao().adminSelectGuide(conn, guideNo);
		close(conn);
		return g;
	}
	
	public Attachment adminSelectAttachment(int guideNo) {
		Connection conn = getConnection();
		Attachment at = new GuideDao().adminSelectAttachment(conn, guideNo);
		close(conn);
		return at;
	}
	
	public int updateGuide(Guide g, Attachment at) {
		Connection conn = getConnection();
		int result1 = new GuideDao().updateGuide(conn, g);
		
		int result2 = 1;
		if(at != null) {
			if(at.getFileNo() != 0) {
				result2 = new GuideDao().updateAttachment(conn, at);
			}else {
				result2 = new GuideDao().insertNewAttachment(conn, at);
			}
		}
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1*result2;
	}
	
	public int updateChangeStatus(int guideNo) {
		Connection conn = getConnection();
		int result = new GuideDao().updateChangeStatus(conn, guideNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int deleteGuide(int guideNo) {
		Connection conn = getConnection();
		int result = new GuideDao().deleteGuide(conn, guideNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int selectSearchListCount(String keyword) {
		Connection conn = getConnection();		
		int listCount = new GuideDao().selectSearchListCount(conn, keyword);		
		close(conn);
		return listCount;
		
	}
	
	public ArrayList<Guide> selectSearchList(PageInfo pi, String keyword) {
		Connection conn = getConnection();
		ArrayList<Guide> list = new GuideDao().selectSearchList(conn, pi, keyword);
		close(conn);
		return list;
	}
	
}
