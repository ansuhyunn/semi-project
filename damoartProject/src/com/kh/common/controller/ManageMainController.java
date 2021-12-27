package com.kh.common.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.service.AdminMainService;
import com.kh.common.model.vo.AdminMainOrder;
import com.kh.cscenter.model.service.QnaService;
import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

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
		ArrayList<AdminMainOrder> oList = new AdminMainService().selectAdminMainList();
		int newOrderCount = new AdminMainService().newOrderCount();
		int cancelCount = new AdminMainService().orderCancelCount();		
		int nonAnswerCount = new QnaService().nonAnswerCount();
		
		request.setAttribute("mList", mList);
		request.setAttribute("oList", oList);
		request.setAttribute("newOrderCount", newOrderCount);
		request.setAttribute("cancelCount", cancelCount);
		request.setAttribute("nonAnswerCount", nonAnswerCount);
		
		request.getRequestDispatcher("views/common/manageMainPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
