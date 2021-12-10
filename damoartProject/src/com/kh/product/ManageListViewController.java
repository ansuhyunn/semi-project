package com.kh.product;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.PageInfo;
import com.kh.product.model.service.ManageService;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ManageListViewController
 */
@WebServlet("/managelist.man")
public class ManageListViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageListViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int proCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		int maxPage;
		int startPage;
		int endPage;
		
		proCount = new ManageService().selectProCount();
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		pageLimit = 10; 			
		boardLimit = 10;
		
		maxPage = (int)Math.ceil((double)proCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(proCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		ArrayList<Product> allList = new ManageService().selectAllList(pi);
		
		request.setAttribute("pi", pi);	
		request.setAttribute("allList", allList);
		request.getRequestDispatcher("views/product/manageListProduct.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
