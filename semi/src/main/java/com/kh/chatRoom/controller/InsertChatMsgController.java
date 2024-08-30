package com.kh.chatRoom.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.chatRoom.model.service.ChatService;
import com.kh.chatRoom.model.vo.ChatMsg;

/**
 * Servlet implementation class InsertChatMsgController
 */
@WebServlet("/insertMsg.ch")
public class InsertChatMsgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertChatMsgController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		request.setCharacterEncoding("utf-8");
		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int chNo = Integer.parseInt(request.getParameter("chroom"));
		String message = request.getParameter("chMsg");
		
//		System.out.println(userNo+ message+ chNo );
		
		ChatMsg cm = new ChatMsg();
		cm.setChatNo(chNo);
		cm.setMessage(message);
		cm.setSendUserNo(userNo);
		
		int result = new ChatService().insertChatMsg(cm);
		
		if(result>0) {
			response.getWriter().print("yyyyy");
		}else{
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
