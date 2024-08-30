<%@page import="com.kh.board.model.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String search =(String)request.getAttribute("search");
    	ArrayList<Board> bList = (ArrayList<Board>)request.getAttribute("blist");
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




  <!-- 제이쿼리 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

  <link rel="stylesheet" href="./resources/css/searchListView.css">


</head>
<body>

	    <%@include file="../common/menubar.jsp" %>
	

    <section class="search_board_list first">

        <div class="search_area">

            <div class="title search_title_contents">커뮤니티</div>

            <div class="search_board_area">
            
            	<%if(bList.isEmpty()){ %>
            		<div class="board_item">
	                   <div class="board_title_area">
	                        검색결과가 없습니다.
	                    </div>
                    </div>
            	<%}else if(bList.size()<10){ %>
            		<%for(int i=0 ;i<bList.size();i++){ %>
	            		 <div class="board_item">
		                    <input type="hidden" name="boardNo" value="<%=contextPath%>/boardDeteil.bo?bno=<%=bList.get(i).getBoardNo()%>">
		
		                    <div class="board_title_area">
		                        <span class="tag">[<%=bList.get(i).getTagNo()%>]</span> <span class="board_title"><%=bList.get(i).getBoardTitle() %></span>
		                    </div>
		                    <div class="board_icons">
		                        <div class="icons_area">
		                            <div class="icon">
		                                <span class="material-icons m_icon">visibility</span>
		                                <span><%=bList.get(i).getViewCount()%></span>
		                            </div>
		                            <div class="icon">
		                                <img src="./resources/img/foot.png" alt="">
		                                <span class="img_span"><%=bList.get(i).getLikesCount()%></span>
		                            </div>
		                            <div class="icon">
		                                <span class="material-icons m_icon">textsms</span>
		                                <span><%=bList.get(i).getReplyCount()%></span>
		
		                            </div>
		
		                        </div>
		                        <div class="create_date"><%=bList.get(i).getCreateDate()%></div>
		                    </div>
	                	</div>
            		<%} %>
            	<%}else { %>
		            	<%for(int i=0 ;i<10;i++){ %>
			            		 <div class="board_item">
				                    <input type="hidden" name="boardNo" value="<%=contextPath%>/boardDeteil.bo?bno=<%=bList.get(i).getBoardNo()%>">
				
				                    <div class="board_title_area">
				                        <span class="tag">[<%=bList.get(i).getTagNo()%>]</span> <span class="board_title"><%=bList.get(i).getBoardTitle() %></span>
				                    </div>
				                    <div class="board_icons">
				                        <div class="icons_area">
				                            <div class="icon">
				                                <span class="material-icons m_icon">visibility</span>
				                                <span><%=bList.get(i).getViewCount()%></span>
				                            </div>
				                            <div class="icon">
				                                <img src="./resources/img/foot.png" alt="">
				                                <span class="img_span"><%=bList.get(i).getLikesCount()%></span>
				                            </div>
				                            <div class="icon">
				                                <span class="material-icons m_icon">textsms</span>
				                                <span><%=bList.get(i).getReplyCount()%></span>
				
				                            </div>
				
				                        </div>
				                        <div class="create_date"><%=bList.get(i).getCreateDate()%></div>
				                    </div>
			                	</div>
		            		<%} %>
            	<%} %>
                <!-- <div class="board_item">
                    <input type="hidden" name="boardNo" value="1111">

                    <div class="board_title_area">
                        <span class="tag">[dfsdfsdfs]</span> <span class="board_title">제목sadf</span>
                    </div>
                    <div class="board_icons">
                        <div class="icons_area">
                            <div class="icon">
                                <span class="material-icons m_icon">visibility</span>
                                <span>조회수</span>
                            </div>
                            <div class="icon">
                                <img src="./resources/img/foot.png" alt="">
                                <span class="img_span">좋아요 수</span>
                            </div>
                            <div class="icon">
                                <span class="material-icons m_icon">textsms</span>
                                <span>댓글수</span>

                            </div>

                        </div>
                        <div class="create_date">2020년 8월 20일</div>
                    </div>
                </div>


                <div class="board_item">
                    <input type="hidden" name="boardNo" value="2222">

                    <div class="board_title_area">
                        <span class="tag">[dfsdfsdfs]</span> <span class="board_title">제목sadf</span>
                    </div>
                    <div class="board_icons">
                        <div class="icons_area">
                            <div class="icon">
                                <span class="material-icons m_icon">visibility</span>
                                <span>조회수</span>
                            </div>
                            <div class="icon">
                                <img src="./resources/img/foot.png" alt="">
                                <span class="img_span">좋아요 수</span>
                            </div>
                            <div class="icon">
                                <span class="material-icons m_icon">textsms</span>
                                <span>댓글수</span>

                            </div>

                        </div>
                        <div class="create_date">2020년 8월 20일</div>
                    </div>
                </div>



                <div class="board_item">
                    <input type="hidden" name="boardNo" value="3333">

                    <div class="board_title_area">
                        <span class="tag">[dfsdfsdfs]</span> <span class="board_title">제목sadf</span>
                    </div>
                    <div class="board_icons">
                        <div class="icons_area">
                            <div class="icon">
                                <span class="material-icons m_icon">visibility</span>
                                <span>조회수</span>
                            </div>
                            <div class="icon">
                                <img src="./resources/img/foot.png" alt="">
                                <span class="img_span">좋아요 수</span>
                            </div>
                            <div class="icon">
                                <span class="material-icons m_icon">textsms</span>
                                <span>댓글수</span>

                            </div>

                        </div>
                        <div class="create_date">2020년 8월 20일</div>
                    </div>
                </div> -->


            </div>


            <div class="search_list_btn_area_go">
                <a href="<%=contextPath %>/searchBoardList.bo?cpage=1&search=<%=search %>" class="board_list_go">커뮤니티 더 보기</a>
            </div>

        </div>



    </section>




    <section class="search_shop_list">

        <div class="search_shop_area">

            <div class="shop_title search_title_contents">
                상품
            </div>

            <div class="search_shop_content">

                <div class="shop_items">
                    <input type="hidden" name="shopNo" value="5000">

                    <div class="shop_img">
                        <img src="./resources/img/asdd.jfif" alt="">
                    </div>
                    <div class="shop_text">
                        <div class="shop_name">제품명</div>
                        <div class="shop_price">
                            <span>할인율</span>
                            <span>가격</span>
                        </div>
                        <div class="icons">
                            <span class="material-icons icon star">star</span>
                            <span>4.5</span>
                            <span class="material-icons icon">textsms</span>
                            <span>150개</span>
                        </div>
                    </div>
                </div>
           


            </div>


            <div class="search_list_btn_area_go">
                <a href="" class="board_list_go">상품 더 보기</a>
            </div>

        </div>


    </section>



    <section class="search_property_list">

        <div class="search_property_area">

            <div class="search_title_contents">
                부동산
            </div>


            <div class="property_content">

                <div class="property_items">
                    <input type="hidden" name="propertyNo" value="9999">

                    <div class="property_img">
                        <img src="./resources/img - 복사본/asdd.jfif" alt="">
                    </div>
                    <div class="property_text">
                        <div class="property_name">매물명</div>
                        <div class="property_price">가격</div>
                        <div class="property_location">강남구</div>
                        <div class="property_option">옵션
                            <div>-dfsadfasdfsdfasdfaasdfasdfsdf</div>
                        </div>
                        <div class="property_info">주변정보
                            <div>-dfsadfasdfsdfasdfaasdfasdfsdf</div>
                        </div>

                    </div>
                </div>

                


            </div>



            
            <div class="search_list_btn_area_go">
                <a href="" class="board_list_go">부동산 더 보기</a>
            </div>
        </div>


    </section>
    


    <section class="search_brokerage_list">

        <div class="search_brokerage_area">


            <div class="search_title_contents">
                부동산
            </div>

            <div class="search_brokerage_content">

                <div class="brokerage_items">
                    <input type="hidden" name="brokerageNo" value="946">
                    <div class="brokerage_img">
                        <img src="./resources/img/다운로드 (3).jfif" alt="">
                    </div>
                    <div class="brokerage_text">
                        <div class="brokerage_name">중개업 이름</div>
                        <div class="brokerage_icons">
                            <span class="material-icons icon star">star</span>
                            <span>4.5</span>
                        </div>
                        <div class="brokerage_review">
                            dasdfas adf wf asdf wef wef easf asf saf asfasef esaf aesf aesf aesf asdfasef as esaf aesf asef aesf asdf ase faesf asef asef asef asef asef asef asf easf eaf asef asef ase
                        </div>
                    </div>
                </div>


            </div>



            <div class="search_list_btn_area_go">
                <a href="" class="board_list_go">중개업 더 보기</a>
            </div>


        </div>



    </section>


<script>


$(function(){



    $('.board_item').on('click', function(){
        let no =$(this).children('input').val()
        console.log(no)
        location.href = no
    })

    $('.shop_items').on('click', function(){
        let no =$(this).children('input').val()
        console.log(no)
    })
    $('.property_items').on('click', function(){
        let no =$(this).children('input').val()
        console.log(no)
    })
    $('.brokerage_items').on('click', function(){
        let no =$(this).children('input').val()
        console.log(no)
    })





})










</script>


</body>
</html>