package com.kh.welFare.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class welFareControllerTest
 */
@WebServlet("/controller.wf")
public class welFareController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public welFareController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("application/json; charset=utf-8");
    	
    	// 배열로 담을 수 있는 모든 파라미터를 한 개의 스트링으로 변환(,로 구분)
    	String period = "";
    	String[] periodValues = request.getParameterValues("period");
    	if(periodValues != null) {
    		period = String.join(",", period);
    	}
    	String daesang = "";
    	String[] daesangValues = request.getParameterValues("daesang");
    	if(daesangValues != null) {
    		daesang = String.join(",", daesangValues);
    	}
    	String subject = "";
    	String[] subjectValues = request.getParameterValues("subject");
    	if(subjectValues != null) {
    		subject = String.join(",", subjectValues);
    	}
    	// 배열이 아닌 파라미터들
    	String region = (request.getParameter("region") != null | "null".equals(request.getParameter("region")) ? request.getParameter("region") : "");
    	String age = (request.getParameter("age") != null ? request.getParameter("age") : ""); 
    	String tabId = (request.getParameter("tabId") != null ? request.getParameter("tabId") : ""); 
    	
        // JSON 데이터를 문자열 형식으로 준비
        String jsonInputString = "{"
            + "\"dmScr\": {"
            +     "\"curScrId\": \"tbu/app/twat/twata/twataa/TWAT52005M\","
            +     "\"befScrId\": \"\""
            + "},"
            + "\"dmSearchParam\": {"
            +     "\"age\": \"" + age + "\","
            +     "\"page\": \"1\","
            +     "\"onlineYn\": \"\","
            +     "\"searchTerm\": \"\","
            +     "\"tabId\": \"" + tabId + "\","
            +     "\"orderBy\": \"date\","
            +     "\"bkjrLftmCycCd\": \"\","
            +     "\"daesang\": \"" + daesang + "\","
            +     "\"endYn\": \"N\","
            +     "\"favoriteKeyword\": \"Y\","
            +     "\"gungu\": \"\","
            +     "\"jjim\": \"\","
            +     "\"period\": \"" + period + "\","
            +     "\"region\": \"" + region + "\","
            +     "\"sido\": \"\","
            +     "\"subject\": \"" + subject + "\""
            + "}"
        + "}";
        
        // 데이터 요청 및 응답 받을 수 있는 URL로 이동
        URL url = new URL("https://www.bokjiro.go.kr/ssis-tbu/TWAT52005M/twataa/wlfareInfo/selectWlfareInfo.do");
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        conn.setDoOutput(true);

        try(OutputStream os = conn.getOutputStream()) {
            byte[] input = jsonInputString.getBytes("utf-8");
            os.write(input, 0, input.length);
        }

        StringBuilder responseStrBuilder = new StringBuilder();
        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(conn.getInputStream(), "utf-8"))) {
            String line;
            while ((line = br.readLine()) != null) {
                responseStrBuilder.append(line.trim());
            }
        }
        
        // 기본값 중앙부처인 상태에서 요청 후 응답 데이터 받기
        String dept = "1";
        if(!tabId.equals("")) {
        	dept = tabId;
        }
        JsonObject jsonResponse = new Gson().fromJson(responseStrBuilder.toString(), JsonObject.class);
        
        PrintWriter out = response.getWriter();
        if (jsonResponse != null 
        		&& (jsonResponse.has("dsServiceList0") 		 // 전체데이터
        				| jsonResponse.has("dsServiceList1") // 중앙부처
        				| jsonResponse.has("dsServiceList2") // 지자체
        				| jsonResponse.has("dsServiceList3") // 민간
        		)
        	) {
            JsonArray welfareInfo = jsonResponse.getAsJsonArray("dsServiceList" + dept);
            out.print(welfareInfo.toString());
        } else {
            out.print("[]");  // 빈 배열 출력
            System.out.println("데이터가 존재하지 않거나 찾을 수 없습니다.");
        }
        out.flush();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
