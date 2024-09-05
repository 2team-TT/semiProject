package com.kh.chatRoom.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.chatRoom.model.service.ChatService;

/**
 * Servlet implementation class SearchChatRoomController
 */
@WebServlet("/searchChatRoomCount.ch")
public class SearchChatRoomController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchChatRoomController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		int sendNo = Integer.parseInt(request.getParameter("chatUser"));
		
		int count = new ChatService().selectChatRoomCount(userNo, sendNo);
		
		if(count==0) {
			response.getWriter().print("nnnnn");
		}else {
			response.getWriter().print(count);
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
