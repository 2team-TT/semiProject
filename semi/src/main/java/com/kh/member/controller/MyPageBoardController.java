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
		int likesCount; // 내가 좋아요 한 글 수
		
		HttpSession session = request.getSession();
		int userNo = ((User)session.getAttribute("u")).getUserNo(); //세션으로 불러온 유저 넘버
		
		int maxPage; // 가장 마지막 페이지
		int replyMaxPage; // 내댓글 가장 마지막 페이지
		int likesMaxPage; // 좋아요 한 글 마지막 페이지
		int startPage; // 페이징바 시작
		int endPage; // 페이징바 마지막
		int replyEndPage; // 내 댓글 페이징바 마지막
		int likesEndPage; // 좋아요 한 글 페이징바 마지막
		
		listCount = new BoardService().selectMyBoardListCount(userNo); // 나의 총 게시글을 가져올 service
		myReplyCount = new BoardService().selectMyReplyCount(userNo); // 나의 총 댓글을 가져올 service
		likesCount = new BoardService().selectMyLikesCount(userNo); // 나의 총 좋아요 한 글 가져올 service
		currentPage = Integer.parseInt(request.getParameter("cpage")); // 현재 페이지는 myPageBoard에서 cpage에서 가져올 것
		
		pageLimit = 10; // 페이징 바 최대 갯수는 10개
		boardLimit = 5; // 한 페이지에 보여줄 최대 글 갯수는 5개로
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit); // 맥스 페이지 만드는 공식
		replyMaxPage = (int)Math.ceil((double)myReplyCount / boardLimit); // 내 댓글 맥스 페이지
		likesMaxPage = (int)Math.ceil((double)likesCount / boardLimit); // 좋아요 한 글 맥스 페이지
		startPage = (currentPage-1) / pageLimit * pageLimit + 1 ; // 시작 페이지 만드는 공식 
		
		endPage = startPage + pageLimit -1; // 끝 페이지 만드는 공식
		replyEndPage = startPage + pageLimit -1; // 내 댓글 끝 페이지 만들기 없어도 될듯?
		if(endPage>maxPage) { // maxPage가 endPage보다 작을 경우의 예외 처리
			endPage = maxPage;
		}
		if(replyEndPage > replyMaxPage) { // replyMaxPage가 replyEndPage보다 작을 경우 예외 처리
			replyEndPage = replyMaxPage;
		}
		if(endPage > likesMaxPage) { // likesMaxPage 예외 처리
			endPage = likesMaxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage,pageLimit, boardLimit, maxPage, startPage, endPage); // 내 게시글 페이징
		PageInfo replyPi = new PageInfo(myReplyCount, currentPage,pageLimit, boardLimit, replyMaxPage, startPage, replyEndPage); // 내 댓글 페이징
		PageInfo likesPi = new PageInfo(likesCount, currentPage, pageLimit, boardLimit,likesMaxPage, startPage, endPage); // 좋아요 한 글 페이징
		
		request.setAttribute("pi", pi);
		request.setAttribute("replyPi", replyPi);
		request.setAttribute("likesPi", likesPi);
		
		ArrayList<Board> list = new BoardService().selectMyBoardList(pi, userNo); //나의 게시글을 가져올 service
		ArrayList<Reply> rList = new BoardService().selectMyReplyList(replyPi, userNo);// 나의 댓글을 가져올 service
		ArrayList<Board> lList = new BoardService().selectMyLikesList(likesPi, userNo); // 좋아요 한 글을 가져올 service
		request.setAttribute("list", list);
		request.setAttribute("rList", rList);
		request.setAttribute("lList", lList);
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
