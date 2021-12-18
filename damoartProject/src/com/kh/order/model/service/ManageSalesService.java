package com.kh.order.model.service;
import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;

import com.kh.order.model.dao.ManageSalesDao;
import com.kh.order.model.vo.ManageSales;

public class ManageSalesService {

	public ArrayList<ManageSales> selectSalesManage(){
		Connection conn = getConnection();

		ArrayList<ManageSales> list = new ManageSalesDao().selectSalesManage(conn);
		
		close(conn);
		return list;
	}
	

	public ArrayList<ManageSales> selectSalesManage(Date startDt, Date endDt){
			if(startDt != null &&  endDt != null) {
			
			Connection conn = getConnection();
			ArrayList<ManageSales> list = new ManageSalesDao().selectSalesManage(conn);			
			close(conn);
			
			
			
			return list;
		}
			return null;
	}
	
	public ArrayList<ManageSales> selectSalesDay(){
		Connection conn = getConnection();
		
		ArrayList<ManageSales> list = new ManageSalesDao().selectSalesDay(conn, null, null);
		close(conn);
		return list;
	}
}
