package com.kh.mypage.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.common.model.vo.PageInfo;
import com.kh.mypage.model.dao.MemberQnaListDao;
import com.kh.mypage.model.dao.MemberReserveDao;
import com.kh.mypage.model.vo.Qna;

public class MemberQnaListService {

	// qna 페이징바
	public int selectListCount(String nickName) {
		Connection conn = getConnection();
		int listCount = new MemberQnaListDao().selectListCount(conn, nickName); 
		close(conn);
		return listCount; 
	}
	
	public ArrayList<Qna> selectQnaList(String nickName, PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Qna> list = new MemberQnaListDao().selectQnaList(conn, nickName, pi);
		close(conn);
		return list;
	}
	
	// q리스트
	public Qna selectQna(String nickName) {
		Connection conn = getConnection();
		Qna question = new MemberQnaListDao().selectQna(conn, nickName);
		close(conn);
		return question;
	}
	
	// qna 삭제(update)
	public int updateQna(int qNo) {
		Connection conn = getConnection();
		int result = new MemberQnaListDao().updateQna(conn, qNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
}
