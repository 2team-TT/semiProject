package com.kh.product.controller;

import java.io.File;
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
	
	// 상품 이미지 관련 각종 에러를 대비한 디폴트 이미지를 보여주기 위한 스태틱 변수
	private static final String DEFAULT_IMAGE_PATH = "resources/images/";
	private static final String DEFAULT_IMAGE_NAME = "default_image.jpg";
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
		
		// 전체 상품 베스트
		ArrayList<Product> blist = new ProductService().selectProductBestOfAll();
		
		// 파일 경로와 이름을 검증
        for (Product product : blist) {
            String filePath = product.getFilePath();
            String changeName = product.getChangeName();
            
            if (filePath == null || filePath.isEmpty() || changeName == null || changeName.isEmpty()) {
                product.setFilePath(DEFAULT_IMAGE_PATH);
                product.setChangeName(DEFAULT_IMAGE_NAME);
            } else {
                File file = new File(getServletContext().getRealPath(filePath + changeName));
                if (!file.exists()) {
                    product.setFilePath(DEFAULT_IMAGE_PATH);
                    product.setChangeName(DEFAULT_IMAGE_NAME);
                }
            }
        }
        request.setAttribute("list", blist);//전체 상품 베스트
		
        // 일반 상품 베스트
		ArrayList<Product> clist = new ProductService().selectProductCommonBest();
		 // 상품 이미지 경로와 파일 검증
        for (Product product : clist) {
            String filePath = product.getFilePath();
            String changeName = product.getChangeName();
            
            if (filePath == null || filePath.isEmpty() || changeName == null || changeName.isEmpty()) {
                product.setFilePath(DEFAULT_IMAGE_PATH);
                product.setChangeName(DEFAULT_IMAGE_NAME);
            } else {
                File file = new File(getServletContext().getRealPath(filePath + changeName));
                if (!file.exists()) {
                    product.setFilePath(DEFAULT_IMAGE_PATH);
                    product.setChangeName(DEFAULT_IMAGE_NAME);
                }
            }
        }
				
		request.setAttribute("clist", clist); // 일반 상품 베스트
		
		// 리퍼 베스트
		ArrayList<Product> rlist = new ProductService().selectProductRefurbishedBest();
		
		// 상품 이미지 경로와 파일 검증
        for (Product product : rlist) {
            String filePath = product.getFilePath();
            String changeName = product.getChangeName();
            
            if (filePath == null || filePath.isEmpty() || changeName == null || changeName.isEmpty()) {
                product.setFilePath(DEFAULT_IMAGE_PATH);
                product.setChangeName(DEFAULT_IMAGE_NAME);
            } else {
                File file = new File(getServletContext().getRealPath(filePath + changeName));
                if (!file.exists()) {
                    product.setFilePath(DEFAULT_IMAGE_PATH);
                    product.setChangeName(DEFAULT_IMAGE_NAME);
                }
            }
        }
		request.setAttribute("rlist", rlist); // 리퍼 베스트
		
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
