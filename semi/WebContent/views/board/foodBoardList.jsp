<%@page import="com.kh.board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.board.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo Pi = (PageInfo)request.getAttribute("Pi");
	ArrayList<Board> fList = (ArrayList<Board>)request.getAttribute("fList");
	ArrayList<Board> bfList = (ArrayList<Board>)request.getAttribute("bfList");
	
	int currentPage= Pi.getCurrentPage();
	int startPage = Pi.getStartPage();
	int endPage =Pi.getEndPage();
	int maxPage = Pi.getMaxPage();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- css 초기화 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css"/> 

    <!-- 메타리얼 아이ㅇ콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">

     <!-- css 파일 -->
     <link rel="stylesheet" href="./resources/css/boardListView.css">
     <script src="./resources/js/boardListView.js" defer></script>
</head>
<body>
    
    <%@include file="../common/menubar.jsp" %>

    <section class="board_navi first">

        <ul class="navi_content">
            <li class="free_choose_board">자유게시판</li>
            <li class="honey_choose_board">꿀팁게시판</li>
            <li class="cook_choose_board">너의레시피</li>
            <li class="used_choose_board">중고거래</li>
            
        </ul>

    </section>



    <section class="Board_list">

      

        <div class="list_area">
            
            <div class="list_choose">
                <span class="lately_board_choose">최신순</span>
                <span class="best_board_choose">인기순</span>
            </div>



            <!-- 자유게시판 -->
            <table class="board_table free_board lately_board">
                <tbody>
                	<%for(Board b : fList){ %>
	                	<tr>
	                      <td>
	                       		<input type="hidden" name="bNo" value="<%=b.getBoardNo() %>">
                                <div class="img">
                                    <img src="<%=contextPath %><%=b.getTitleImg() %>" alt="">
                                </div>
                                <div class="tt">
                                    <div class="content_title">
                                        <%=b.getBoardTitle() %>
                                    </div>
                                    <div class="content_icons">
                                        <div class="icon">
                                            <span class="material-icons m_icon">visibility</span>
                                            <span><%=b.getViewCount() %></span>
                                        </div>
                                        <div class="icon">
                                            <img src="./resources/img/foot.png" alt="">
                                            <span><%=b.getLikesCount() %></span>
                                        </div>
                                        <div class="icon">
                                            <span class="material-icons m_icon">textsms</span>
                                            <span><%=b.getReplyCount() %></span>
            
                                        </div>
                                        <div class="date">
                                            <%=b.getCreateDate() %>
                                        </div>
                                    </div>
                                </div>
                            </td>
	                    </tr>
                	<%} %>
                    
                  
                </tbody>
            </table>



			 <!-- 자유게시판 -->
            <table class="board_table free_board best_board">
                <tbody>
                	<%for(Board b : bfList){ %>
	                	<tr>
	                        <td>
	                       		<input type="hidden" name="bNo" value="<%=b.getBoardNo() %>">
                                <div class="img">
                                     <img src="<%=contextPath %><%=b.getTitleImg() %>" alt="">
                                </div>
                                <div class="tt">
                                    <div class="content_title">
                                        <%=b.getBoardTitle() %>
                                    </div>
                                    <div class="content_icons">
                                        <div class="icon">
                                            <span class="material-icons m_icon">visibility</span>
                                            <span><%=b.getViewCount() %></span>
                                        </div>
                                        <div class="icon">
                                            <img src="./resources/img/foot.png" alt="">
                                            <span><%=b.getLikesCount() %></span>
                                        </div>
                                        <div class="icon">
                                            <span class="material-icons m_icon">textsms</span>
                                            <span><%=b.getReplyCount() %></span>
            
                                        </div>
                                        <div class="date">
                                            <%=b.getCreateDate() %>
                                        </div>
                                    </div>
                                </div>
                            </td>
	                    </tr>
                	<%} %>
                    
                  
                </tbody>
            </table>
			

        </div>


        <div class="btn_area">
           
           <%if(u!= null){ %>
            <div class="my_board">
                <a href="">내글</a>
            </div>
            <div class="board_write">
                <a href="<%=contextPath%>/BoardcreateForm.bo">글쓰기</a>
            </div>
            <%} %>
            
            <div class="board_search">
                <div class="material-icons" >search</div>

                <form action="<%=contextPath %>/searchBoardList.bo">
                    <input type="hidden" name="cpage" value="1">
                    <input type="search" name="search" id="search_input">
                    <button class="material-icons" >search</button>
                </form>
            </div>
            
            


        </div>


        <div class="page_area">
              <% if(currentPage !=1){ %>
            <button onclick = "location.href ='<%=contextPath %>/list.bo?cpage=<%= currentPage-1 %>'">이전</button>
			<%} %>
			
			
			<%for(int i = startPage; i<= endPage ; i++){ %>
            	<%if(i==currentPage) {%>
            		<button disabled><%=i %></button>
            	<%}else{ %>
            		<button onclick="location.href='<%=contextPath%>/freeBoardList.bo?cpage=<%= i%>'"><%=i %></button>
            	<%} %>
         	<%} %>
            
            <% if(currentPage != maxPage){ %>
            <button onclick = "location.href ='<%=contextPath %>/list.bo?cpage=<%= currentPage+1 %>'">다음</button>
			<%} %>

        </div>
    </section>




<script>

const free_choose_board = document.querySelector('.board_navi .navi_content>.free_choose_board');

const honey_choose_board = document.querySelector('.board_navi .navi_content .honey_choose_board');
const cook_choose_board = document.querySelector('.board_navi .navi_content .cook_choose_board');
const used_choose_board = document.querySelector('.board_navi .navi_content .used_choose_board');

free_choose_board.addEventListener('click',function(){
    console.log('dd')
    location.href="<%=contextPath%>/freeBoardList.bo?cpage=1"

})

honey_choose_board.addEventListener('click',function(){
    
    location.href="<%=contextPath%>/honeyBoardList.bo?cpage=1"

})

cook_choose_board.addEventListener('click',function(){
    
    location.href="<%=contextPath%>/foodBoardList.bo?cpage=1"

})

used_choose_board.addEventListener('click',function(){
    
    location.href="<%=contextPath%>/usedBoardList.bo?cpage=1"

})






$(function(){
    $('.board_table tr').on('click',function(){
		console.log($(this).children().children('input').val())
		
		location.href="<%=contextPath%>/boardDeteil.bo?bno="+$(this).children().children('input').val()
		
	})
})




</script>














</body>
</html>