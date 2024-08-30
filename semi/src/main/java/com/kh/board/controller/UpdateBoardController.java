package com.kh.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.Used;
import com.kh.common.model.vo.Tag;

/**
 * Servlet implementation class UpdateBoardController
 */
@WebServlet("/updateBoardForm.bo")
public class UpdateBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int boardNo = Integer.parseInt(request.getParameter("bno"));
		
		
		Board b = new BoardService().selectBoardDeteil(boardNo);
		
		
		Attachment at = new BoardService().selectBoardAttachment(boardNo);
		
		Used ud = new BoardService().selectBoardUsed(boardNo);
		ArrayList<Tag> list = new BoardService().selectBoardTagList();
		
		
		request.setAttribute("tagList", list);
		
		request.setAttribute("b", b);
		request.setAttribute("at", at);
		request.setAttribute("ud", ud);
		System.out.println(ud);
		request.getRequestDispatcher("views/board/updateBoardForm.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
