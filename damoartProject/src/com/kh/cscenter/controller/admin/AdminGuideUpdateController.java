package com.kh.cscenter.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.controller.MyFileRenamePolicy;
import com.kh.common.model.vo.Attachment;
import com.kh.cscenter.model.service.GuideService;
import com.kh.cscenter.model.vo.Guide;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminGuideUpdateController
 */
@WebServlet("/update.gu")
public class AdminGuideUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminGuideUpdateController() {
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
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/board_upfiles/notice/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Guide g = new Guide();
			g.setGuideNo(Integer.parseInt(multiRequest.getParameter("gno")));
			g.setGuideTitle(multiRequest.getParameter("title"));
			g.setGuideContent(multiRequest.getParameter("content"));
			g.setStatus(multiRequest.getParameter("status"));
			
			Attachment at = null;
			if(multiRequest.getOriginalFileName("upfile") != null) {
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				at.setFilePath("resources/board_upfiles/guide/");
				
				if(multiRequest.getParameter("OriginFileNo") != null) {
					at.setFileNo(Integer.parseInt(multiRequest.getParameter("OriginFileNo")));
				}else {
					at.setRefBno(Integer.parseInt(multiRequest.getParameter("gno")));
				}
			}

			int result = new GuideService().updateGuide(g, at);
			int result2 = 1;
			if(multiRequest.getParameter("status").equals("Y")) {
				result2 = new GuideService().updateChangeStatus(Integer.parseInt(multiRequest.getParameter("gno")));
			}
			
			if(result > 0) {
				request.getSession().setAttribute("alert", "성공적으로 수정되었습니다.");
				response.sendRedirect(request.getContextPath() + "/adminList.gu?cpage=1");
			}else {//에러페이지
				
			}
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
