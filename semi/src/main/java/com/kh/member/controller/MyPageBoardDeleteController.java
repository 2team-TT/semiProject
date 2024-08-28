package com.kh.member.controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;

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
		try {
            // 클라이언트에서 전송된 파라미터 확인
            String[] bnos = request.getParameterValues("bnos");
            String currentPageStr = request.getParameter("currentPage");

            // 파라미터 값 로그 출력
            System.out.println("bnos: " + Arrays.toString(bnos));
            System.out.println("currentPage: " + currentPageStr);

            // 파라미터 유효성 검사
            if (bnos == null || currentPageStr == null) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                return;
            }

            int currentPage = Integer.parseInt(currentPageStr);
            BoardService boardService = new BoardService();
            int result = 0;

            for (String bno : bnos) {
                result += boardService.deleteMyBoard(Integer.parseInt(bno));
            }

            int remainingPosts = boardService.selectMyBoardListCount(currentPage);

            if (remainingPosts == 0 && currentPage > 1) {
                currentPage--;
            }

            response.sendRedirect(request.getContextPath() + "/myPageBoard.me?cBoardPage=" + currentPage);
        } catch (NumberFormatException e) {
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
