package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MemInsertController
 */
@WebServlet("/insert.me")
public class MemInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		String memName = request.getParameter("memName");
		String nickname = request.getParameter("nickname");
		String emailId = request.getParameter("emailId");
		String emailDomain = request.getParameter("emailDomain");
		String phone = request.getParameter("phone");
		String birth1 = request.getParameter("birth1");
		String birth2 = request.getParameter("birth2");
		String birth3 = request.getParameter("birth3");
		
		String email = emailId + emailDomain;
		String birth = birth2+ "/" + birth3 + "/" + birth1;
		
		
		Member m = new Member(memId, memPwd, memName, nickname, email, phone, birth);
		
		//System.out.println(m);
		
		int result = new MemberService().insertMember(m);
		
		if(result > 0) { // 회원가입 성공
			
			HttpSession session = request.getSession();
			
			response.sendRedirect("views/member/memEnrollSuccess.jsp");  
			
		}else { // 회원가입 실패
			
		}
	
	}	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
