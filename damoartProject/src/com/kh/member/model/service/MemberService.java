package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {
	
	public Member loginMember(String memId, String memPwd) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, memId, memPwd);
		
		close(conn);
		return m;
		
	}
	
	public int insertMember(Member m) {
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int idCheck(String checkId) {
		Connection conn = getConnection();
		int count = new MemberDao().idCheck(conn, checkId);
		
		close(conn);
		return count;
	}
	
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new MemberDao().selectListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	public ArrayList<Member> selectList(PageInfo pi){
		Connection conn = getConnection();
		ArrayList<Member> list = new MemberDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
}
