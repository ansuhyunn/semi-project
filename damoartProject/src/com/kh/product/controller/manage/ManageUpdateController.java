package com.kh.product.controller.manage;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.controller.MyFileRenamePolicy;
import com.kh.common.model.vo.Attachment;
import com.kh.product.model.service.ManageService;
import com.kh.product.model.vo.Product;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class ManageUpdateController
 */
@WebServlet("/manageUpdate.pro")
public class ManageUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageUpdateController() {
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
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			int pNo = Integer.parseInt(multiRequest.getParameter("pNo"));
			String enrollDate = multiRequest.getParameter("enrollDate");
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
			String mainImg = multiRequest.getParameter("main");
			String detailImg = multiRequest.getParameter("detail");
			String etc = multiRequest.getParameter("etc");
			String soldOut = multiRequest.getParameter("soldOut");
			
		
			Attachment at1 = null;
			Attachment at2 = null;
			if(multiRequest.getOriginalFileName("main") != null && multiRequest.getOriginalFileName("detail") != null) {
				at1 = new Attachment();
				at1.setOriginName(multiRequest.getOriginalFileName("main"));
				at1.setChangeName(multiRequest.getFilesystemName("main"));
				at1.setFilePath("resources/product/");
				at1.setFileNo(Integer.parseInt(multiRequest.getParameter("originFileNo")));
				
				at2 = new Attachment();
				at2.setOriginName(multiRequest.getOriginalFileName("detail"));
				at2.setChangeName(multiRequest.getFilesystemName("detail"));
				at2.setFilePath("resources/product/");
				at2.setFileNo(Integer.parseInt(multiRequest.getParameter("originFileNo")));
			}
			
			Product p = new Product();
			p.setpNo(pNo);
			p.setEnrollDate(enrollDate);
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
			p.setMainImg(at1.getFilePath() + at1.getChangeName());
			p.setDetailImg(at2.getFilePath() + at2.getChangeName());
			p.setEtc(etc);
			p.setSoldOut(soldOut);
			
			int result = new ManageService().updateProduct(p, at1, at2);
		
			HttpSession session = request.getSession();
			if(result > 0) {
				
				request.getSession().setAttribute("alertMsg", "상품 수정 완료");
				
				// 성공 => 상품 메인 페이지 재요청
				response.sendRedirect(request.getContextPath() + "/manageDetail.pro?pno=" + pNo);
				
			} else {
				// 실패 => 에러페이지 띄우기
				if(at1 != null || at2 != null) {
					new File(savePath + at1.getChangeName()).delete();		// 첨부파일 삭제
					new File(savePath + at2.getChangeName()).delete();	
				}
				request.setAttribute("errorMsg", "상품 등록 실패");			//값을 담을 땐 setAttribute
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
