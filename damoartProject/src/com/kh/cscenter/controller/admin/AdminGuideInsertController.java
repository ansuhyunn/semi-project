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
 * Servlet implementation class AdminGuideInsertController
 */
@WebServlet("/insert.gu")
public class AdminGuideInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminGuideInsertController() {
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
			String savePath = request.getSession().getServletContext().getRealPath("/resources/board_upfiles/guide/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			String adminNo = multiRequest.getParameter("adminNo");
			String title = multiRequest.getParameter("title");
			String status = multiRequest.getParameter("status");
			String content = multiRequest.getParameter("content");
			//content = content.replace("\r\n", "<br>"); // 줄바꿈 치환
			
			Guide g = new Guide();
			
			g.setGuideWriter(adminNo);
			g.setGuideTitle(title);
			g.setStatus(status);
			g.setGuideContent(content);
			
			Attachment at = null;
			if(multiRequest.getOriginalFileName("upfile") != null) {
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				at.setFilePath("resources/board_upfiles/guide/");
			}
			
			int result1 = new GuideService().insertGuide(g, at);
			int result2 = 1;
			if(status.equals("Y")) {
				result2 = new GuideService().insertChangeStatus();
			}
			
			if(result1 > 0 && result2 > 0) {
				request.getSession().setAttribute("alertMsg", "게시글이 성공적으로 등록되었습니다.");
				response.sendRedirect(request.getContextPath() + "/adminList.gu?cpage=1");
			}// 에러페이지
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
