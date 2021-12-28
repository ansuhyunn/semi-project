package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.order.model.service.ManageSalesService;
import com.kh.order.model.vo.ManageSales;
import com.kh.order.model.vo.Order;

/**
 * Servlet implementation class ManageSalesController
 */
@WebServlet("/sales.mg")
public class ManageSalesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageSalesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<ManageSales> list = new ManageSalesService().selectSalesManage();
		int totalOrder = 0;
		int totalPay = 0;
		int totalPrice = 0;
		int cancel = 0;
		// int total cancel 취소수 구해야되는데... 
		
		for(ManageSales or : list) {
			totalOrder += or.getOrderCount();
			totalPay += or.getFinalPrice();
			totalPrice += or.getTotalPrice();
			if(or.getorderStatus().equals("CC")) {
				cancel += or.getOrderCount();
			}
		}
		
		
		request.setAttribute("totalOrder", totalOrder);
		request.setAttribute("totalPay", totalPay);
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("cancel", cancel);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/order/manageSales.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
