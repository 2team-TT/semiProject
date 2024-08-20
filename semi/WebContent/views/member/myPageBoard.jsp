<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 게시글 정보</title>
</head>
<body>
    <%@ include file="../common/myPageCommon.jsp" %>
    <!-- 내 게시글 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">내 게시글</p>
                <!-- 내 게시글 안쪽 테이블 -->
                 <div class="table--margin"> <!-- 테이블 컨텐츠 사이즈 조절용 div클래스 -->

                     <table class="mytable table table-striped">
                         <thead>
                             <tr>
                                 <th><input type="checkbox" class="selectAll"></th>
                                 <th>글번호</th>
                                 <th>카테고리</th>
                                 <th class="th--align--center">글제목</th>
                                 <th>조회수</th>
                                 <th>댓글수</th>
                                 <th>작성일</th>
                             </tr>
                         </thead>
                         <tbody>
                             <tr>
                                 <td><input type="checkbox" class="rowCheckbox"></td>
                                 <td>999</td>
                                 <td>상품구매리뷰</td>
                                 <td>캣타워 사줬는데 박스만 가지고 놀지만 좋아하니 만족합니다.</td>
                                 <td>123</td>
                                 <td>0</td>
                                 <td>2024-07-24</td>
                             </tr>
                             <tr>
                                 <th><input type="checkbox" class="rowCheckbox"></th>
                                 <td>787</td>
                                 <td>자유게시판</td>
                                 <td>자유게시판인데 제목이 곧 내용입니다.</td>
                                 <td>345</td>
                                 <td>0</td>
                                 <td>2024-07-21</td>
                             </tr>
                             <tr>
                                 <th><input type="checkbox" class="rowCheckbox"></th>
                                 <td>566</td>
                                 <td>자유게시판</td>
                                 <td>나랏말싸미 듕귁에 달아 문자와로 서로 사맛디 아니할세</td>
                                 <td>678</td>
                                 <td>0</td>
                                 <td>2024-07-18</td>
                             </tr>
                             <tr>
                                 <td><input type="checkbox" class="rowCheckbox"></td>
                                 <td>454</td>
                                 <td>아무게시판</td>
                                 <td>아무 게시판에는 아무 글이나 쓰면 됩니다.</td>
                                 <td>901</td>
                                 <td>0</td>
                                 <td>2024-07-15</td>
                             </tr>
                             <tr>
                                 <td><input type="checkbox" class="rowCheckbox"></td>
                                 <td>333</td>
                                 <td>상품구매리뷰</td>
                                 <td>사자마자 망가져서 세상이 무너진 기분입니다.</td>
                                 <td>234</td>
                                 <td>0</td>
                                 <td>2024-07-10</td>
                             </tr> 
                         </tbody>
                     </table>
                     <div align="center">
     
                         <button type="button" class="page-btn btn btn-outline-secondary">&lt;</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">1</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">2</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">3</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">4</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">5</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">6</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">7</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">8</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">9</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">10</button>
                         <button type="button" class="page-btn btn btn-outline-secondary">&gt</button>
                         
                     </div>
                     <div align="right">
                         <button class="btn btn-outline-secondary btn-sm">수정</button>
                         <button class="btn btn-outline-secondary btn-sm" onclick="deleteSelectedRows()">삭제</button>
                     </div>
                 </div>

            </div>
        </div>
    </section>

    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">내 댓글</p>

                <!-- 내 댓글 안쪽 테이블 -->
                <div class="table--margin">
                    
                    <table class="mytable table table-striped">
                        <thead>
                            <tr>
                                <th><input type="checkbox" class="selectAll"></th>
                                <th>카테고리</th>
                                <th class="th--align--center">댓글 내용</th>
                                <th>게시글 작성자</th>
                                <th>조회수</th>
                                <th>답글수</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" class="rowCheckbox"></td>
                                <td>상품구매리뷰</td>
                                <td>그건 님이 몰라서 하는 말임</td>
                                <td>아는만큼 보인다</td>
                                <td>123</td>
                                <td>4</td>
                                <td>2024-07-24</td>
                            </tr>
                            <tr>
                                <th><input type="checkbox" class="rowCheckbox"></th>
                                <td>자유게시판</td>
                                <td>누구 물어보신분?</td>
                                <td>TMI생성기</td>
                                <td>345</td>
                                <td>44</td>
                                <td>2024-07-21</td>
                            </tr>
                            <tr>
                                <th><input type="checkbox" class="rowCheckbox"></th>
                                <td>자유게시판</td>
                                <td>나랏말싸미 듕귁에 달아 문자와로 서로 사맛디 아니할세</td>
                                <td>고전문학좋아</td>
                                <td>678</td>
                                <td>33</td>
                                <td>2024-07-18</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" class="rowCheckbox"></td>
                                <td>아무게시판</td>
                                <td>Do you wanna build a snowman?</td>
                                <td>ANNA</td>
                                <td>121</td>
                                <td>18</td>
                                <td>2024-07-15</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" class="rowCheckbox"></td>
                                <td>상품구매리뷰</td>
                                <td>고양이가 마치 개같네요</td>
                                <td>사실개만키움</td>
                                <td>234</td>
                                <td>0</td>
                                <td>2024-07-10</td>
                            </tr> 
                        </tbody>
                    </table>
                    <div align="center">
    
                        <button type="button" class="page-btn btn btn-outline-secondary">&lt;</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">1</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">2</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">3</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">4</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">5</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">6</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">7</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">8</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">9</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">10</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">&gt</button>
                        
                    </div>
                    <div align="right">
                        <button class="btn btn-outline-secondary btn-sm">수정</button>
                        <button class="btn btn-outline-secondary btn-sm" onclick="deleteSelectedRows()">삭제</button>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">좋아요 한 글</p>

                 <!-- 좋아요 글 안쪽 테이블 -->
                 <div class="table--margin">
                    
                    <table class="mytable table table-striped">
                        <thead>
                            <tr>
                                <th><input type="checkbox" class="selectAll"></th>
                                <th>카테고리</th>
                                <th class="th--align--center">댓글 내용</th>
                                <th>게시글 작성자</th>
                                <th>조회수</th>
                                <th>비고</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" class="rowCheckbox"></td>
                                <td>상품구매리뷰</td>
                                <td>이 상품 사는 사람들은 다 호구임</td>
                                <td>호구라서샀다</td>
                                <td>565</td>
                                <td>비고란이 맞나</td>
                                <td>2024-07-24</td>
                            </tr>
                            <tr>
                                <th><input type="checkbox" class="rowCheckbox"></th>
                                <td>자유게시판</td>
                                <td>이 사이트 왜 함?</td>
                                <td>순수하게궁금함</td>
                                <td>331</td>
                                <td>내용요약이 맞나</td>
                                <td>2024-07-21</td>
                            </tr>
                            <tr>
                                <th><input type="checkbox" class="rowCheckbox"></th>
                                <td>자유게시판</td>
                                <td>사람글은 서순이 잘못어되 있도어 잘을 글만 읽는다</td>
                                <td>이해만가능하면ok</td>
                                <td>221</td>
                                <td>좋아요날짜가맞나</td>
                                <td>2024-07-18</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" class="rowCheckbox"></td>
                                <td>아무게시판</td>
                                <td>아무글이나 막 써봤음</td>
                                <td>지능부족으로이만</td>
                                <td>111</td>
                                <td>아니면빼는게맞나</td>
                                <td>2024-07-15</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" class="rowCheckbox"></td>
                                <td>상품구매리뷰</td>
                                <td>우리집 강아지 귀엽죠?</td>
                                <td>사실고양이만키움</td>
                                <td>242</td>
                                <td>나중에정하기로</td>
                                <td>2024-07-10</td>
                            </tr> 
                        </tbody>
                    </table>
                    <div align="center">
    
                        <button type="button" class="page-btn btn btn-outline-secondary">&lt;</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">1</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">2</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">3</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">4</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">5</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">6</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">7</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">8</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">9</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">10</button>
                        <button type="button" class="page-btn btn btn-outline-secondary">&gt</button>
                        
                    </div>
                    <div align="right">
                        <button class="btn btn-outline-secondary btn-sm" onclick="deleteSelectedRows()">취소</button>
                    </div>
                </div>

            </div>
        </div>
    </section>
</body>
</html>