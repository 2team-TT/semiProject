package com.kh.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;

/**
 * Servlet implementation class SeachBoardListController
 */
@WebServlet("/searchBoardList.bo")
public class SeachBoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeachBoardListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String search = request.getParameter("search");
		
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
		
		listCount = new BoardService().selectsearchBoardCount(search);
		
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		pageLimit = 10;
		boardLimit = 10;
//		System.out.println(currentPage);
		maxPage = (int)Math.ceil(((double)listCount/boardLimit));
		
		startPage= (currentPage-1)/pageLimit *pageLimit+1;

		endPage = startPage+pageLimit-1;

		if(endPage>maxPage) {
			endPage= maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage,pageLimit, boardLimit, maxPage, startPage, endPage);

		request.setAttribute("Pi", pi);
		
		ArrayList<Board> list = new BoardService().selectsearchBoard(pi, search);
		
	
		
		
		
		
		request.setAttribute("list", list);
	
		request.getRequestDispatcher("views/board/searchBoardList.jsp").forward(request, response);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
