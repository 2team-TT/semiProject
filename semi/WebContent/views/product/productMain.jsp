<%@page import="com.kh.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<Product> blist = (ArrayList<Product>)request.getAttribute("list");
	ArrayList<Product> clist = (ArrayList<Product>)request.getAttribute("clist");
	ArrayList<Product> rlist = (ArrayList<Product>)request.getAttribute("rlist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@ include file="../common/productCommon.jsp" %>

	<!-- 추가 네비바 섹션 공통바에서 빠질 가능성 있음 -->
    <section class="sub--category">
        <div class="sub--category-group">
            <div class="sub--category-list">
                <a href="javascript:void(0)">침대</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">가구</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">의자</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">책상</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">욕실</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">부엌</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">인테리어</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">식재료</a>
            </div>
            <div class="sub--category-list">
                <a href="javascript:void(0)">간편식</a>
            </div>
        </div>
    </section>

    <br><br>

    <section class="best-products best-products--all">
        <div class="best-products__header">
            <h2 class="best-products__title">전체 베스트</h2>
            <a href="#" class="best-products__more-button">더보기</a>
        </div>
        <div class="row">
        	<!-- 리스트가 비어있지 않을 경우 -->
        	
        	<% if(blist != null && !blist.isEmpty()) { %>
        		<%	for(Product b : blist) { %>
		            <div class="col-sm-6 col-md-4 product-item">
		                <div class="product-item__image">
		                    <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/169124279430912861.png?gif=1&w=850&h=850&c=c&webp=1" alt="상품 이미지">
		                    <!-- 찜하기 아이콘 추가 -->
		                    <div class="product-item__icon">
		                        <i class="material-icons">favorite_border</i> <!-- 찜하지 않은 상태 -->
		                    </div>
		                </div>
		                <h3 class="product-item__name"><%= b.getpName()  %></h3>
		                <p class="product-item__price">₩<%= b.getPrice() %></p>
		                <p class="product-item__rating">평점 : <%= b.getRating() %></p>
		            </div>
            	<%} %>
            <%} else{ %>
            <p> 전체 상품 베스트 준비중입니다.</p>
            <%} %>
        </div>
    </section>
    
    <section class="best-products best-products--general">
        <div class="best-products__header">
            <h2 class="best-products__title">일반 베스트</h2>    
            <a href="#" class="best-products__more-button">더보기</a>
        </div>
        <div class="row">
        <%if(clist != null && !clist.isEmpty()){ %>
        	<% for(Product c : clist) { %>
            <div class="col-sm-6 col-md-4 product-item">
                <div class="product-item__image">
                    <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/169124279430912861.png?gif=1&w=850&h=850&c=c&webp=1" alt="상품 이미지">
                    <!-- 찜하기 아이콘 추가 -->
                    <div class="product-item__icon">
                        <i class="material-icons">favorite_border</i> <!-- 찜하지 않은 상태 -->
                    </div>
                </div>
                <h3 class="product-item__name"><%= c.getpName() %></h3>
                <p class="product-item__price">₩<%= c.getPrice() %></p>
                <p class="product-item__rating">평점 : <%= c.getRating() %></p>
            </div>
            <%} %>
        <%} else{ %>
        		<p> 일반 상품 베스트 준비중입니다. </p>
        <%} %>
        </div>
    </section>
    
    <section class="best-products best-products--refurbished">
        <div class="best-products__header">
            <h2 class="best-products__title">리퍼 베스트</h2>    
            <a href="#" class="best-products__more-button">더보기</a>
        </div>
        <div class="row">
        <%if(rlist != null && !rlist.isEmpty()){ %>
        	<% for(Product r : rlist) { %>
            <div class="col-sm-6 col-md-4 product-item">
                <div class="product-item__image">
                    <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/169124279430912861.png?gif=1&w=850&h=850&c=c&webp=1" alt="상품 이미지">
                    <!-- 찜하기 아이콘 추가 -->
                    <div class="product-item__icon">
                        <i class="material-icons">favorite_border</i> <!-- 찜하지 않은 상태 -->
                    </div>
                </div>
                <h3 class="product-item__name"><%= r.getpName() %></h3>
                <p class="product-item__price">₩<%= r.getPrice() %></p>
                <p class="product-item__rating">평점 : <%= r.getRating() %></p>
            </div>
               <%} %>
        <%} else{ %>
        		<p> 리퍼 상품 베스트 준비중입니다. </p>
        <%} %>
        </div>
    </section>

</body>
</html>