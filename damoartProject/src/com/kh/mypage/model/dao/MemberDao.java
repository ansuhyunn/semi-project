package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;
import com.kh.mypage.model.vo.Member;

public class MemberDao {
	
	private Properties prop = new Properties();

	public MemberDao() {
		
		// 실시간으로 동기화되고 있는 파일의 경로를 변수에 담아두기 
		String filePath = MemberDao.class.getResource("/db/sql/mypage-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public int updateMember(Connection conn, Member m) {
		// update문 => 처리된 행 수 => 트랜잭션 처리
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getMemName());
			pstmt.setString(2, m.getNickname());
			pstmt.setString(3, m.getEmail());
			pstmt.setString(4, m.getPhone());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} close(pstmt);
		
		return result;
	}
	
	public Member selectMember(Connection conn, String memId) {
		// select문 => ResultSet (한행) => Member객체
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"),
							   rset.getString("mem_pwd"),
							   rset.getString("mem_name"),
							   rset.getString("nickname"),
							   rset.getString("email"),
							   rset.getString("phone"),
							   rset.getString("birth"),
							   rset.getString("enroll_date"),
							   rset.getString("mem_type"),
							   rset.getString("status")
							   );
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return m;
		}
	}

