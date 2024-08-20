<%@page import="com.kh.board.model.vo.Reply"%>
<%@page import="com.kh.board.model.vo.PageInfo"%>
<%@page import="com.kh.board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	// 내 게시글 페이징 바
	PageInfo rPi = (PageInfo)request.getAttribute("replyPi");
	// 내 댓글 페이징 바
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	// 게시글 번호, 태그이름(카테고리명), 게시글제목, 유저아이디, 조회수, 댓글수, 작성일
	ArrayList<Reply> rList = (ArrayList<Reply>)request.getAttribute("rList");
	
	// 내 게시글 페이징 변수
	int currentPage= pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
	// 내 댓글 페이징 변수
	int replyCurrentPage= rPi.getCurrentPage();
	int replyStartPage = rPi.getStartPage();
	int replyEndPage = rPi.getEndPage();
	int replyMaxPage = rPi.getMaxPage();
%>
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
                         	<% if(list.isEmpty()) { %>
                         		<!-- 게시글 존재하지 않을경우 -->
                         		<tr>
			                    	<td colspan="7">조회된 게시글이 없습니다.</td>
			                	</tr>
			                <%}else { %>
			                
			                	<!-- 게시글 존재 할 경우 -->
			                	<% for(Board b : list) { %>
	                             <tr>
	                                 <td><input type="checkbox" class="rowCheckbox"></td>
	                                 <td><%= b.getBoardNo() %></td>
	                                 <td><%= b.getTagNo() %></td>
	                                 <td><%= b.getBoardTitle() %></td>
	                                 <td><%= b.getViewCount() %></td>
	                                 <td><%= b.getReplyCount() %></td>
	                                 <td><%= b.getCreateDate() %></td>
	                             </tr>
	                             <% } %>
	                         <% } %>
                             
                         </tbody>
                     </table>
                     <div>
			              <% if(currentPage !=1){ %>
			            	<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cpage=<%= currentPage-1 %>'">&lt;</button>
						  <%} %>
											
						  <%for(int p = startPage; p<= endPage ; p++){ %>
			            	<%if(p==currentPage) {%>
			            		<button class="page-btn btn btn-outline-secondary" disabled><%= p %></button>
			            	<%}else{ %>
			            		<button class="page-btn btn btn-outline-secondary" onclick="location.href='<%=contextPath%>/myPageBoard.me?cpage=<%= p %>'"><%= p %></button>
			            	<%} %>
			         	  <%} %>
			            
			            <% if(currentPage != maxPage){ %>
			            <button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cpage=<%= currentPage+1 %>'">&gt</button>
						<%} %>
			
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
                                <th>좋아요 수</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<% if(list.isEmpty()) { %>
                         		<!-- 게시글 존재하지 않을경우 -->
                         		<tr>
			                    	<td colspan="6">조회된 게시글이 없습니다.</td>
			                	</tr>
			                <%}else { %>
			                	<!-- 게시글 존재 할 경우 -->
			                	<% for(Reply r : rList) { %>
		                            <tr>
		                                <td><input type="checkbox" class="rowCheckbox"></td>
		                                <td><%= r.getTagName() %></td>
		                                <td><%=r.getReplyContent() %></td>
		                                <%if(r.getUserNick() != null) { %>
		                                	<td><%= r.getUserNick() %></td>
		                                <%}else { %>
		                                	<td><%= r.getUser_id() %></td>
		                                <%} %>
		                                <td><%= r.getLikesCount() %></td>
		                                <td><%= r.getCreateDate() %></td>
		                            </tr>
		                        <%} %>
		                    <%} %>
                            
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