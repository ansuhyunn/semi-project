package com.kh.cscenter.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class NoticeDao {

	private Properties prop = new Properties();
	
	public NoticeDao() {
		try {
			prop.loadFromXML(new FileInputStream(NoticeDao.class.getResource("db/sql/notice-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
