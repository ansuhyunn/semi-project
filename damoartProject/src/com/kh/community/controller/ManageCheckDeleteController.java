package com.kh.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.community.model.service.ReviewService;
import com.kh.cscenter.model.service.NoticeService;

/**
 * Servlet implementation class ManageCheckDeleteController
 */
@WebServlet("/checkDelete.rv")
public class ManageCheckDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageCheckDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 1;
		
		String str = request.getParameter("arr");
		
		String[] arr = str.split(",");

		for(String checkNo : arr) {
			System.out.println(checkNo);
			result *= new ReviewService().deleteReview(Integer.parseInt(checkNo));
	
		}
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "성공적으로 삭제되었습니다.");
			response.sendRedirect(request.getContextPath() + "/manageList.rv?cpage=1");
		}else {
			//에러
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
