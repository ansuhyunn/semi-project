package com.kh.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.order.model.service.CartService;
import com.kh.order.model.vo.Cart;

/**
 * Servlet implementation class CartInsertController
 */
@WebServlet("/in.ca")
public class CartInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cartMem = Integer.parseInt(request.getParameter("cartMem"));
		int cartP = Integer.parseInt(request.getParameter("cartP"));
		String cartOpt = request.getParameter("cartOpt");
		int count = Integer.parseInt(request.getParameter("count"));
		
		Cart c = new Cart();
		c.setcartMem(cartMem);
		c.setCartP(cartP);
		c.setCartOpt(cartOpt);
		c.setCartCount(count);
		
		int result = new CartService().insertCart(c);
		response.getWriter().print(result);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}