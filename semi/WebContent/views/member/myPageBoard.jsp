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
	PageInfo lPi = (PageInfo)request.getAttribute("likesPi");
	// 좋아요 한 글 페이징 바
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	// 게시글 번호, 태그이름(카테고리명), 게시글제목, 유저아이디, 조회수, 댓글수, 작성일
	ArrayList<Reply> rList = (ArrayList<Reply>)request.getAttribute("rList");
	// 댓글 번호, 게시글 번호, 댓글 작성자, 댓글 내용, 좋아요 수, 작성일, 태그이름(카테고리명), 게시글작성자, 유저닉, 유저아이디
	ArrayList<Board> lList = (ArrayList<Board>)request.getAttribute("lList");
	// 글 번호, 글 제목, 글 작성자, 조회수, 작성일, 태그이름(카테고리명), 유저닉, 유저 아이디
	// 내 게시글 페이징 변수
	int currentBoardPage= pi.getCurrentPage();
	int boardStartPage = pi.getStartPage();
	int boardEndPage = pi.getEndPage();
	int boardMaxPage = pi.getMaxPage();
	
	// 내 댓글 페이징 변수
	int replyCurrentPage= rPi.getCurrentPage();
	int replyStartPage = rPi.getStartPage();
	int replyEndPage = rPi.getEndPage();
	int replyMaxPage = rPi.getMaxPage();
	
	// 좋아요 한 글 패이징 변수
	int likesCurrentPage = lPi.getCurrentPage();
	int likesStartPage = lPi.getStartPage();
	int likesEndPage = lPi.getEndPage();
	int likesMaxPage = lPi.getMaxPage();
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
                                 <th>글제목</th>
                                 <th>조회수</th>
                                 <th>댓글수</th>
                                 <th>작성일</th>
                             </tr>
                         </thead>
                         <tbody>
                         	<% if(list.isEmpty()) { %>
                         		<!-- 게시글 존재하지 않을경우 -->
                         		<tr>
			                    	<td colspan="7">작성하신 게시글이 없습니다.</td>
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
                     <div align="center">
                     <%if(boardMaxPage !=0) { %>
			           	<% if(currentBoardPage !=1){ %>
			           		<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cBoardPage=<%= currentBoardPage-1 %>'">&lt;</button>
					  	<%} %>
					 		<%for(int p = boardStartPage; p<= boardEndPage ; p++){ %>
			            		<%if(p==currentBoardPage) {%>
			            			<button class="page-btn btn btn-outline-secondary" disabled><%= p %></button>
			            		<%}else{ %>
			            			<button class="page-btn btn btn-outline-secondary" onclick="location.href='<%=contextPath%>/myPageBoard.me?cBoardPage=<%= p %>'"><%= p %></button>
			            		<%} %>
			         	  	<%} %>
			            		<% if(currentBoardPage != boardMaxPage){ %>
			            			<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cBoardPage=<%= currentBoardPage+1 %>'">&gt</button>
								<%} %>
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
                                <th>댓글 내용</th>
                                <th>게시글 작성자</th>
                                <th>좋아요 수</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<% if(rList.isEmpty()) { %>
                         		<!-- 내 댓글 존재하지 않을경우 -->
                         		<tr>
			                    	<td colspan="6">작성하신 댓글이 없습니다.</td>
			                	</tr>
			                <%}else { %>
			                	<!-- 내 댓글 존재 할 경우 -->
			                	<% for(Reply r : rList) { 
			                		String userId = r.getuserId();
			                		String maskedUserId;
			                		if(userId.length() <= 4){
			                			maskedUserId = userId.charAt(0) + "***" + userId.charAt(userId.length() - 1);
			                		}else {
			                			maskedUserId = userId.substring(0, 2) + "*".repeat(userId.length() - 4) + userId.substring((userId.length()-2), (userId.length()));
			                		}
			                	%>
			                		
		                            <tr>
		                                <td><input type="checkbox" class="rowCheckbox"></td>
		                                <td><%= r.getTagName() %></td>
		                                <td><%=r.getReplyContent() %></td>
		                                <%if(r.getUserNick() != null) { %>
		                                	<td><%= r.getUserNick() %></td>
		                                <%}else { %>
		                                	<td><%= maskedUserId %></td>
		                                <%} %>
		                                <td><%= r.getLikesCount() %></td>
		                                <td><%= r.getCreateDate() %></td>
		                            </tr>
		                        <%} %>
		                    <%} %>
                            
                        </tbody>
                    </table>
                    <div align="center">
                    <% if(replyMaxPage !=0){ %>
                    	<% if(replyCurrentPage != 1) {%>
                        	<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cReplyPage=<%= replyCurrentPage-1 %>'">&lt;</button>
                    	<%} %>
                    
                    
                    	<%for(int p = replyStartPage; p<=replyEndPage; p++){ %>
                    		<%if( p == replyCurrentPage){ %>
                        		<button disabled class="page-btn btn btn-outline-secondary"><%= p %></button>
                     	    <%} else{ %>
                       	 		<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cReplyPage=<%= p %>'"><%= p %></button>
                      	  <%} %>
                   		<%} %>
                    		<% if(replyCurrentPage != replyMaxPage) { %>
                       	 		<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cReplyPage=<%= replyCurrentPage+1 %>'">&gt</button>
                    		<%} %>
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
                <p class="common--title">좋아요 한 글</p>

                 <!-- 좋아요 글 안쪽 테이블 -->
                 <div class="table--margin">
                    
                    <table class="mytable table table-striped">
                        <thead>
                            <tr>
                                <th><input type="checkbox" class="selectAll"></th>
                                <th>카테고리</th>
                                <th>글 제목</th>
                                <th>게시글 작성자</th>
                                <th>조회수</th>
                                <th>작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<% if(lList.isEmpty()) { %>
                         		<!-- 좋아요 한 글 존재하지 않을경우 -->
                         		<tr>
			                    	<td colspan="6">좋아요 한 글이 없습니다.</td>
			                	</tr>
			                <%}else { %>
			                	<% for(Board lb : lList) {
			                		String userId = lb.getUserId();
			                		String maskedUserId;
			                		if(userId.length() <= 4){
			                			maskedUserId = userId.charAt(0) + "***" + userId.charAt(userId.length() - 1);
			                		}else {
			                			maskedUserId = userId.substring(0, 2) + "*".repeat(userId.length() - 4) + userId.substring((userId.length()-2), (userId.length()));
			                		}
			                	%>
			                	<!-- 좋아요 한 글이 존재 할 경우 -->
                            	<tr>
	                                <td><input type="checkbox" class="rowCheckbox"></td>
	                                <td><%= lb.getTagName() %></td>
	                                <td><%= lb.getBoardTitle() %></td>
	                                <%if(lb.getUserNick() != null) { %>
		                                	<td><%= lb.getUserNick() %></td>
		                                <%}else { %>
		                                	<td><%= maskedUserId %></td>
		                                <%} %>
	                                <td><%= lb.getViewCount() %></td>
	                                <td><%= lb.getCreateDate() %></td>
                            	</tr>
                            	<%} %>
                            <%} %>
                            
                        </tbody>
                    </table>
                    <div align="center">
                    <% if(likesMaxPage !=0){ %>
                    	<% if(likesCurrentPage != 1) {%>
                        	<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cLikesPage=<%= likesCurrentPage-1 %>'">&lt;</button>
                    	<%} %>
                    
                    
                    	<%for(int p = likesStartPage; p<=likesEndPage; p++){ %>
                    		<%if( p == replyCurrentPage){ %>
                        		<button disabled class="page-btn btn btn-outline-secondary"><%= p %></button>
                     	    <%} else{ %>
                       	 		<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cLikesPage=<%= p %>'"><%= p %></button>
                      	  <%} %>
                   		<%} %>
                    		<% if(likesCurrentPage != likesMaxPage) { %>
                       	 		<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cLikesPage=<%= likesCurrentPage+1 %>'">&gt</button>
                    		<%} %>
                    <%} %>    
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