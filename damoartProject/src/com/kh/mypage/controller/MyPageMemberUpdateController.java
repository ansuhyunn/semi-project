package com.kh.mypage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.mypage.model.service.MemberService;
import com.kh.member.model.vo.Member;


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
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		String memName = request.getParameter("memName");
		String nickName = request.getParameter("nickName");
		String emailId = request.getParameter("emailId");
		String emailDomain = request.getParameter("emailDomain");
		String phone = request.getParameter("phone");
		String birth1 = request.getParameter("birth1");
		String birth2 = request.getParameter("birth2");
		String birth3 = request.getParameter("birth3");
		
		String email = emailId + emailDomain;
		String birth = birth2+ "/" + birth3 + "/" + birth1;
		
		Member m = new Member(memId, memPwd, memName, nickName, email, phone, birth);
		
		Member updateMember = new MemberService().updateMember(m);

		
		HttpSession session = request.getSession();
		if(updateMember == null) { // 실패
			session.setAttribute("errorMsg", "회원정보 수정에 실패했습니다.");
		}else {
			session.setAttribute("loginUser", updateMember);
			session.setAttribute("alertMsg", "회원님의 정보가 수정되었습니다.");
			
			response.sendRedirect(request.getContextPath() + "/views/mypage/mypageMain.jsp");
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
