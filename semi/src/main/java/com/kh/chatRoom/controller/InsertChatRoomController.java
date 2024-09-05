package com.kh.chatRoom.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.chatRoom.model.service.ChatService;

/**
 * Servlet implementation class InsertChatRoomController
 */
@WebServlet("/insertChatRoom.ch")
public class InsertChatRoomController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertChatRoomController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		int sendNo = Integer.parseInt(request.getParameter("chatUser"));
		
		
//		System.out.println(userNo);
//		System.out.println(sendNo);

			
			int result = new ChatService().insertChatRoom(userNo, sendNo);
			
			if(result>0) {
			
				int count = new ChatService().selectChatRoomCount(userNo, sendNo);
				
				response.getWriter().print(count);
			}else {
				response.getWriter().print("nnnnn");
				
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
