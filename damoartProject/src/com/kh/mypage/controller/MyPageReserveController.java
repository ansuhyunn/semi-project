package com.kh.mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.common.model.vo.PageInfo;
import com.kh.member.model.vo.Member;
import com.kh.mypage.model.service.MemberPointService;
import com.kh.mypage.model.service.MemberReserveService;
import com.kh.mypage.model.vo.Order;
import com.kh.mypage.model.vo.Point;

/**
 * Servlet implementation class MyPageReserveController
 */
@WebServlet("/reserve.mp")
public class MyPageReserveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageReserveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int memNo = ((Member)session.getAttribute("loginUser")).getMemNo();
		// 페이징 처리
		int listCount; // 현재 총 게시글 개수
		int currentPage; // 현재 페이지 (사용자가 요청한 페이지)
		int pageLimit; // 페이지 하단에 보여질 페이징바의 페이지 최대개수 (몇개 단위씩)
		int boardLimit; // 한 페이지 내에 보여질 게시글 최대개수 (몇개 단위씩)
		
		int maxPage; // 가장 마지막페이지 (총 페이지수)
		int startPage; // 페이징바의 시작수
		int endPage; // 페이징바의 끝수
		
		// 예매내역 총 게시글 개수
		listCount = new MemberReserveService().selectReListCount(memNo);
		// 현재 페이지
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		// 페이징바의 페이지 최대개수
		pageLimit = 5;
		// 한 페이지에 보여질 게시글 최대개수
		boardLimit = 5;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		
		request.setCharacterEncoding("UTF-8");
		
		
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		
		ArrayList<Order> list = new MemberReserveService().selectReserve(memNo, pi);
		Point poi = new MemberPointService().memberPoint(memId);
		
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		session.setAttribute("poi", poi);
		request.getRequestDispatcher("views/mypage/reserveDetail.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
