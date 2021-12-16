package com.kh.cscenter.controller.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.kh.common.model.vo.Attachment;
import com.kh.cscenter.model.service.NoticeService;
import com.kh.cscenter.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminNoticeInsertController
 */
@WebServlet("/insert.no")
public class AdminNoticeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 10 * 1024 * 1024;
			String savePath = request.getSession().getServletContext().getRealPath("/resources/board_upfiles/notice/");
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			Notice n = new Notice();
			n.setNoticeWriter(multiRequest.getParameter("adminNo"));
			n.setNoticeTitle(multiRequest.getParameter("title"));
			n.setNoticeContent(multiRequest.getParameter("content"));
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			for(int i=1; i<=3; i++) {
				String key = "upfile" + i;
				
				if(multiRequest.getOriginalFileName(key) != null) {
					
					Attachment at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName(key));
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/board_upfiles/notice/");
					
					list.add(at);
				}
				
			}
			int result = new NoticeService().insertNotice(n, list);
			
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "게시글이 성공적으로 수정되었습니다.");
				response.sendRedirect(request.getContextPath() + "/adminList.no?cpage=1");
			}else { // 에러페이지
				
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
