package com.kh.product.controller.manage;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ManageService;

/**
 * Servlet implementation class ManageDeleteController
 */
@WebServlet("/manageDelete.pro")
public class ManageDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pno = Integer.parseInt(request.getParameter("pno"));
		
		int result = new ManageService().deleteProduct(pno);
		
		if(result > 0) {
			
			request.getSession().setAttribute("alertMsg", "상품 삭제 완료");
			
			// 성공 => 상품 메인 페이지 재요청
			response.sendRedirect(request.getContextPath() + "/manageDetail.pro?pno=" + pno);
			
		} else {
			// 실패 => 에러페이지 띄우기
			request.setAttribute("errorMsg", "상품 삭제 실패");			//값을 담을 땐 setAttribute
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
