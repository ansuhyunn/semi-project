package com.kh.product.controller.manage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.product.model.service.ManageService;
import com.kh.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ManageinsertController
 */
@WebServlet("/manageInsert.pro")
public class ManageinsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageinsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {	
		
			int maxSize = 10*1024*1024;
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/product/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new DefaultFileRenamePolicy());
			
			
			String title = multiRequest.getParameter("title");
			String region = multiRequest.getParameter("region");
			String area = multiRequest.getParameter("area");
			String age = multiRequest.getParameter("age");
			String sDate = multiRequest.getParameter("sDate");
			String eDate = multiRequest.getParameter("eDate");
			String time = multiRequest.getParameter("time");
			int aPrice = Integer.parseInt(multiRequest.getParameter("aPrice"));
			int tPrice = Integer.parseInt(multiRequest.getParameter("tPrice"));
			int cPrice = Integer.parseInt(multiRequest.getParameter("cPrice"));
			String main = multiRequest.getParameter("main");
			String detail = multiRequest.getParameter("detail");
			String etc = multiRequest.getParameter("etc");
			
			Product p = new Product();
			p.setTitle(title);
			p.setRegion(region);
			p.setAge(age);
			p.setArea(area);
			p.setsDate(sDate);
			p.seteDate(eDate);
			p.setTime(time);
			p.setaPrice(aPrice);
			p.settPrice(tPrice);
			p.setcPrice(cPrice);
			p.setMainImg(main);
			p.setDetailImg(detail);
			p.setEtc(etc);
			
			
		int result = new ManageService().insertProduct();
		

		
		}//큰 if
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
