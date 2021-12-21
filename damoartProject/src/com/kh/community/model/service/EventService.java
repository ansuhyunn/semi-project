package com.kh.community.model.service;


import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.community.model.dao.EventDao;
import com.kh.community.model.vo.Event;


public class EventService {

	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new EventDao().selectListCount(conn);
		close(conn);
		return listCount;
	
	}

	public ArrayList<Event> selectList(PageInfo pi) {
		Connection conn = getConnection();
		ArrayList<Event> list = new EventDao().selectList(conn, pi);
		close(conn);
		return list;
	
	}

}
