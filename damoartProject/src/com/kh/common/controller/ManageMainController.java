package com.kh.common.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.cscenter.model.service.QnaService;
import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;
import com.kh.order.model.service.ManageCancelService;
import com.kh.order.model.service.ManageOrderService;
import com.kh.order.model.vo.Order;

/**
 * Servlet implementation class ManageMainController
 */
@WebServlet("/adminMain.ad")
public class ManageMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageMainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Member> mList = new MemberService().selectAdminMainList();
		ArrayList<Order> oList = new ManageOrderService().selectAdminNaminList();
		int newOrderCount = new ManageOrderService().newOrderCount();
		int cancelCount = new ManageCancelService().orderCancelCount();		
		int nonAnswerCount = new QnaService().nonAnswerCount();
		
		request.setAttribute("mList", mList);
		request.setAttribute("oList", oList);
		request.setAttribute("newOrderCount", newOrderCount);
		request.setAttribute("cancelCount", cancelCount);
		request.setAttribute("nonAnswerCount", nonAnswerCount);
		
		request.getRequestDispatcher("views/common/manageMenubar_2.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
