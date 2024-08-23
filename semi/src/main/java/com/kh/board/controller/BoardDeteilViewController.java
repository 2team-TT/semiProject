package com.kh.board.controller;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.Used;

/**
 * Servlet implementation class BoardDeteilViewController
 */
@WebServlet("/boardDeteil.bo")
public class BoardDeteilViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDeteilViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		int boardNo = Integer.parseInt(request.getParameter("bno"));
		
		
		int result = new BoardService().boardCountUp(boardNo);
		
		if(result>0) {
			Board b = new BoardService().selectBoardDeteil(boardNo);

			if(b.getTagNo().equals("140")) {
				
				Attachment at = new BoardService().selectBoardAttachment(b.getBoardNo());
				Used ud = new BoardService().selectBoardUsed(b.getBoardNo());
				
				request.setAttribute("b", b);
				request.setAttribute("at", at);
				request.setAttribute("ud", ud);
				request.getRequestDispatcher("views/board/boardUsedDetail.jsp").forward(request, response);
			}else {
				
				request.setAttribute("b", b);
				
				request.getRequestDispatcher("views/board/boardDeteilView.jsp").forward(request, response);
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
