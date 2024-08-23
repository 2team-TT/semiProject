package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.User;

/**
 * Servlet implementation class MyPageInfoController
 */
@WebServlet("/myPageInfo.me")
public class MyPageInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User loginUser = (User) session.getAttribute("u");

		if (loginUser == null) {
		    // 로그인되지 않은 상태이므로 로그인 페이지로 리다이렉트하거나, 에러 메시지를 보여주기
			session.setAttribute("alertMsg", "로그인 세션이 만료되었습니다!"); //alertMsg는 menubar.jsp를 include해서 추가 작성 필요 없음
		    response.sendRedirect(request.getContextPath()); // 메인 페이지로 리다이렉트
		    return; // 이후 코드를 실행하지 않도록 리턴
		}
		
		request.getRequestDispatcher("views/member/myPageInfo.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
