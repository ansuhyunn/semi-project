package com.kh.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.mypage.controller.MyPageQnaListController;
import com.kh.mypage.model.service.MemberQnaListService;
import com.kh.mypage.model.vo.Qna;

/**
 * Servlet implementation class MyPageQnaUpdateController
 */
@WebServlet("/qnaUpdate.mp")
public class MyPageQnaUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageQnaUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		//String nickName = ((Member)session.getAttribute("loginUser")).getNickName();
		//Qna question = new MemberQnaListService().selectQna(nickName);
		
		//session.setAttribute("question", question);
		int qNo = ((Qna)session.getAttribute("question")).getqNo();
			
		int result = new MemberQnaListService().updateQna(qNo);
		
		if(result > 0) {

			response.sendRedirect(request.getContextPath() + "/qnaList.mp");
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
