package com.kh.community.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.community.model.vo.Event;

public class EventDao {

	private Properties prop = new Properties();
	
	public EventDao() {
		
		try {
			prop.loadFromXML(new FileInputStream(EventDao.class.getResource("/db/sql/event-mapper.xml").getPath()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 페이징바 관련
		public int selectListCount(Connection conn) {

			int listCount = 0;
				
				PreparedStatement pstmt = null;
				ResultSet rset = null;
				
				String sql = prop.getProperty("selectListCount");
				
				
					try {
						pstmt = conn.prepareStatement(sql);
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

		public ArrayList<Event> selectList(Connection conn, PageInfo pi) {
			// select문 => ResultSet (여러행) => ArrayList<Board>
			ArrayList<Event> list = new ArrayList<>();
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("selectList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
				int endRow = startRow + pi.getBoardLimit() - 1;
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					list.add(new Event(rset.getInt("event_no"),
									   rset.getInt("mem_no"),
									   rset.getString("event_name"),
									   rset.getString("event_start"),
									   rset.getString("event_end"),
									   rset.getString("event_now"),
									   rset.getString("event_image")));
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
