<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 기본 정보</title>
</head>
<body>
	<%@ include file="../common/myPageCommon.jsp" %>
    
    <!-- 컨텐츠 내용이 들어갈 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">내 정보</p>
                <div class="myinfo--baseinfo">
                    <div class="baseinfo--group">
                        <p class="info--annotation">Name</p>
                        <p class="info--content"><%= u.getUserName() %></p>
                    </div>
                    <div class="baseinfo--group">
                        <p class="info--annotation">Email</p>
                        <% if(u.getEmail() != null) { %>
                        	<p class="info--content"><%= u.getEmail() %></p>
                        <% }else { %>
                        	<p> 해당 정보가 존재하지 않습니다. </p>
                        <% } %>
                    </div>
                    <div class="baseinfo--group">
                        <p class="info--annotation">Phone</p>                      
                        <p class="info--content"><%= u.getPhone() %></p>                        
                    </div>
                    <div class="baseinfo--group">
                        <p class="info--annotation">Address</p>
                        <% if(u.getAddress() != null) { %>
                        	<p class="info--content addressInfo"><%= u.getAddress() %></p>
                        <%} else{ %>
                        	<p> 해당 정보가 존재하지 않습니다. </p>
                        <%} %>
                    </div>
                </div>    
            </div>
            
        </div>
    </section>
    <!-- 알림 기능 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">알림 기능 설정</p>
                <div class="myinfo--alarm">
                    <label for="alarm--post" class="alarm--list">게시글 알림</label>
                    <input type="checkbox" id="alarm--post"> <br><br>
                    <label for="alarm--comment" class="alarm--list">댓글 알림</label>
                    <input type="checkbox" id="alarm--comment"> <br><br>
                    <label for="alarm--todolist" class="alarm--list">해야 할 일 알림</label>
                    <input type="checkbox" id="alarm--todolist"><br><br>
                    <label for="alarm--delivery" class="alarm--list">배송 상태 알림</label>
                    <input type="checkbox" id="alarm--delivery"><br><br>
                </div>
            </div>
        </div>
    </section>
    <!-- 결제 정보 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">결제 정보 설정</p>
                <p class="info--annotation">고객님의 안전한 결제 정보 관리를 위하여 결제 정보 설정을 위해서 비밀번호를 다시 입력해 주셔야 합니다.</p>
                
                <button class="payment--btn">결제정보 변경하기</button>
            </div>
        </div>


    </section>


</body>
</html>