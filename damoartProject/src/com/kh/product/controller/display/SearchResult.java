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
		
		if(op1.equals("today")) {
			op1 = "오늘 관람 가능";
		}else if(op1.equals("week")) {
			op1 = "1주일 이내 종료";
		}else {
			op1 = "1달 이내 종료";
		}
		
		if(Integer.parseInt(op3) == 0) {
			op3 = "무료";
		}else if(Integer.parseInt(op3) == 10000) {
			op3 = "10000원 이하";
		}else if(Integer.parseInt(op3) == 19999) {
			op3 = "20000원 미만";
		}else {
			op3 = "20000원 이상";
		}
		
		Search sc = new Search(op1, op2, op3, op4);
		
		request.setAttribute("sc", sc);
		request.setAttribute("searchList", searchList);
		request.getRequestDispatcher("views/product/searchResult.jsp").forward(request, response);

//		System.out.println(searchList);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
