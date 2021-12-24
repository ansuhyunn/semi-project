package com.kh.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.community.model.service.ReviewService;
import com.kh.community.model.vo.Review;
import com.kh.cscenter.model.service.QnaService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class ReviewInsertController
 */
@WebServlet("/insert.rv")
public class ReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int memNo = ((Member)session.getAttribute("loginUser")).getMemNo(); 
		int orderNo = Integer.parseInt(request.getParameter("orderNo"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String star = request.getParameter("star");
		
		Review r = new Review();
		r.setMemNo(memNo);
		r.setOrderNo(orderNo);
		r.setReviewTitle(title);
		r.setReviewContent(content);
		r.setReviewStar(star);
		
		int result = new ReviewService().insertReview(r);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "리뷰가 성공적으로 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/");
		}else { // 에러페이지
			
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
