package com.kh.cscenter.controller.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.common.model.vo.Attachment;
import com.kh.cscenter.model.service.NoticeService;
import com.kh.cscenter.model.vo.Notice;

/**
 * Servlet implementation class AdminNoticeDetailController
 */
@WebServlet("/adminDatail.no")
public class AdminNoticeDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int noticeNo = Integer.parseInt(request.getParameter("nno"));
		
		NoticeService nService = new NoticeService();
		
		Notice n = nService.selectNotice(noticeNo);
		ArrayList<Attachment> atList = nService.selectAttachment(noticeNo);
		
		request.setAttribute("n", n);
		request.setAttribute("atList", atList);
		
		request.getRequestDispatcher("views/cscenter/admin/adminNoticeDatailView.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
