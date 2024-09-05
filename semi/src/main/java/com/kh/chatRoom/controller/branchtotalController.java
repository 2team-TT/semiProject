package com.kh.chatRoom.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.chatRoom.model.service.ChatService;
import com.kh.chatRoom.model.vo.TotalAmount;

/**
 * Servlet implementation class branchtotalController
 */
@WebServlet("/branch.hh")
public class branchtotalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public branchtotalController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		int branch = Integer.parseInt(request.getParameter("branch"))-1;
		
		String year = request.getParameter("year");
		
		String month1 = String.valueOf(1+3*(branch));
		String month2 = String.valueOf(2+3*(branch));
		String month3 = String.valueOf(3+3*(branch));
		
		String date1 = year + "-" + month1;
		String date2 = year + "-" + month2;
		String date3 = year + "-" + month3;
		
		
//		System.out.println(userNo);
//		System.out.println(branch);
//		System.out.println(year);
//		System.out.println(month1);
//		System.out.println(month2);
//		System.out.println(month3);
//		System.out.println(date1);
//		System.out.println(date2);
//		System.out.println(date3);
		
		TotalAmount ta1 = new ChatService().selectMonthtotal(userNo , date1);
		TotalAmount ta2 = new ChatService().selectMonthtotal(userNo , date2);
		TotalAmount ta3 = new ChatService().selectMonthtotal(userNo , date3);
		
		
		ArrayList<TotalAmount> list = new ArrayList<TotalAmount>();
		
		list.add(ta1);
		list.add(ta2);
		list.add(ta3);
		
//		System.out.println(list);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(list, response.getWriter());
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
