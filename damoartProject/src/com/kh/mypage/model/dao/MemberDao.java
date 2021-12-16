package com.kh.mypage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.member.model.vo.Member;

public class MemberDao {
	
	private Properties prop = new Properties();

	public MemberDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(MemberDao.class.getResource("/db/sql/mypage-mapper.xml").getPath()));
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
			pstmt.setString(1, m.getMemPwd());
			pstmt.setString(2, m.getMemName());
			pstmt.setString(3, m.getNickName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getBirth());
			pstmt.setString(7, m.getMemId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
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
							   rset.getDate("enroll_date"),
							   rset.getString("mem_type"),
							   rset.getString("status"),
							   rset.getString("black_content"),
							   rset.getDate("black_date"));
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return m;
		}
	
	public int deleteMember(Connection conn, String memId) {
		// update문 => 처리된 행 수 => 트랜잭션 처리
		int result = 0;
				
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
				
		try {
			pstmt = conn.prepareStatement(sql);
					
			pstmt.setString(1, memId);
			
			result = pstmt.executeUpdate();
					
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
				
		return result;
	}
}

