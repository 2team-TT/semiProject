package com.test.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicLong;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.devtools.DevTools;
import org.openqa.selenium.devtools.v127.network.Network;
import org.openqa.selenium.devtools.v127.network.model.RequestId;
import org.openqa.selenium.devtools.v127.network.model.Response;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class CrawlingTest2_02
 */
@WebServlet("/ct2_02_5.do")
public class CrawlingTest2_02_5 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrawlingTest2_02_5() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 	response.setContentType("application/json; charset=utf-8");
    	    
    	    // JSON 데이터를 문자열 형식으로 준비
        	String jsonInputString = "{"
        		    + "\"dmScr\": {"
        		    +     "\"curScrId\": \"tbu/app/twat/twata/twataa/TWAT52005M\","
        		    +     "\"befScrId\": \"\""
        		    + "},"
        		    + "\"dmSearchParam\": {"
        		    +     "\"page\": \"1\","
        		    +     "\"onlineYn\": \"\","
        		    +     "\"searchTerm\": \"\","
        		    +     "\"tabId\": \"1\","
        		    +     "\"orderBy\": \"date\","
        		    +     "\"bkjrLftmCycCd\": \"\","
        		    +     "\"daesang\": \"\","
        		    +     "\"endYn\": \"N\","
        		    +     "\"favoriteKeyword\": \"Y\","
        		    +     "\"gungu\": \"\","
        		    +     "\"jjim\": \"\","
        		    +     "\"period\": \"\","
        		    +     "\"region\": \"\","
        		    +     "\"sido\": \"\","
        		    +     "\"subject\": \"\""
        		    + "}"
        		+ "}";
        	
        	// POST 요청 전송을 위한 설정
            URL url = new URL("https://www.bokjiro.go.kr/ssis-tbu/TWAT52005M/twataa/wlfareInfo/selectWlfareInfo.do");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
            conn.setDoOutput(true);

            try(OutputStream os = conn.getOutputStream()) {
                byte[] input = jsonInputString.getBytes("utf-8");
                os.write(input, 0, input.length);
            }

            // 응답 받기
            StringBuilder responseStrBuilder = new StringBuilder();
            try(BufferedReader br = new BufferedReader(
                    new InputStreamReader(conn.getInputStream(), "utf-8"))) {
                String line;
                while ((line = br.readLine()) != null) {
                    responseStrBuilder.append(line.trim());
                }
            }

            // JSON 파싱
            JsonObject jsonResponse = new Gson().fromJson(responseStrBuilder.toString(), JsonObject.class);
            JsonArray welfareInfo = jsonResponse.getAsJsonArray("dsServiceList0");
            
            // JSON으로 응답
            PrintWriter out = response.getWriter();
            out.print(welfareInfo.toString());
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
