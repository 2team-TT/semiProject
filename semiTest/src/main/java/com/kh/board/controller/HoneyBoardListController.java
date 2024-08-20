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
 * Servlet implementation class HoneyBoardListController
 */
@WebServlet("/honeyBoardList.bo")
public class HoneyBoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HoneyBoardListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int listCount;
		int currentPage;
		int pageLimit;
		int boardLimit;
		
		int maxPage;
		int startPage;
		int endPage;
		
		listCount = new BoardService().selectFreeBoardListCount();
		
		currentPage = Integer.parseInt(request.getParameter("cpage"));
		pageLimit = 10;
		boardLimit = 10;
		System.out.println(currentPage);
		maxPage = (int)Math.ceil(((double)listCount/boardLimit));
		
		startPage= (currentPage-1)/pageLimit *pageLimit+1;

		endPage = startPage+pageLimit-1;

		if(endPage>maxPage) {
			endPage= maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage,pageLimit, boardLimit, maxPage, startPage, endPage);

		request.setAttribute("honeyPi", pi);
		
		ArrayList<Board> list = new BoardService().selectHoneyBoardList(pi);
		
		ArrayList<Board> blist = new BoardService().selectBestHoneyBoardList(pi);
		
		request.setAttribute("hList", list);
		request.setAttribute("bhList", blist);
		request.getRequestDispatcher("views/board/honeyBoardList.jsp").forward(request, response);
		
		System.out.println(list);
		System.out.println(blist);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
