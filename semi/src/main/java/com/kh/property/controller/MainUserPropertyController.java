package com.kh.property.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.property.model.service.PropertyService;
import com.kh.property.model.vo.Property;

/**
 * Servlet implementation class MainUserPropertyController
 */
@WebServlet("/mainUserProperty.po")
public class MainUserPropertyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainUserPropertyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String address = request.getParameter("adderess");
		
		
		
		String[] arr = address.split(" ");
		
//		System.out.println(arr[1]);
		
		String str = arr[0]+" "+arr[1];
		
		ArrayList<Property> list = new PropertyService().mainselectUserProperty(str);
		
		response.setContentType("aplication/json; charset=utf-8");
		new Gson().toJson(list,response.getWriter());
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
