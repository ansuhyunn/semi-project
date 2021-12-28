package com.kh.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.cscenter.model.service.GuideService;
import com.kh.order.model.service.ManageOrderService;

/**
 * Servlet implementation class ManageOrderCancelController
 */
@WebServlet("/checkCancel.mg")
public class ManageOrderCancelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageOrderCancelController() {
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
		
		
		for(String orderNo : arr) {
			System.out.println(orderNo);
			result *= new ManageOrderService().deleteOrder(Integer.parseInt(orderNo));
	
		}
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "주문 취소 되었습니다.");
			response.sendRedirect(request.getContextPath() + "/order.mg");
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
