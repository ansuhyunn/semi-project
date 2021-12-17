package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.mypage.model.vo.Qna;

public class MemberQnaListDao {

	Properties prop = new Properties();
	
	public MemberQnaListDao() {
		try {
			prop.loadFromXML(new FileInputStream(MemberQnaListDao.class.getResource("/db/sql/mypage-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Qna> selectQnaList(Connection conn, String memId){
		ArrayList<Qna> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;	
		String sql = prop.getProperty("memberQnaList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				String category = "";
				switch(rset.getString("q_category_code")) {
				case "Q1" : category = "[티켓]"; break;
         	    case "Q2" : category = "[취소/환불]"; break;
         	    case "Q3" : category = "[주문/결제]"; break;
         	    case "Q4" : category = "[상품]"; break;
         	    case "Q5" : category = "[기타]"; break;
         	    default :  break;
				}
				
				String aStatus = "";
				if(rset.getString("mem_no2") != null) {
					aStatus = "답변완료";
				}else {
					aStatus = "답변대기";
				}
				list.add(new Qna(rset.getString("title"),
						         rset.getString("nickname"),
						         rset.getString("q_title"),
						         rset.getString("q_content"),
						         rset.getDate("create_date"),
						         category,
						         rset.getString("a_content"),
						         rset.getDate("a_create_date"),
						         aStatus));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
}
