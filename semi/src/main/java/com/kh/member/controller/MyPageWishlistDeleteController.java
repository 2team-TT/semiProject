package com.kh.member.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.User;
import com.kh.product.model.service.ProductService;

/**
 * Servlet implementation class MyPageWishlistDeleteController
 */
@WebServlet("/deleteMyWishlist.me")
public class MyPageWishlistDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageWishlistDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] pnos = request.getParameterValues("nos");
		
		// 세션에서 userNo 가져오기
		HttpSession session = request.getSession();
		User loginUser = (User)session.getAttribute("u");
		int userNo = loginUser.getUserNo();
		
		
		// 파라미터 값인 선택한 찜한 상품 리스트 출력
		System.out.println("pnos : " + Arrays.toString(pnos));
		
		// 파라미터 유효성 검사
        if (pnos == null || pnos.length == 0) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().write("삭제할 항목을 선택하지 않았습니다.");
            return;
        }
        
        int result = 0; // 삭제 성공 개수

        try {
            // 서비스 객체 생성
            ProductService productService = new ProductService();

            // 각 pno에 대해 삭제 작업 수행
            for (String pno : pnos) {
                result += productService.deleteMywishlistProduct(userNo, Integer.parseInt(pno));
            }

            // 결과에 따른 응답 처리
            if (result > 0) {
                response.setStatus(HttpServletResponse.SC_OK);
                response.getWriter().write("삭제가 완료되었습니다. (" + result + "개 삭제됨)");
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("삭제 중 오류가 발생했습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("서버 오류가 발생했습니다.");
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
