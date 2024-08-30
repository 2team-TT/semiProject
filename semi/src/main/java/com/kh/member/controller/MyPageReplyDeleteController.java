package com.kh.member.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;

/**
 * Servlet implementation class MyPageReplyDeleteController
 */
@WebServlet("/deleteMyReply.me")
public class MyPageReplyDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageReplyDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String[] rnos = request.getParameterValues("nos");
			String currentPageStr = request.getParameter("currentPage");
			
			// 파라미터 값 로그 출력
            System.out.println("rnos: " + Arrays.toString(rnos));
            System.out.println("currentPage: " + currentPageStr);
			
			
			if(rnos == null || currentPageStr == null) {
				response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
				return;
			}
			
			int currentPage = Integer.parseInt(currentPageStr);
			BoardService boardService = new BoardService();
			int result = 0;
			
			for(String rno : rnos) {
				result += boardService.deleteMyReply(Integer.parseInt(rno));
			}
			
			int remainingPosts = boardService.selectMyReplyCount(currentPage);
			
			if(remainingPosts == 0 && currentPage > 1) {
				currentPage --;
			}
			
			response.sendRedirect(request.getContextPath() + "/myPageBoard.me?cReplyPage=" + currentPage);
		} catch(NumberFormatException e) {
			e.printStackTrace(); // 로그로 예외 출력
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		} catch (Exception e) {
            e.printStackTrace(); // 기타 예외 처리
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
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
