package com.kh.product.controller.display;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.Search;

/**
 * Servlet implementation class SearchResult
 */
@WebServlet("/search.pro")
public class SearchResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String[] value = request.getParameterValues("value");
		String[] option = Arrays.toString(value).split(",");
		String op1 = option[0].substring(1);
		String op2 = option[1];
		String op3 = option[2];
		String op4 = option[3].substring(0, option[3].lastIndexOf(']'));
		
		ArrayList<Product> searchList = new ProductService().selectSearchList(op1, op2, op3, op4);
		
		request.setAttribute("searchList", searchList);
		request.getRequestDispatcher("views/product/detailView.jsp").forward(request, response);
		
		
//		request.setAttribute("regionList", regionList);
//		request.getRequestDispatcher("views/product/regionResult.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
