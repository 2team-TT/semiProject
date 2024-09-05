<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품</title>
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
<!-- swiper recently version -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- GSAP Core -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"></script>
<!-- ScrollToPlugin -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/ScrollToPlugin.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- 구글 아이콘 폰트 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- 상품 페이지 css -->
<link rel="stylesheet" href="./resources/css/product.css">
<!-- 상품 페이지 js -->
<script src="./resources/js/product.js" defer></script>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %> 
    <%
    String loginUserId = (u != null) ? u.getUserId() : "";
	%>

	<input type="hidden" id="loginUserId" value="<%= loginUserId %>">

	
    <!-- 상품 섹션 공통 네비바 -->
    <section class="first product">
        <div class="product--group">
            <div class="group--list">
                <a href="<%= contextPath %>/producutMain.me">상품 홈</a>
            </div>
            <div class="group--list">
                <a href="javascript:void(0)">일반상품</a>
            </div>
            <div class="group--list">
                <a href="javascript:void(0)">리퍼상품</a>
            </div>
            <div class="group--list">
                <a href="javascript:void(0)">공동구매</a>
            </div>
            <div class="group--list">
                <a href="javascript:void(0)">초특가할인</a>
            </div>
        </div>        
    </section>




</body>
</html>