package com.kh.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.product.model.service.ProductService;
import com.kh.product.model.vo.Product;

/**
 * Servlet implementation class ProductMain
 */
@WebServlet("/producutMain.me")
public class ProductMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductMain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Product> blist = new ProductService().selectProductBestOfAll(); // 전체 상품 베스트
		request.setAttribute("list", blist);//전체 상품 베스트
		
		ArrayList<Product> clist = new ProductService().selectProductCommonBest(); // 일반 상품 베스트
		request.setAttribute("clist", clist);
		
		ArrayList<Product> rlist = new ProductService().selectProductRefurbishedBest(); // 리퍼 베스트
		request.setAttribute("rlist", rlist);
		request.getRequestDispatcher("views/product/productMain.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
