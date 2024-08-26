package com.kh.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.board.model.vo.PageInfo;
import com.kh.member.model.vo.User;
import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.ProductInquiry;

/**
 * Servlet implementation class MyPageCustomerServiceControll
 */
@WebServlet("/myPageCS.me")
public class MyPageCustomerServiceControll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageCustomerServiceControll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int currentQuestionPage; //현재 내 문의글 페이지
		int pageLimit; //페이징바 최대 갯수
		int boardLimit; // 한 페이지 내 보여질 문의글 최대 갯수
		int questionCount; // 나의 전체 문의내역 수
		
		HttpSession session = request.getSession();
		User loginUser = (User) session.getAttribute("u");

		if (loginUser == null) {
		    // 로그인되지 않은 상태이므로 로그인 페이지로 리다이렉트하거나, 에러 메시지를 보여주기
			session.setAttribute("alertMsg", "로그인 세션이 만료되었습니다!"); //alertMsg는 menubar.jsp를 include해서 추가 작성 필요 없음
		    response.sendRedirect(request.getContextPath()); // 메인 페이지로 리다이렉트
		    return; // 이후 코드를 실행하지 않도록 리턴
		}

		int userNo = loginUser.getUserNo(); // 세션으로부터 유저 넘버 가져오기
		int questionMaxPage; // 문의글 가장 마지막 페이지
		int questionStartPage; // 문의글 페이징 바 시작
		int questionEndPage; // 문의글 페이징 바 마지막
		
		questionCount = new ProductService().selectMyProductQeustionCount(userNo); //내 문의 내역을 가져올 service
		
		try { // null값을 받아올 경우의 예외처리
		currentQuestionPage = request.getParameter("cQuestionPage") != null ? Integer.parseInt(request.getParameter("cQuestionPage")) : 1;
		// 현재 나의 문의 내역 페이지 null일 경우 1로 받도록
		} catch (NumberFormatException e) {
			currentQuestionPage = 1; // 1로 받아줌 페이지 내에 단 하나의 테이블 값을 가져오는거라 굳이 할 필요 없어보이지만 안정성을 한 코드
		}
		
		pageLimit = 10; // 페이징바 최대 갯수는 10개로 설정
		boardLimit = 5; // 보여질 문의글 최대 갯수는 5개로 설정
		questionMaxPage = (int)Math.ceil((double)questionCount / boardLimit); // 문의글 맥스 페이지
		questionStartPage = (currentQuestionPage-1) / pageLimit * pageLimit + 1 ; // 내 문의글 시작 페이지
		questionEndPage = questionStartPage + pageLimit -1; // 내 문의 글 끝 페이지
		
		if(questionEndPage > questionMaxPage) {
			questionEndPage = questionMaxPage;
		}
		
		PageInfo qPi = new PageInfo(questionCount, currentQuestionPage,pageLimit, boardLimit, questionMaxPage, questionStartPage, questionEndPage);
		request.setAttribute("qPi", qPi);
		
		ArrayList<ProductInquiry> qList = new ProductService().selectMyProductQuestionList(qPi, userNo);
		request.setAttribute("qList", qList);
		
		request.getRequestDispatcher("views/member/myPageCS.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
