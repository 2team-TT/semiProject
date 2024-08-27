<%@page import="com.kh.board.model.vo.Reply"%>
<%@page import="com.kh.board.model.vo.PageInfo"%>
<%@page import="com.kh.board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	PageInfo rPi = (PageInfo)request.getAttribute("replyPi");
	PageInfo lPi = (PageInfo)request.getAttribute("likesPi");
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	ArrayList<Reply> rList = (ArrayList<Reply>)request.getAttribute("rList");
	ArrayList<Board> lList = (ArrayList<Board>)request.getAttribute("lList");

	int currentBoardPage= pi.getCurrentPage();
	int boardStartPage = pi.getStartPage();
	int boardEndPage = pi.getEndPage();
	int boardMaxPage = pi.getMaxPage();

	int replyCurrentPage= rPi.getCurrentPage();
	int replyStartPage = rPi.getStartPage();
	int replyEndPage = rPi.getEndPage();
	int replyMaxPage = rPi.getMaxPage();

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
<script>
    var contextPath = '<%= request.getContextPath() %>';
    
</script>



</head>
<body>
    <%@ include file="../common/myPageCommon.jsp" %>

    <!-- 내 게시글 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">내 게시글</p>
                <div class="table--margin">
                    <div id="boardTable">
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
                                    <tr>
                                        <td colspan="7">작성하신 게시글이 없습니다.</td>
                                    </tr>
                                <%}else { %>
                                    <% for(Board b : list) { %>
                                    <tr class="clickable-row" data-href="<%= request.getContextPath() %>/boardDeteil.bo?bno=<%= b.getBoardNo() %>" >

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
                                    <button class="page-btn btn btn-outline-secondary" onclick="loadBoardPage('<%= currentBoardPage-1 %>')">&lt;</button>
                                <%} %>
                                <%for(int p = boardStartPage; p<= boardEndPage ; p++){ %>
                                    <%if(p==currentBoardPage) {%>
                                        <button class="page-btn btn btn-outline-secondary" disabled><%= p %></button>
                                    <%}else{ %>
                                        <button class="page-btn btn btn-outline-secondary" onclick="loadBoardPage('<%= p %>')"><%= p %></button>
                                    <%} %>
                                <%} %>
                                <% if(currentBoardPage != boardMaxPage){ %>
                                    <button class="page-btn btn btn-outline-secondary" onclick="loadBoardPage('<%= currentBoardPage+1 %>')">&gt</button>
                                <%} %>
                            <%} %>
                        </div>
                    </div>
                    <div align="right">
                        <a class="btn btn-outline-secondary btn-sm" onclick="deleteSelectedRows()">삭제</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 내 댓글 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">내 댓글</p>
                <div class="table--margin">
                    <div id="replyTable">
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
                                    <tr>
                                        <td colspan="6">작성하신 댓글이 없습니다.</td>
                                    </tr>
                                <%}else { %>
                                    <% for(Reply r : rList) { 
                                        String userId = r.getuserId();
                                        String maskedUserId;
                                        if(userId.length() <= 4){
                                            maskedUserId = userId.charAt(0) + "***" + userId.charAt(userId.length() - 1);
                                        }else {
                                            maskedUserId = userId.substring(0, 2) + "*".repeat(userId.length() - 4) + userId.substring((userId.length()-2), (userId.length()));
                                        }
                                    %>
                                    <tr class="clickable-row" data-href="<%= request.getContextPath() %>/boardDeteil.bo?bno=<%= r.getBoardNo() %>">
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
                                    <button class="page-btn btn btn-outline-secondary" onclick="loadReplyPage('<%= replyCurrentPage-1 %>')">&lt;</button>
                                <%} %>
                                <%for(int p = replyStartPage; p<=replyEndPage; p++){ %>
                                    <%if( p == replyCurrentPage){ %>
                                        <button disabled class="page-btn btn btn-outline-secondary"><%= p %></button>
                                    <%} else{ %>
                                        <button class="page-btn btn btn-outline-secondary" onclick="loadReplyPage('<%= p %>')"><%= p %></button>
                                    <%} %>
                                <%} %>
                                <% if(replyCurrentPage != replyMaxPage) { %>
                                    <button class="page-btn btn btn-outline-secondary" onclick="loadReplyPage('<%= replyCurrentPage+1 %>')">&gt</button>
                                <%} %>
                            <%} %>
                        </div>
                    </div>
                    <div align="right">
                        <button class="btn btn-outline-secondary btn-sm" onclick="deleteSelectedRows()">삭제</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 좋아요 한 글 섹션 -->
    <section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">좋아요 한 글</p>
                <div class="table--margin">
                    <div id="likesTable">
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
                                    <tr class="clickable-row" data-href="<%= request.getContextPath() %>/boardDeteil.bo?bno=<%= lb.getBoardNo() %>" >
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
                                    <button class="page-btn btn btn-outline-secondary" onclick="loadLikesPage('<%= likesCurrentPage-1 %>')">&lt;</button>
                                <%} %>
                                <%for(int p = likesStartPage; p<=likesEndPage; p++){ %>
                                    <%if( p == likesCurrentPage){ %>
                                        <button disabled class="page-btn btn btn-outline-secondary"><%= p %></button>
                                    <%} else{ %>
                                        <button class="page-btn btn btn-outline-secondary" onclick="loadLikesPage('<%= p %>')"><%= p %></button>
                                    <%} %>
                                <%} %>
                                <% if(likesCurrentPage != likesMaxPage) { %>
                                    <button class="page-btn btn btn-outline-secondary" onclick="loadLikesPage('<%= likesCurrentPage+1 %>')">&gt</button>
                                <%} %>
                            <%} %>
                        </div>
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
