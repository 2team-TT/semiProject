
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      <!-- css 초기화 -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css"/> 

      <!-- 메타리얼 아이ㅇ콘 -->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
  
  
  
  
      <!-- 제이쿼리 -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

      <link rel="stylesheet" href="./resources/css/sucessLogin.css">
</head>
<body>
    
	<%@include file="../common/menubar.jsp" %>


    <section class="sucess_login_content first">
        
        <div class="sucess_login_area">

            <div class="sucess_login_text">
                <p>
                    회원가입 되었습니다. <br> <br>
                    저희 발자취 일원이 되신 것을 환영합니다. <br> <br>
                    로그인 해주세요.
                    
                </p>
            </div>
            
            <button data-toggle="modal" data-target="#loginModal">로그인</button>

        </div>

    </section>



</body>
</html>