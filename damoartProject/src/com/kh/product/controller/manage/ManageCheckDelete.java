package com.kh.product.controller.manage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ManageService;

/**
 * Servlet implementation class ManageCheckDelete
 */
@WebServlet("/checkDelete.pro")
public class ManageCheckDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageCheckDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int result = 1;						// 왜 1이지??
		
		String str = request.getParameter("arr");
		
		String[] arr = str.split(",");

		for(String pno : arr) {
			System.out.println(pno);
			result *= new ManageService().deleteProduct(Integer.parseInt(pno));
	
		}
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "성공적으로 삭제되었습니다.");
			response.sendRedirect(request.getContextPath() + "/managelist.man?cpage=1");
		}else {
			//에러
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
