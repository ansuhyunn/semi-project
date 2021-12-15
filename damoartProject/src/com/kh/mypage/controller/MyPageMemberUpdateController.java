package com.kh.mypage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.mypage.model.service.MemberService;
import com.kh.mypage.model.vo.Member;


/**
 * Servlet implementation class MyPageMemberUpdateController
 */
@WebServlet("/memberUpdate.mp")
public class MyPageMemberUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageMemberUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userName = request.getParameter("userName");
		String userId = request.getParameter("userId");
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String year = request.getParameter("birth1");
		String month = request.getParameter("birth2");
		String day = request.getParameter("birth3");
		
		String birth = month + "/" + day + "/" + year;
		
		Member m = new Member(userName, userId, nickname, email, phone, birth);
		
		Member updateMember = new MemberService().updateMember(m);
		
		HttpSession session = request.getSession();
		if(updateMember == null) {
			request.setAttribute("errorMsg", "회원정보 수정에 실패했습니다.");
		}else {
			session.setAttribute("loginUser", updateMember);
			session.setAttribute("alertMsg", "회원님의 정보가 수정되었습니다.");
			
			response.sendRedirect(request.getContextPath() + "/memberUpdate.mp");
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
