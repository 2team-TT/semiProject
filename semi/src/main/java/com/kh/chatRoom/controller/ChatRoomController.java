package com.kh.chatRoom.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.chatRoom.model.service.ChatService;
import com.kh.chatRoom.model.vo.ChatRoom;

/**
 * Servlet implementation class ChatRoomController
 */
@WebServlet("/chatroom.ch")
public class ChatRoomController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChatRoomController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		ArrayList<ChatRoom> list = new ChatService().selectChatRoomList(userNo);
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("views/chatRoom/chatRoom.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
