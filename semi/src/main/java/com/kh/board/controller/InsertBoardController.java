package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.Used;
import com.kh.common.MyFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.MultipartParser;

/**
 * Servlet implementation class InsertBoardController
 */
@WebServlet("/insertBoard.bo")
public class InsertBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
			
			String filePath = request.getSession().getServletContext().getRealPath("/resources/bImg/");
			
			MultipartRequest mq = new MultipartRequest(request, filePath , maxSize, "utf-8", new MyFileRenamePolicy());
			
			
			int userNo = Integer.parseInt(mq.getParameter("userNo"));
			
			String title = mq.getParameter("title");
			
			String tagNo = mq.getParameter("tag");
			
			String content = mq.getParameter("content");
			
			Board b = new Board();
			b.setBoardTitle(title);
			b.setTagNo(tagNo);
			b.setBoardWriter(String.valueOf(userNo));
			b.setBoardContent(content);
			
			Attachment at = null;
			
			Used ud = null;
			
			
			if(mq.getOriginalFileName("Thumbnail")!= null) {
				
				at = new Attachment();
				
				at.setOriginName(mq.getOriginalFileName("Thumbnail"));
				
				at.setNewName(mq.getFilesystemName("Thumbnail"));
				
				at.setFilePath("/resources/bImg/");
				at.setFileLevel("1");
				
				
				
			}
			
			if(tagNo.equals("140")) {
				
				ud = new Used();
				
				ud.setModelName(mq.getParameter("model"));
				ud.setPrice(Integer.parseInt(mq.getParameter("price")));
				ud.setTradingArea(mq.getParameter("trading"));
				ud.setModelStatus(mq.getParameter("status"));
				
				String[] arr = mq.getParameterValues("tradingMathod");
				if(arr != null) {
					
					ud.setTradingMethod(String.join(",", arr));
				}
				
				
			}
			
			
			int result = new BoardService().insertBoard(b,at,ud);
			
			System.out.println(result);
			
			System.out.println(b);
			System.out.println(at);
			System.out.println(ud);
			
			HttpSession session = request.getSession();
			
			if(result>0) {
				session.setAttribute("alertMsg", "정상적으로 등록되었습니다.");
				response.sendRedirect(request.getContextPath()+"/freeBoardList.bo?cpage=1");
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
