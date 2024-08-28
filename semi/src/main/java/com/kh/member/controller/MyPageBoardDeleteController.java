package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;

/**
 * Servlet implementation class MyPageBoardDeleteController
 */
@WebServlet("/deleteMyBoard.me")
public class MyPageBoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageBoardDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 클라이언트에서 선택된 게시글 bno 배열을 받아옴
        String[] bnos = request.getParameterValues("bnos");

        if (bnos != null) { // 선택된 게시글 bno가 존재할 경우
            BoardService boardService = new BoardService();
            int currentPage = Integer.parseInt(request.getParameter("currentPage")); // 현재 페이지 번호를 받아옴
            int result = 0; // 삭제된 게시글 수를 누적할 변수

            // 각각의 bno에 대해 삭제 작업을 수행
            for (String bno : bnos) {
                result += boardService.deleteMyBoard(Integer.parseInt(bno)); // 삭제된 게시글 수 누적
            }

            // 현재 페이지에 남아 있는 게시글 수를 조회
            int remainingPosts = boardService.selectMyBoardListCount(currentPage);
            
            // 만약 현재 페이지에 게시글이 남아 있지 않고, 현재 페이지가 1보다 크다면 (즉, 첫 페이지가 아니라면)
            if (remainingPosts == 0 && currentPage > 1) {
                currentPage--; // 이전 페이지로 이동 (페이지 번호를 1 줄임)
            }

            // 최종적으로 현재 페이지 또는 이전 페이지로 리다이렉트
            response.sendRedirect(request.getContextPath() + "/myPageBoard.me?cBoardPage=" + currentPage);
        } else {
            // 선택된 게시글 bno가 없을 경우 잘못된 요청으로 처리
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
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
