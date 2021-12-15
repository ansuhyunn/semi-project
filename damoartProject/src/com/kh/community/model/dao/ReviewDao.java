package com.kh.community.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.community.model.vo.Review;

public class ReviewDao {

	public int selectListCount(Connection conn) {
		// select문 => ResultSet (한개) => int
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


	public ArrayList<Review> selectList(Connection conn, PageInfo pi){
		// select문 => ResultSet (여러행) => ArrayList<Board>
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql); // 미완성된 sql문
			/*
			 * currentPage : 1	=> 시작값 : 1 | 끝값 : 10 
			 * currentPage : 2  => 시작값 : 11| 끝값 : 20
			 * currentPage : 3  => 시작값 : 21| 끝값 : 30
			 * 
			 * 시작값 : (currentPage - 1) * boardLimit + 1
			 * 끝값 : 시작값 + boardLimit - 1
			 * 
			 */
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Review(rset.getInt("board_no"),
								   rset.getString("category_name"),
								   rset.getString("board_title"),
								   rset.getString("user_id"),
								   rset.getInt("count"),
								   rset.getString("create_date")));
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
