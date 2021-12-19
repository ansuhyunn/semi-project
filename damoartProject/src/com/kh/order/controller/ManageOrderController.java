package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.order.model.service.ManageOrderService;
import com.kh.order.model.vo.ManageOrder;

/**
 * Servlet implementation class ManageOrderController
 */
@WebServlet("/order.mg")
public class ManageOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	ManageOrderService service = new ManageOrderService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replyContent = (String) request.getParameter("content");

		System.out.println(replyContent);
		if(replyContent == null) {

			ArrayList<ManageOrder> list = service.selectOrderManage();
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/order/manageOrder.jsp").forward(request, response);
		}
		else if(replyContent.equals("today")) {
			String startDt = request.getParameter("startDt");
			String endDt = request.getParameter("endDt");
			System.out.println("되나?"+ "start: " + startDt + ", end: " + endDt);
			
			ArrayList<ManageOrder> list = service.selectOrderManage(startDt,endDt);
			System.out.println("되나?"+ "start: " + startDt + ", end: " + endDt);

			request.setAttribute("list", list);
			request.getRequestDispatcher("views/order/manageOrder.jsp").forward(request, response);

		}
		else if(replyContent.equals("week")) {
			String startDt = request.getParameter("startDt");
			String endDt = request.getParameter("endDt");
			System.out.println("되나?"+ "start: " + startDt + ", end: " + endDt);
			
			ArrayList<ManageOrder> list = service.selectOrderManage(startDt,endDt);
			System.out.println("되나?"+ "start: " + startDt + ", end: " + endDt);

			request.setAttribute("list", list);
			request.getRequestDispatcher("views/order/manageOrder.jsp").forward(request, response);
			
		}
		else if(replyContent.equals("month")) {
			System.out.println("되나222222222");

			String startDt = request.getParameter("startDt");
			String endDt = request.getParameter("endDt");
			System.out.println("되나?"+ "start: " + startDt + ", end: " + endDt);

			ArrayList<ManageOrder> list = service.selectOrderManage(startDt,endDt);

//			response.setContentType("application/json; charset=UTF-8");
//			new Gson().toJson(list, response.getWriter());
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/order/manageOrder.jsp").forward(request, response);
			
		}
		else if(replyContent == "self") {
			
		}
		
	}
	}
