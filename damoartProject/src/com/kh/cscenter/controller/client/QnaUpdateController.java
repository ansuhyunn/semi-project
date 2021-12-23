package com.kh.cscenter.controller.client;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.common.controller.MyFileRenamePolicy;
import com.kh.common.model.vo.Attachment;
import com.kh.cscenter.model.service.QnaService;
import com.kh.cscenter.model.vo.QnA;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class QnaUpdateController
 */
@WebServlet("/update.qa")
public class QnaUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaUpdateController() {
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
			
			String savePath = request.getSession().getServletContext().getRealPath("/resources/board_upfiles/qna/");
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			QnA q = new QnA();
			q.setqNo(Integer.parseInt(multiRequest.getParameter("qno")));
			q.setqTitle(multiRequest.getParameter("title"));
			q.setqCategoryCode(multiRequest.getParameter("category"));
			q.setqContent(multiRequest.getParameter("content"));
			
			if(multiRequest.getParameter("pno") != null) {
				q.setpNo(multiRequest.getParameter("pno"));				
			}else {
				q.setpNo("0");
			}
			
			if(multiRequest.getParameter("secret") != null) {
				q.setSecret(multiRequest.getParameter("secret"));
			}else {
				q.setSecret("N");
			}
			System.out.println(q);
			Attachment at = null;
			if(multiRequest.getOriginalFileName("upfile") != null) {
				at = new Attachment();
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				at.setFilePath("resources/board_upfiles/qna/");
				
				if(multiRequest.getParameter("OriginFileNo") != null) {
					at.setFileNo(Integer.parseInt(multiRequest.getParameter("OriginFileNo")));
				}else {
					at.setRefBno(Integer.parseInt(multiRequest.getParameter("qno")));
				}
			}
			
			int result = new QnaService().updateQuestion(q, at);
			
			if(result > 0) {
				request.getSession().setAttribute("alertMsg", "성공적으로 수정되었습니다.");
				response.sendRedirect(request.getContextPath() + "/list.qa?cpage=1");
			}else { //에러페이지
				
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
