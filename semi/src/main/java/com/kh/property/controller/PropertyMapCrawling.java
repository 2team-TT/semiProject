package com.kh.property.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/**
 * Servlet implementation class PropertyMapCrawling
 */
@WebServlet("/map.prop")
public class PropertyMapCrawling extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyMapCrawling() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
//		String url = "https://map.naver.com/";
//		Document doc = Jsoup.connect(url).get();
		
		
		
		
		response.setContentType("text/html; charset=utf-8");
		
		String url = "https://new.land.naver.com/";
		
		String buildingType = request.getParameter("buildingType");
		
		switch (buildingType) {
			case "OR-TR": {
				// 원룸 투룸
				url += "complexes";
				break;
			}
			case "APT": {
				// 아파트
				url += "houses";
				break;
			}
			case "HS-V": {
				// 주택/빌라
				url += "rooms";
				break;
			}
			case "OP": {
				// 오피스텔
				url += "rooms";
				break;
			}
			default : {
				// 설정되지 않는 값
				break;
			}
		}
		
		System.out.println(url);
		Connection connection = Jsoup.connect(url);
		
//		Elements elems = 
		
		
		Document doc = connection.get();
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().print(doc.text());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
