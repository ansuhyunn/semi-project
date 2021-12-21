package com.kh.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
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
		
		String content = (String)request.getParameter("content");
		System.out.println("여기 되나?");

		HttpSession session = request.getSession();
		int memNo = ((Member)session.getAttribute("loginUser")).getMemNo();

		ArrayList<insertCart> list = service.insertCart()

		System.out.println("memNo :" + memNo);
		int pNo = Integer.parseInt(request.getParameter("pNo"));

		System.out.println("pNo :" + pNo);
		String cartOpt = request.getParameter("cartOpt");

		System.out.println("cartOpt :" + cartOpt);
		int count = Integer.parseInt(request.getParameter("count"));
		
		System.out.println("count : ");
		Cart c = new Cart();
		c.setmemNo(memNo);
		c.setpNo(pNo);
		c.setCartOpt(cartOpt);
		c.setCartCount(count);
		/*
		int result = new CartService().insertCart(c);
		response.getWriter().print(result);
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}


