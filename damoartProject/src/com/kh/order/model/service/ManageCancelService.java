package com.kh.order.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.order.model.dao.ManageCancelDao;
import com.kh.order.model.vo.ManageCancel;

public class ManageCancelService {

	
	public ArrayList<ManageCancel> selectCancelManage(){
		Connection conn = getConnection();	
		ArrayList<ManageCancel> list = new ManageCancelDao().selectCancelManage(conn);
		
		close (conn);		
		return list;
	}
}
