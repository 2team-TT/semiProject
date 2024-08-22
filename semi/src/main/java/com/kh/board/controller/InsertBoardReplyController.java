package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Reply;

/**
 * Servlet implementation class InsertBoardReplyController
 */
@WebServlet("/insertreply.bo")
public class InsertBoardReplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoardReplyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String userNo = request.getParameter("userNo");
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		String content = request.getParameter("content");
		
		Reply r = new Reply();
		
		r.setBoardNo(boardNo);
		r.setReplyWriter(userNo);
		r.setReplyContent(content);
		
		
		
		int result = new BoardService().insertBoardReply(r);
		
		
		if(result>0) {
			
			
			response.getWriter().print("iiiii");
			
		}else {
			response.getWriter().print("ddddd");
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
