package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.UserService;
import com.kh.member.model.vo.User;

/**
 * Servlet implementation class PwdSearchUserController
 */
@WebServlet("/pwdSearch.mo")
public class PwdSearchUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwdSearchUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		request.setCharacterEncoding("utf-8");
		
		User u = new User();
		u.setUserId(request.getParameter("id"));
		u.setUserName(request.getParameter("name"));
		u.setPhone(request.getParameter("phone"));
		
		String pwd = new UserService().pwdSearch(u);
		
		char[] arr = new char[pwd.length()];
		int length = pwd.length()-3;
		
		for(int i =0 ; i<length;i++) {
			
			arr[i] = pwd.charAt(i);
		}
		
		for(int i =length ; i<pwd.length();i++) {
			
			arr[i] = '*';
		}
		
//		System.out.println(arr);
		String userPwd="";
		for(int i = 0; i<pwd.length();i++) {
			userPwd +=arr[i];
		}
		
		response.getWriter().print(userPwd);
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
