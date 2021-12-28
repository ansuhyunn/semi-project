package com.kh.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.order.model.service.ManageCancelService;
import com.kh.order.model.service.ManageOrderService;

/**
 * Servlet implementation class ManageCancelCancelController
 */
@WebServlet("/cancelcan.mg")
public class ManageCancelCancelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageCancelCancelController() {
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
			result *= new ManageCancelService().deleteOrder(Integer.parseInt(orderNo));
	
		}
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "주문 취소 되었습니다.");
			response.sendRedirect(request.getContextPath() + "/cancel.mg");
		}else {
			//에러
		}	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
