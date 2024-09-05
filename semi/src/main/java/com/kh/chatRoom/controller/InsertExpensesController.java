package com.kh.chatRoom.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.chatRoom.model.service.ChatService;
import com.kh.chatRoom.model.vo.Expenses;
import com.kh.chatRoom.model.vo.Income;

/**
 * Servlet implementation class InsertExpensesController
 */
@WebServlet("/insertexpenses.hh")
public class InsertExpensesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertExpensesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String cate = request.getParameter("category");
		String date = request.getParameter("date");
		int amount = Integer.parseInt(request.getParameter("amount"));
		String des = request.getParameter("des");
		
//		System.out.println(userNo);
//		System.out.println(cate);
//		System.out.println(date);
//		System.out.println(amount);
//		System.out.println(des);
		
		Expenses ex = new Expenses();
		ex.setCategory(cate);
		ex.setOutDes(des);
		ex.setOutDate(date);
		ex.setUserNo(userNo);
		ex.setOutAmount(amount);
		
		int result = new ChatService().insertExpenses(ex);
		
		
		HttpSession session = request.getSession();
		
		if(result>0) {
			session.setAttribute("alertMsg", "정상적으로 등록되었습니다.");
		}else {
			
			session.setAttribute("alertMsg", "등록에 실패했습니다.");
		}
		
		response.sendRedirect(request.getContextPath()+"/household.hh?userNo="+userNo);
		
		
		
		
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
