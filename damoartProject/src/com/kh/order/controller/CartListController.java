package com.kh.order.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.kh.order.model.service.CartService;
import com.kh.order.model.vo.Cart;
import com.kh.order.model.vo.Order;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class CartListController
 */
@WebServlet("/list.ca")
public class CartListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CartService service = new CartService();
    private ArrayList<Cart> list = new ArrayList<Cart>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartListController() {
        super();
        
        // TODO Auto-generated constructor stub
    }
    
    public int getMemNo() {
    	return service.GetMemNo();
    }

    
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member mem = (Member) session.getAttribute("loginUser");
		String content = (String) request.getParameter("content");

		int totalCount = 0;
		int totalPrice = 0;
		
		if(mem != null) {
			if(content == null) {
				this.service.SetMemNo(mem.getMemNo());
				this.list = service.selectCartList();

					for(Cart ca : list) {
						totalCount += ca.getCartCount();
						if(ca.getCartOpt().equals("A")) {
							totalPrice += ca.getaPrice() * ca.getCartCount();
						}else if(ca.getCartOpt().equals("C")) {
							totalPrice += ca.getcPrice() * ca.getCartCount();
						}else {
							totalPrice += ca.gettPrice() * ca.getCartCount();
						}
					}
					
					request.setAttribute("totalPrice", totalPrice);
					request.setAttribute("totalCount", totalCount);
					request.setAttribute("list", list);
					request.getRequestDispatcher("views/order/cart.jsp").forward(request, response);

			
			}
			else if(content == "order") {
				String arrIdx = request.getParameter("select");
//				this.list
				System.out.println(arrIdx);
			} 
		}else {
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
