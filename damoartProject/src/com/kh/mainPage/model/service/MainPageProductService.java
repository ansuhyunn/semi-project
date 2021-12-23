package com.kh.mainPage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mainPage.model.dao.MainPageProductDao;
import com.kh.mainPage.model.vo.MainPageProduct;

public class MainPageProductService {

	public ArrayList<MainPageProduct> selectNewList(){
		Connection conn = getConnection();
		
		ArrayList<MainPageProduct> nlist = new MainPageProductDao().selectNewList(conn);
		
		close(conn); 
		return nlist;
	}
	
	public ArrayList<MainPageProduct> selectPreList(){
		Connection conn = getConnection();
		
		ArrayList<MainPageProduct> plist = new MainPageProductDao().selectPreList(conn);
		close(conn);
		return plist;
	}
}
