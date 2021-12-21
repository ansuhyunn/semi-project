package com.kh.mypage.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.mypage.model.dao.MemberQnaListDao;
import com.kh.mypage.model.vo.Qna;

public class MemberQnaListService {

	public ArrayList<Qna> selectQnaList(String nickName){
		Connection conn = getConnection();
		ArrayList<Qna> list = new MemberQnaListDao().selectQnaList(conn, nickName);
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
