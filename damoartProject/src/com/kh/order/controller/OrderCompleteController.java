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
 * Servlet implementation class OrderCompleteController
 */
@WebServlet("/orcom.ca")
public class OrderCompleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public OrderService service = new OrderService();
    private ArrayList<Order> list = new ArrayList<Order>();
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderCompleteController() {
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
		
		if( memNo != null) {
		
		this.service.setMemNo(memNo.getMemNo());
		this.list = service.selectOrderList();
	
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/order/order.jsp").forward(request, response);	
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
