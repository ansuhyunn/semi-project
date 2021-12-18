package com.kh.order.model.service;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.order.model.dao.ManageSalesDao;
import com.kh.order.model.vo.ManageSales;

public class ManageSalesService {

	public ArrayList<ManageSales> selectSalesManage(){
		Connection conn = getConnection();

		ArrayList<ManageSales> list = new ManageSalesDao().selectSalesManage(conn);
		
		close(conn);
		return list;
	}
}
