package com.kh.cscenter.controller.client;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.Attachment;
import com.kh.cscenter.model.service.GuideService;
import com.kh.cscenter.model.vo.Guide;

/**
 * Servlet implementation class GuidePageController
 */
@WebServlet("/guideView.gu")
public class GuidePageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuidePageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Guide g = new GuideService().selectGuide();
		Attachment at = new GuideService().selectAttachment();
		
		request.setAttribute("g", g);
		request.setAttribute("at", at);
		request.getRequestDispatcher("views/cscenter/client/guideMain.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
