<%@page import="com.kh.product.model.vo.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Product> list = (ArrayList<Product>)request.getAttribute("list");
	// 상품명, 가격, 판매자, 별점, 상품내용, 유저번호, 찜한 날짜
	ArrayList<Product> recentlyList = (ArrayList<Product>)request.getAttribute("recentlyList");
	// 상품명, 가격, 상품 조회 날짜
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 상품</title>
</head>
<body>
	<%@ include file="../common/myPageCommon.jsp" %>
	
	<!-- 찜하기 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">찜 한 상품</p>
                <p class="info--annotation">찜한 상품은 등록일로부터 최대 1년간 저장됩니다.</p>

                <div class="wishlist--group">
                    <div>
                        <table class="mytable table table-striped" id="wishlistTable">
                            <thead>
                                <tr>
                                    <!-- 전체 선택 체크박스가 들어간 헤더 -->
                                     <th width="15"><input type="checkbox" class="selectAll"></th>
                                     <th width="500">상품명</th>
                                     <th>가격</th>
                                     <th>판매자</th>
                                     <th>별점</th>
                                     <th>찜한 날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%if(list.isEmpty()){ %>
                            	<!-- 찜한 상품이 없을 경우 -->
                            		<tr>
			                    	<td colspan="6">찜한 상품이 없습니다.</td>
			                		</tr>
			                		
			                <%}else { %>
			                	<!-- 찜한 상품이 있을 경우 -->
			                		
			                		<%int i=1; %>		                		
			                		<%for(Product p : list){ %>
		                                <tr>
		                                    <td><input type="checkbox" class="rowCheckbox"></td>
		                                    <td>
		                                        <div class="item--description">
		                                            <div class="forImage">
		                                                <img class="item--image" src="./resources/images/cat<%= i %>.jpg" alt="귀여운고양이">
		                                                <% i++; %>
		                                            </div>
		                                            <p class="item--text">
		                                            	<%= p.getpName() %> : 
		                                            	<%= p.getpContent() %>
		                                            </p>
		                                        </div>
		                                    </td>
		                                    <td><%= p.getPrice() %></td>
		                                    <td><%= p.getpSeller() %></td>
		                                    <td><%= p.getRating() %></td>
		                                    <td><%= p.getcDate() %></td>
		                                </tr>
                                	<%} %>
                                <%} %>
                                              
                            </tbody>
                        </table>
                        
                        <br><br>
                        <button class="wishlistBtn btn btn-outline-secondary btn-sm" onclick="deleteSelectedRows()">삭제</button>
                    </div>
                </div>
            </div>
            
        </div>
    </section>


    <!-- 최근 본 상품 섹션 -->
     <!-- 이미지, 상품명, 가격을 한 div로 묶을 것 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">최근 본 상품</p>
                
                <div class="rvp--group"> <!-- 최근본 상품 그룹 div -->
                <%if(recentlyList.isEmpty()) { %>
                	<!-- 최근 본 상품이 없을 경우 -->
                	최근 본 상품이 존재하지 않습니다!
                <%}else{ %>
                	<!-- 최근 본 상품이 존재 할 경우 -->
                	<%int i=1;%>
                	<%for(Product rp : recentlyList){ %>
                    <div class="rvp--item" onclick="location.href='javascript:void(0)'"> <!-- 최근본 상품 각각의 div-->
                        <div class="rvp--img"> <!-- 이미지 안에 X표시를 넣기 위한 div-->
                            <img src="./resources/images/cat<%= i %>.jpg">
                            <span class="rvp--span material-symbols-outlined">
                                close
                                </span>
                        </div>
                        <p><%= rp.getpName() %></p>
                        <p>&#8361;<%= rp.getPrice() %></p>
                        <p><%= rp.getLatelyDate() %></p>
                        <% i++; %>
                    </div>
                    <%} %>
                <%} %>
                </div>
            </div>

        </div>
    </section>
	
	
</body>
</html>