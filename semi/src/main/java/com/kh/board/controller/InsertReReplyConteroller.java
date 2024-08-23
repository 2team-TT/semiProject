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
 * Servlet implementation class InsertReReplyConteroller
 */
@WebServlet("/insertReReply.bo")
public class InsertReReplyConteroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReReplyConteroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.setCharacterEncoding("utf-8");
		
		int replyNo = Integer.parseInt(request.getParameter("replyNo"));
		String userNo = request.getParameter("userNo");
		String content = request.getParameter("content");
		
		Reply r = new Reply();
		
		r.setBoardNo(replyNo);
		r.setReplyWriter(userNo);
		r.setReplyContent(content);
		
		int result = new BoardService().insertReReply(r);
		
		if(result>0) {
			response.getWriter().print("iiii");
		}else {
			response.getWriter().print("ffff");
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
