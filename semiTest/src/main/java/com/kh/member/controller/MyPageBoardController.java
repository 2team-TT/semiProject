package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;

/**
 * Servlet implementation class MyPageBoardController
 */
@WebServlet("/myPageBoard.me")
public class MyPageBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 페이징 처리		
		int listCount; // 총 게시글 수
		int currentPage; // 현재 페이지
		int pageLimit; // 페이징 바 최대 갯수
		int boardLimit; // 한 페이지 내에 보여질 개시글 최대 갯수
		
		int maxPage; // 가장 마지막 페이지
		int startPage; // 페이징바 시작
		int endPage; // 페이징바 마지막
		
		listCount = new BoardService().SelectBoardList(); // 기본 보드 정보 가져오기
		
		currentPage = Integer.parseInt(request.getParameter("cpage")); // 현재 페이지는 myPageBoard에서 cpage에서 가져올 것
		pageLimit = 10; // 페이징 바 최대 갯수는 10개
		boardLimit = 5; // 보
		
		
		
		
		request.getRequestDispatcher("views/member/myPageBoard.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
