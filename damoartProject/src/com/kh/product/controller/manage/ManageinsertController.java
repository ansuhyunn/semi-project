package com.kh.product.controller.manage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.controller.PosterRenamePolicy;
import com.kh.common.model.vo.Attachment;
import com.kh.product.model.service.ManageService;
import com.kh.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;

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
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "utf-8", new PosterRenamePolicy());
	
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
			
			Attachment at = new Attachment();
			at.setOriginName(multiRequest.getOriginalFileName("upfile"));
			at.setChangeName(multiRequest.getFilesystemName("upfile"));
			at.setFilePath("resources/board_upfiles/");
			
			
			
			int result = new ManageService().insertProduct(p, at);
		
			if(result > 0) {
				
				HttpSession session = request.getSession();
				session.setAttribute("alertMsg", "상품 등록 완료");
				
				// 성공 => 상품 메인 페이지 재요청
				response.sendRedirect(request.getContextPath() + "/list.bo?cpage=1");
				
			} else {
				// 실패 => 에러페이지 띄우기
				request.setAttribute("errorMsg", "상품 등록 실패");			//값을 담을 땐 setAttribute
				RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
				view.forward(request, response);
			}	
		
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
