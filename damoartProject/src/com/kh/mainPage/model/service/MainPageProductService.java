package com.kh.mainPage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mainPage.model.dao.MainPageProductDao;
import com.kh.mainPage.model.vo.MainPageProduct;

public class MainPageProductService {

	public MainPageProduct selectNewList(){
		Connection conn = getConnection();
		
		//ArrayList<MainPageProduct> newList = new MainPageProductDao().selectNewList(conn);
		MainPageProduct newList = new MainPageProductDao().selectNewList(conn);
		
		close(conn); 
		return newList;
	}
}
