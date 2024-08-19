<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 내 정보</title>
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
<link rel="stylesheet" href="../../resources/css/myPage.css">
<!-- 마이페이지 js -->
<script src="../../resources/js/myPage.js" defer></script>
</head>
<body>
    <!-- 회원 아이디, 등급, 패스워드 변경, 프로필 변경 섹션 -->
    <section class="myinfo first">
        <div class="info--group">
            
            <div class="info--base">
                <p class="info--id">testId</p>
                <p class="info--grade">GOLD</p>
                <p class="info--welcome">Welcome to your personalized page.</p>
            </div>
            <div class="info--btn">
                <button class="btn1">비밀번호 변경</button>
                <button class="btn2">내 정보 변경</button>
            </div>
        </div>
    </section>
    <!-- 컨텐츠 내용이 들어갈 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">내 정보</p>
                <div class="myinfo--baseinfo">
                    <div class="baseinfo--group">
                        <p class="info--annotation">Name</p>
                        <p class="info--content">김이름</p>
                    </div>
                    <div class="baseinfo--group">
                        <p class="info--annotation">Email</p>
                        <p class="info--content">userEmail@example.com</p>
                    </div>
                    <div class="baseinfo--group">
                        <p class="info--annotation">Phone</p>
                        <p class="info--content">010-4xxx-xxx3</p>
                    </div>
                    <div class="baseinfo--group">
                        <p class="info--annotation">Address</p>
                        <p class="info--content">XX도 XX시 XX구 XX동 XXX XXX XXXXX XXX동 XXXX호</p>
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