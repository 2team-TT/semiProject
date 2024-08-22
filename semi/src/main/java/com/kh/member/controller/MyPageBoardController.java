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
		int currentBoardPage = 1; // 현재 내 게시글 페이지
		int currentReplyPage = 1; // 현재 내 댓글 페이지
		int currentLikesPage = 1; //현재 좋아요 한 글 페이지
		// 각 테이블의 현재 페이지를 1로 초기화
		
		int pageLimit; // 페이징 바 최대 갯수
		int boardLimit; // 한 페이지 내에 보여질 게시글 최대 갯수
		int boardCount; // 총 게시글 수, 내 게시글에 사용될 변수
		int replyCount; // 총 댓글 수, 내 댓글에 사용될 변수
		int likesCount; // 내가 좋아요 한 글 수
		
		HttpSession session = request.getSession();
		User loginUser = (User) session.getAttribute("u");

		if (loginUser == null) {
		    // 로그인되지 않은 상태이므로 로그인 페이지로 리다이렉트하거나, 에러 메시지를 보여주기
			session.setAttribute("alertMsg", "로그인 세션이 만료되었습니다!");
		    response.sendRedirect(request.getContextPath()); // 메인 페이지로 리다이렉트
		    return; // 이후 코드를 실행하지 않도록 리턴
		}

		int userNo = loginUser.getUserNo(); // 세션으로부터 유저 넘버 가져오기

		
		int boardMaxPage; // 내 게시글 가장 마지막 페이지
		int replyMaxPage; // 내댓글 가장 마지막 페이지
		int likesMaxPage; // 좋아요 한 글 마지막 페이지
		int boardStartPage; // 내 게시글 페이징바 시작
		int replyStartPage; // 내 댓글 페이징바 시작
		int likesStartPage; // 좋아요 한 글 페이징바 시작
		int boardEndPage; // 내 게시글 페이징바 마지막
		int replyEndPage; // 내 댓글 페이징바 마지막
		int likesEndPage; // 좋아요 한 글 페이징바 마지막
		
		boardCount = new BoardService().selectMyBoardListCount(userNo); // 나의 총 게시글을 가져올 service
		replyCount = new BoardService().selectMyReplyCount(userNo); // 나의 총 댓글을 가져올 service
		likesCount = new BoardService().selectMyLikesCount(userNo); // 나의 총 좋아요 한 글 가져올 service
		try { //현재 페이지를 받아올 때 아래 세 테이블 페이지 정보 중 null값이 올 경우 에러가 발생됨 이에 따른 예외 처리
		    currentBoardPage = request.getParameter("cBoardPage") != null ? Integer.parseInt(request.getParameter("cBoardPage")) : 1; // 현재 나의 게시글 페이지
		    currentReplyPage = request.getParameter("cReplyPage") != null ? Integer.parseInt(request.getParameter("cReplyPage")) : 1; // 현재 나의 댓글 페이지
		    currentLikesPage = request.getParameter("cLikesPage") != null ? Integer.parseInt(request.getParameter("cLikesPage")) : 1; // 현재 좋아요 한 글 페이지
		} catch (NumberFormatException e) {
		    // 로그 기록 또는 기본값 설정
		    currentBoardPage = 1;
		    currentReplyPage = 1;
		    currentLikesPage = 1;
		}

		pageLimit = 10; // 페이징 바 최대 갯수는 10개
		boardLimit = 5; // 한 페이지에 보여줄 최대 글 갯수는 5개로
		
		boardMaxPage = (int)Math.ceil((double)boardCount / boardLimit); // 맥스 페이지 만드는 공식
		replyMaxPage = (int)Math.ceil((double)replyCount / boardLimit); // 내 댓글 맥스 페이지
		likesMaxPage = (int)Math.ceil((double)likesCount / boardLimit); // 좋아요 한 글 맥스 페이지
		boardStartPage = (currentBoardPage-1) / pageLimit * pageLimit + 1 ; // 내 게시글 시작 페이지
		replyStartPage = (currentReplyPage-1) / pageLimit * pageLimit + 1 ; // 내 댓글 시작 페이지
		likesStartPage = (currentLikesPage-1) / pageLimit * pageLimit + 1 ; // 좋아요 한 글 시작 페이지

		boardEndPage = boardStartPage + pageLimit -1; // 내 게시글 끝 페이지
		replyEndPage = replyStartPage + pageLimit -1; // 내 댓글 끝 페이지
		likesEndPage = likesStartPage + pageLimit -1; // 좋아요 한 글 끝 페이지
		
		if(boardEndPage>boardMaxPage) { // boardMaxPage가 boardEndPage보다 작을 경우의 예외 처리
			boardEndPage = boardMaxPage;
		}
		if(replyEndPage > replyMaxPage) { // replyMaxPage가 replyEndPage보다 작을 경우 예외 처리
			replyEndPage = replyMaxPage;
		}
		if(likesEndPage > likesMaxPage) { // likesMaxPage가 likesEndPage보다 작을 경우 예외 처리
			likesEndPage = likesMaxPage;
		}
		
		PageInfo pi = new PageInfo(boardCount, currentBoardPage,pageLimit, boardLimit, boardMaxPage, boardStartPage, boardEndPage); // 내 게시글 페이징
		PageInfo replyPi = new PageInfo(replyCount, currentReplyPage,pageLimit, boardLimit, replyMaxPage, replyStartPage, replyEndPage); // 내 댓글 페이징
		PageInfo likesPi = new PageInfo(likesCount, currentLikesPage, pageLimit, boardLimit,likesMaxPage, likesStartPage, likesEndPage); // 좋아요 한 글 페이징
		
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
