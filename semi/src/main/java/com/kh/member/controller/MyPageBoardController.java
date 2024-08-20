package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;
import com.kh.board.model.vo.Reply;
import com.kh.member.model.vo.User;

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
		//int userNo = Integer.parseInt(request.getSession().getAttribute(getServletName()));
				
		// 페이징 처리		((User)request.getSession().getAttribute("u")).getUserNo
		int listCount; // 총 게시글 수, 내 게시글에 사용될 변수
		int currentPage; // 현재 페이지
		int pageLimit; // 페이징 바 최대 갯수
		int boardLimit; // 한 페이지 내에 보여질 개시글 최대 갯수
		int myReplyCount; // 총 댓글 수, 내 댓글에 사용될 변수
		
		HttpSession session = request.getSession();
		int userNo = ((User)session.getAttribute("u")).getUserNo(); //세션으로 불러온 유저 넘버
		
		int maxPage; // 가장 마지막 페이지
		int startPage; // 페이징바 시작
		int endPage; // 페이징바 마지막
		
		listCount = new BoardService().selectMyBoardListCount(userNo); // 나의 총 게시글을 가져올 service
		myReplyCount = new BoardService().selectMyReplyCount(userNo); // 나의 총 댓글을 가져올 service
		currentPage = Integer.parseInt(request.getParameter("cpage")); // 현재 페이지는 myPageBoard에서 cpage에서 가져올 것
		
		pageLimit = 10; // 페이징 바 최대 갯수는 10개
		boardLimit = 5; // 한 페이지에 보여줄 최대 글 갯수는 5개로
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit); // 맥스 페이지 만드는 공식
		
		startPage = (currentPage-1) / pageLimit * pageLimit + 1 ; // 시작 페이지 만드는 공식 
		
		endPage = startPage + pageLimit -1; // 끝 페이지 만드는 공식
		
		if(endPage>maxPage) { // maxPage가 endPage보다 작을 경우의 예외 처리
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage,pageLimit, boardLimit, maxPage, startPage, endPage); // 내 게시글 페이징
		PageInfo replyPi = new PageInfo(myReplyCount, currentPage,pageLimit, boardLimit, maxPage, startPage, endPage); // 내 댓글 페이징
		
		request.setAttribute("pi", pi);
		request.setAttribute("replyPi", replyPi);
		ArrayList<Board> list = new BoardService().selectMyBoardList(pi, userNo); //나의 게시글을 가져올 service
		ArrayList<Reply> rList = new BoardService().selectMyReplyList(replyPi, userNo);// 나의 댓글을 가져올 service
		
		request.setAttribute("list", list);
		request.setAttribute("rList", rList);
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
