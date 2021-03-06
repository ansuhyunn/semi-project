package com.kh.member.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.vo.Member;
import com.kh.member.model.vo.Point;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public Member loginMember(Connection conn, String memId, String memPwd) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			
			pstmt.setString(1, memId);
			pstmt.setString(2, memPwd);
			
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
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}
	
	public int insertMember(Connection conn, Member m) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemPwd());
			pstmt.setString(3, m.getMemName());
			pstmt.setString(4, m.getNickName());
			pstmt.setString(5, m.getEmail());
			pstmt.setString(6, m.getPhone());
			pstmt.setString(7, m.getBirth());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int idCheck(Connection conn, String checkId) {
		// select문 => ResultSet (한개의 숫자) => int
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return count;
	}
	
	public int selectListCount(Connection conn) {
		
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectListCount");
		
		try {
			pstmt = conn.prepareStatement(sql); // 완성된 sql문
			rset = pstmt.executeQuery();

			if(rset.next()) {
				listCount = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<Member> selectList(Connection conn, PageInfo pi) {
		
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Member(rset.getInt("mem_no"),
						           rset.getString("mem_id"),
						           rset.getString("mem_name"),
						           rset.getString("nickname"),
						           rset.getString("email"),
						           rset.getString("phone"),
						           rset.getString("birth"),
						           rset.getDate("enroll_date"),
						           rset.getString("status"),
						           rset.getInt("point")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;	
	}
	
	public Member findIdResult(Connection conn, String memName, String email) {
		
		Member m = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("findId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memName);
			pstmt.setString(2, email);
			
			rset = pstmt.executeQuery(); 
			
			if(rset.next()) {
				m = new Member(rset.getInt("mem_no"),
							   rset.getString("mem_id"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
		
	}
	
	
	public ArrayList<Point> pointList(Connection conn, int memNo){
		
		ArrayList<Point> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("pointList");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			pstmt.setInt(1, memNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Point(rset.getInt("mem_no"),
									rset.getDate("poi_date"),
									rset.getInt("poi_point"),
									rset.getString("poi_content")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	public ArrayList<Member> selectAdminMainList(Connection conn){
		ArrayList<Member> mList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAdminMainList");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 1);
			pstmt.setInt(2, 5);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Member m = new Member();
				m.setMemNo(rset.getInt("mem_no"));
				m.setMemId(rset.getString("mem_id"));
				m.setMemName(rset.getString("mem_name"));
				m.setNickName(rset.getString("nickname"));
				m.setEmail(rset.getString("email"));
				m.setPhone(rset.getString("phone"));
				m.setEnrollDate(rset.getDate("enroll_date"));
				
				mList.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return mList;
	}

}
