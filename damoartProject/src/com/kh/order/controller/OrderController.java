package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.order.model.service.OrderService;
import com.kh.order.model.vo.Order;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/order.ca")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	public OrderService service = new OrderService();
    private ArrayList<Order> list = new ArrayList<Order>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public int getMemNo() {
    	return service.getMemNo();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		Member memNo = (Member) session.getAttribute("loginUser");
		Order o = service.selectOrderListO();
		
		if( memNo != null) {
		
		this.service.setMemNo(memNo.getMemNo());
		this.list = service.selectOrderList();
		
		System.out.println("controller this.list 했을때 : " + this.list);
		int totalCount = 0;
		int totalPrice = 0;
		for(Order or : list) {
			totalCount += or.getCartCount();
			if(or.getCartOpt().equals("A")) {
				totalPrice += or.getaPrice() * or.getCartCount();
			}else if(or.getCartOpt().equals("C")) {
				totalPrice += or.getcPrice() * or.getCartCount();
			}else {
				totalPrice += or.gettPrice() * or.getCartCount();
			}
		}
		
		request.setAttribute("totalPrice", totalPrice);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("list", list);
		//request.setAttribute("o", o);
		
		request.getRequestDispatcher("views/order/orderPage.jsp").forward(request, response);
		
		System.out.println("memNo" + memNo);
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
