package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.kh.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class FileNameController
 */
@WebServlet("/fileName.bo")
public class FileNameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileNameController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		
		String str = "";
		
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
			
			
			String filePath = request.getSession().getServletContext().getRealPath("/resources/bImg/");
			System.out.println(filePath);
			MultipartRequest mq = new MultipartRequest(request, filePath, maxSize, "utf-8", new MyFileRenamePolicy());
				
			
				
			if(mq.getOriginalFileName("uploadFile") != null) {
				System.out.println(mq.getOriginalFileName("uploadFile"));
				System.out.println(mq.getFilesystemName("uploadFile"));
				
				str="/resources/bImg/"+mq.getFilesystemName("uploadFile");
			}
			System.out.println(str);
			
			
			
			response.setContentType("text/html; charset=utf-8");
			
			response.getWriter().print(str);
		
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
