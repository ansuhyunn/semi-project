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
 * Servlet implementation class AdminFaqUpdateController
 */
@WebServlet("/update.fa")
public class AdminFaqUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminFaqUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int faqNo = Integer.parseInt(request.getParameter("faqNo"));
		String title = request.getParameter("title");
		String category = request.getParameter("category");
		String content = request.getParameter("content");
		
		FAQ f = new FAQ();
		f.setFaqNo(faqNo);
		f.setFaqTitle(title);
		f.setfCategoryCode(category);
		f.setFaqContent(content);
		
		int result = new FaqService().updateFaq(f);
		
		if(result > 0) {
			request.getSession().setAttribute("alertMsg", "게시글이 성공적으로 수정되었습니다.");
			response.sendRedirect(request.getContextPath()+ "/adminList.fa?cpage=1");
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
