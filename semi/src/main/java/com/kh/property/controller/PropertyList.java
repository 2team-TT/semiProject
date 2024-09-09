package com.kh.property.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.common.model.vo.PageInfo;
import com.kh.property.model.service.PropertyService;
import com.kh.property.model.vo.Property;

/**
 * Servlet implementation class PropertyList
 */
@WebServlet("/PropertyList.prop")
public class PropertyList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int listCount;		// 총 부동산 매물
		int currentPage;	// 현재 부동산 매물 페이지
		int pageLimit;		// 페이징바의 페이지 최대 개수(개단위)(ex) 5개씩 =  1 2 3 4 5, 6 7 8 9 10)
		int detailLimit;	// 한 페이지 내에 보여질 매물 개수(개단위)
		int maxPage;		// 가장 마지막 페이지(총페이지수)
		int startPage;		// 페이징바 시작수
		int endPage;		// 페이징바 끝수
		
		listCount = new PropertyService().selectPropertyListCount();
		currentPage = Integer.parseInt(request.getParameter("cPage")); 
		detailLimit = Integer.parseInt(request.getParameter("limit"));
//		pageLimit = 10;
		pageLimit = 50;
		
		maxPage = (int)Math.ceil((double)listCount / detailLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		// 마지막 페이지가 최대페이지보다 높을 때의 무결성 검사
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount
								 , currentPage
								 , pageLimit
								 , detailLimit
								 , maxPage
								 , startPage
								 , endPage);
		
		
		ArrayList<Property> ppList = new PropertyService().selectPropertyList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("ppList", ppList);
		
		response.setContentType("application/json; charset=utf-8");
		new Gson().toJson(ppList, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
