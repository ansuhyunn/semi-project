package com.kh.cscenter.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.cscenter.model.service.FaqService;
import com.kh.cscenter.model.vo.FAQ;

/**
 * Servlet implementation class AdminFaqDetailController
 */
@WebServlet("/adminDetail.fa")
public class AdminFaqDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int faqNo = Integer.parseInt(request.getParameter("fno"));
		
		FAQ f = new FaqService().selectFaq(faqNo);
		
		request.setAttribute("f", f);
		
		request.getRequestDispatcher("views/cscenter/admin/adminFaqDetailView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
