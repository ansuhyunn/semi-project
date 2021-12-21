package com.kh.cscenter.controller.admin;

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
 * Servlet implementation class AdminGuideDatailAndUpdateFormController
 */
@WebServlet("/detailAndUpdate.gu")
public class AdminGuideDatailAndUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminGuideDatailAndUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int guideNo = Integer.parseInt(request.getParameter("gno"));
		
		Guide g = new GuideService().adminSelectGuide(guideNo);
		Attachment at = new GuideService().adminSelectAttachment(guideNo);
		request.setAttribute("g", g);
		request.setAttribute("at", at);
		
		request.getRequestDispatcher("views/cscenter/admin/adminGuideDetailAndUpdateForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
