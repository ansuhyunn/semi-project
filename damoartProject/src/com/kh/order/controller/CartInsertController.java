package com.kh.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.google.gson.Gson;
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
        // TODO Auto-generated constructor stub

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  
		int memNo = ((Member)request.getSession().getAttribute("loginUser")).getMemNo();
		int pNo = Integer.parseInt(request.getParameter("pno"));
		int count = Integer.parseInt(request.getParameter("count"));		// 갯수
		String option = request.getParameter("option");						// 옵션
		
		
		Cart c = new Cart();
		c.setmemNo(memNo);
		c.setpNo(pNo);
		c.setCartOpt(option);
		c.setCartCount(count);
		
		int result = new CartService().insertCart(c);
		
		ArrayList<Cart> list = new CartService().selectPrice(c);
		
//		request.setAttribute("list", list);
//		response.getWriter().print(list);
//		System.out.println(list);
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter());
		
		/*
		JSONObject jObj = new JSONObject();	
		jObj.put("memNo", id);	
		jObj.put("pno", pno);
		jObj.put("count", count);
		jObj.put("option", option);	
	
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().print(jObj);
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


