package com.kh.cscenter.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.Attachment;
import com.kh.cscenter.model.service.QnaService;
import com.kh.cscenter.model.vo.QnA;

/**
 * Servlet implementation class AdminQnaDetailController
 */
@WebServlet("/adminDetail.qa")
public class AdminQnaDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQnaDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int qNo = Integer.parseInt(request.getParameter("qno"));
		
		QnaService qService = new QnaService();
		
		QnA q = qService.selectQnA(qNo);
		Attachment at = qService.selectAttachment(qNo);
		
		request.setAttribute("q", q);
		request.setAttribute("at", at);
		
		request.getRequestDispatcher("views/cscenter/admin/adminQnaDetailView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
