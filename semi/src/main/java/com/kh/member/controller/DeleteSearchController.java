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
 * Servlet implementation class DeleteSearchController
 */
@WebServlet("/delectSearch.mo")
public class DeleteSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int sNo = Integer.parseInt(request.getParameter("sNo"));
		
		
		
		int userNo =((User)request.getSession().getAttribute("u")).getUserNo();  
		
		
		int result = new UserService().deleteSearch(sNo, userNo);
		
		
		if(result>0) {
			response.getWriter().print("yyyy");
		}else {
			response.getWriter().print("nnnn");
			
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
