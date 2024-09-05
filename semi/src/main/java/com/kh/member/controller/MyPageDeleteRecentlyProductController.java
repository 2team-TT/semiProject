package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.User;
import com.kh.product.model.service.ProductService;

/**
 * Servlet implementation class MyPageDeleteRecentlyProductController
 */
@WebServlet("/deleteRecentProduct.me")
public class MyPageDeleteRecentlyProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageDeleteRecentlyProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// jsp파일에서 onclick 이벤트를 통해 가져온 pno
		int pNo = Integer.parseInt(request.getParameter("pno"));
		// 세션에서 userNo 가져오기
		HttpSession session = request.getSession();
		User loginUser = (User)session.getAttribute("u");
		int userNo = loginUser.getUserNo();
		
		// 파라미터 값인 선택한 최근본 상품 하나 삭제 할시 들어오는 pNo
		System.out.println("pno : " + pNo);
		
		ProductService productService = new ProductService();
        int result = productService.deleteRecentlyViewedProduct(userNo, pNo);

        if (result > 0) {
            response.setStatus(HttpServletResponse.SC_OK);
            response.getWriter().write("상품 삭제 성공");
        } else {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("상품 삭제 실패");
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
