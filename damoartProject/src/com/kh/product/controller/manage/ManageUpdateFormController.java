package com.kh.product.controller.manage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.Attachment;
import com.kh.product.model.service.ManageService;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ManageUpdateFormController
 */
@WebServlet("/manageUpdateForm.pro")
public class ManageUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pNo = Integer.parseInt(request.getParameter("pno"));
		Product p = new ManageService().productDetailView(pNo);
		Attachment at1 = new ManageService().selectAttachment(pNo);
		Attachment at2 = new ManageService().selectAttachment(pNo);
		
		request.setAttribute("p", p);
		request.setAttribute("at1", at1);
		request.setAttribute("at2", at2);
		
		request.getRequestDispatcher("views/product/manage/manageUpdateProduct.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
