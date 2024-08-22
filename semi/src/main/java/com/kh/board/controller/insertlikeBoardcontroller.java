package com.kh.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.board.model.service.BoardService;

/**
 * Servlet implementation class insertlikeBoardcontroller
 */
@WebServlet("/insertLikes.bo")
public class insertlikeBoardcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertlikeBoardcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		String num = request.getParameter("num");
		
		int count = new BoardService().selectLikesBoard(userNo,boardNo);
		
		int result =0;
		System.out.println("count" + count);
		
		if(num.equals("1")) {
			
			if(count==0) {
				result = new BoardService().insertLikesBoard(userNo,boardNo);
				System.out.println("커밋" + result);
				if(result>0) {
					
					response.getWriter().print("iiiii");
				}
				
				
			}else if(count>0){
				result = new BoardService().deleteLikesBoard(userNo, boardNo);
				System.out.println("d" + result);
				if(result>0) {
					
					response.getWriter().print("ddddd");
				}
				
			}
			
			
		}else {
			
			if(count>0) {
				response.getWriter().print("like");
			}
			
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
