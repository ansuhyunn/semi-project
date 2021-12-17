package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class MemberQnaListDao {

	Properties prop = new Properties();
	
	public MemberQnaListDao() {
		try {
			prop.loadFromXML(new FileInputStream(MemberQnaListDao.class.getResource("/db/sql/mypage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
}
