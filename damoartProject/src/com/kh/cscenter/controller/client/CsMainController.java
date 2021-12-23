package com.kh.cscenter.controller.client;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.cscenter.model.service.FaqService;
import com.kh.cscenter.model.service.NoticeService;
import com.kh.cscenter.model.service.QnaService;
import com.kh.cscenter.model.vo.FAQ;
import com.kh.cscenter.model.vo.Notice;
import com.kh.cscenter.model.vo.QnA;

/**
 * Servlet implementation class CsMainController
 */
@WebServlet("/csMain.cs")
public class CsMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CsMainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FAQ> fList = new FaqService().selectList();
		ArrayList<QnA> qList = new QnaService().selectList();
		ArrayList<Notice> nList = new NoticeService().selectList();
		
		request.setAttribute("fList", fList);
		request.setAttribute("qList", qList);
		request.setAttribute("nList", nList);
		 
		request.getRequestDispatcher("views/cscenter/client/csMain.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
