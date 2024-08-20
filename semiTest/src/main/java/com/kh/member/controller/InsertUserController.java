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
 * Servlet implementation class InsertUserController
 */
@WebServlet("/insertUser.mo")
public class InsertUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String nickName =request.getParameter("nickName");
		
		String address ="";
		if(!request.getParameter("address1").equals("")) {
			
			address = request.getParameter("address1")+request.getParameter("address3");
			
			if(!request.getParameter("address2").equals(""))
			address = request.getParameter("address1")+", "+request.getParameter("address2")+request.getParameter("address3");
		}
		
		String phone = request.getParameter("phone");
		
		String email= "";
		
		if(!request.getParameter("email1").equals("") && !request.getParameter("email2").equals("")) {
			email = request.getParameter("email1")+"@"+request.getParameter("email2");
			
		}
		
//		System.out.println(userId);
//		System.out.println(userPwd);
//		System.out.println(userName);
//		System.out.println(nickName);
//		System.out.println(address);
//		System.out.println(phone);
//		System.out.println(email);
		
		
		User u = new User(userId, userPwd, userName, userName, address, phone, email);
		
		
		int result = new UserService().insertUser(u);
		
		
		if(result==0) {
			
		}else {
			request.getRequestDispatcher("views/member/sucessLogin.jsp").forward(request, response);
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
