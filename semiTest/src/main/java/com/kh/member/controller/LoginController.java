package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.kh.member.model.service.UserService;
import com.kh.member.model.vo.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.mo")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		
		
		User u  = new UserService().selectUser(userId, userPwd);
		
		HttpSession session = request.getSession();
		
		
		if(u ==null) {
			session.setAttribute("alertMsg", "로그인 실패했습니다.");
		}else{
			session.setAttribute("u", u);
		}
		
		response.sendRedirect(request.getContextPath());

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
