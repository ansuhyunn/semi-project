package com.kh.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.community.model.service.ReviewService;
import com.kh.community.model.vo.SelectTicket;

/**
 * Servlet implementation class ReviewEnrollFormController
 */
@WebServlet("/reviewEnrollForm.pro")
public class ReviewEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		ArrayList<SelectTicket> list = new ReviewService().selectTicketList();
		// 카테고리는 없고 대신 회원번호/>>주문번호<<를 받아서 카테고리를 대신한다는 느낌으로..
		
		
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/community/ReviewEnrollForm.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
