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
import com.kh.mypage.model.service.MemberReviewService;
import com.kh.mypage.model.vo.Review;

/**
 * Servlet implementation class MyPageReviewAfterController
 */
@WebServlet("/rafter.mp")
public class MyPageReviewAfterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageReviewAfterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int memNo = ((Member)session.getAttribute("loginUser")).getMemNo();
		
		ArrayList<Review> alist = new MemberReviewService().reviewAfterList(memNo);
		
		request.setAttribute("alist", alist);
		request.getRequestDispatcher("views/mypage/memberReviewAfter.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
