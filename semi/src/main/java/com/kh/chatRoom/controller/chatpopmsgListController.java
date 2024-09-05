package com.kh.chatRoom.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.chatRoom.model.service.ChatService;
import com.kh.chatRoom.model.vo.ChatMsg;

/**
 * Servlet implementation class chatpopmsgListController
 */
@WebServlet("/chatpopmsgList.ch")
public class chatpopmsgListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chatpopmsgListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int chNo = Integer.parseInt(request.getParameter("ch"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String sendUser=request.getParameter("sendUser");
//		System.out.println(chNo);
//		System.out.println(userNo);
		
		
		request.setAttribute("chNo", chNo);
		request.setAttribute("userNo", userNo);
		request.setAttribute("sendUser", sendUser);
		
		request.getRequestDispatcher("views/chatRoom/chatpopup.jsp").forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
