package com.kh.cscenter.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.cscenter.model.service.QnaService;

/**
 * Servlet implementation class AdminQnaInsertControlloer
 */
@WebServlet("/adminInsert.qa")
public class AdminQnaInsertControlloer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminQnaInsertControlloer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int qNo = Integer.parseInt(request.getParameter("qno"));
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		String answer = request.getParameter("answer");
		
		int result = new QnaService().insertAnswer(qNo, answer, adminNo);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "답변이 성공적으로 등록되었습니다.");
			response.sendRedirect(request.getContextPath() + "/adminList.qa?cpage=1");
		}else { //에러페이지
			
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
