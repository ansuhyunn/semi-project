package com.kh.community.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.community.model.service.ReviewService;

/**
 * Servlet implementation class ManageReviewDeleteController
 */
@WebServlet("/delete.rv")
public class ManageReviewDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageReviewDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rno = Integer.parseInt(request.getParameter("rno"));
		
		int result = new ReviewService().deleteReview(rno);
		
		if(result > 0) {
			
			request.getSession().setAttribute("alertMsg", "상품 삭제 완료");
			
			// 성공 => 상품 메인 페이지 재요청
			response.sendRedirect(request.getContextPath() + "/manageList.rv?cpage=1");
			
		} else {
			// 실패 => 에러페이지 띄우기
			request.setAttribute("errorMsg", "상품 삭제 실패");			//값을 담을 땐 setAttribute
		}}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
