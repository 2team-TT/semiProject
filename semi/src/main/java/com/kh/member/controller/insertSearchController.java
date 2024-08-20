package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.service.UserService;
import com.kh.member.model.vo.Search;
import com.kh.member.model.vo.User;

/**
 * Servlet implementation class insertSearchController
 */
@WebServlet("/search.do")
public class insertSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String search = request.getParameter("search");
		
		
		int result1 =0;
		
		
		if(request.getSession().getAttribute("u")==null) {
			
			result1 = new UserService().searchCountUp(search);
			
			if(result1==0) {
				result1 = new UserService().insertSearch(search);
	
				
			}
		}else {
			
			int userNo =((User)request.getSession().getAttribute("u")).getUserNo();
			
			
			result1 = new UserService().searchCountUp(search, userNo);
			System.out.println("첫번째 업데이트"+result1);
			if(result1==0) {
				
				result1 = new UserService().insertSearch(search, userNo);
				System.out.println("두번째 업데이트"+result1);
			}
			
			
		}
		
		
		int result2 = new UserService().AllsearchCountUp(search);
		
		
		if(result2==0) {
			result2 = new UserService().InsertAllsearch(search);
		}
		

		
		
		if(result1*result2 == 0) {
			System.out.println("실패");
		}else {
			System.out.println("성공");
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
