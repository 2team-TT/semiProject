<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 공통 섹션</title>
<!-- css reset -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<!-- jQuery min but not slim -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- google font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

<!-- 구글 아이콘 폰트 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!-- 마이페이지 css -->
<link rel="stylesheet" href="./resources/css/myPage.css">
<!-- 마이페이지 js -->
<script src="./resources/js/myPage.js" defer></script>
</head>
<body>
<%@ include file="../common/menubar.jsp" %>   
<!-- 마이페이지 네비 섹션 -->
<section class="myinfo first">
    <div class="info--group">
        <div class="info--list">
            <a href="<%= contextPath %>/myPageInfo.me">기본 정보</a>
        </div>
        <div class="info--list">
            <a href="<%= contextPath %>/myPageBoard.me">게시글 정보</a>
        </div>
        <div class="info--list">
            <a href="">찜하기/최근 본 상품</a>
        </div>
        <div class="info--list">
            <a href="">결제 정보</a>
        </div>
        <div class="info--list">
            <a href="">고객 센터</a>
        </div>
    </div>
</section>
</body>
</html>