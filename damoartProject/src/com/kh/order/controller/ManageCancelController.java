package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.order.model.service.ManageCancelService;
import com.kh.order.model.service.ManageCancelService;
import com.kh.order.model.vo.ManageCancel;

/**
 * Servlet implementation class ManageCancelController
 */
@WebServlet("/cancel.mg")
public class ManageCancelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	ManageCancelService service = new ManageCancelService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageCancelController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String replyContent = (String) request.getParameter("content");
		
		if(replyContent == null ) {
			
			ArrayList<ManageCancel> list = service.selectCancelManage();
			request.setAttribute("list", list);
			request.getRequestDispatcher("views/order/manageCancel.jsp").forward(request, response);
		
		}else if(replyContent.equals("today")) {
				String startDt = request.getParameter("startDt");
				String endDt = request.getParameter("endDt");
				
				ArrayList<ManageCancel> list = service.selectCancelManage(startDt,endDt);

				request.setAttribute("list", list);
				request.getRequestDispatcher("views/order/manageCancel.jsp").forward(request, response);

			}
			else if(replyContent.equals("week")) {
				String startDt = request.getParameter("startDt");
				String endDt = request.getParameter("endDt");
				
				ArrayList<ManageCancel> list = service.selectCancelManage(startDt,endDt);

				request.setAttribute("list", list);
				request.getRequestDispatcher("views/order/manageCancel.jsp").forward(request, response);
				
			}
			else if(replyContent.equals("month")) {

				String startDt = request.getParameter("startDt");
				String endDt = request.getParameter("endDt");

				ArrayList<ManageCancel> list = service.selectCancelManage(startDt,endDt);

				request.setAttribute("list", list);
				request.getRequestDispatcher("views/order/manageCancel.jsp").forward(request, response);
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
