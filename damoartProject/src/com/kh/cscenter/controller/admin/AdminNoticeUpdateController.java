package com.kh.cscenter.controller.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.controller.MyFileRenamePolicy;
import com.kh.common.model.vo.Attachment;
import com.kh.cscenter.model.service.NoticeService;
import com.kh.cscenter.model.vo.Notice;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class AdminNoticeUpdateController
 */
@WebServlet("/update.no")
public class AdminNoticeUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminNoticeUpdateController() {
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
			n.setNoticeNo(Integer.parseInt(multiRequest.getParameter("nno")));
			n.setNoticeTitle(multiRequest.getParameter("title"));
			n.setNoticeContent(multiRequest.getParameter("content"));
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			for(int i=1; i<=3; i++) {
				
		
				String ofn = "OriginFileNo" + i;
				String uf = "upfile" + i;
				
				if(multiRequest.getOriginalFileName(uf) != null) {
					Attachment at = new Attachment();
					at.setOriginName(multiRequest.getOriginalFileName(uf));
					at.setChangeName(multiRequest.getFilesystemName(uf));
					at.setFilePath("resources/board_upfiles/notice/");
					
					if(multiRequest.getParameter(ofn) != null) {
						at.setFileNo(Integer.parseInt(multiRequest.getParameter(ofn)));
					}else {
						at.setRefBno(Integer.parseInt(multiRequest.getParameter("nno")));
					}

					list.add(at);
				}

			}

			int result = new NoticeService().updateNotice(n, list);
			
			if(result > 0) { //??????
				request.getSession().setAttribute("alertMsg", "???????????? ??????????????? ?????????????????????.");
				response.sendRedirect(request.getContextPath() + "/adminDetail.no?nno=" + Integer.parseInt(multiRequest.getParameter("nno")));
			}else { // ???????????????
				
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
