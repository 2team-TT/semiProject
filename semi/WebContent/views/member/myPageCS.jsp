<%@page import="com.kh.product.model.vo.ProductInquiry"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.board.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo qPi = (PageInfo)request.getAttribute("qPi");
	// 내 문의 내역 페이징 바
	
	ArrayList<ProductInquiry> qList = (ArrayList<ProductInquiry>)request.getAttribute("qList");
	// 상품명, 문의 제목, 문의 내용, 답변 여부, 작성일, 답변 내용, 유저 넘버
	
	int currentQuestionPage = qPi.getCurrentPage();
	int questionStartPage = qPi.getStartPage();
	int questionEndPage = qPi.getEndPage();
	int questionMaxPage = qPi.getMaxPage();

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - 고객센터</title>
<script>
    var contextPath = '<%= request.getContextPath() %>';
</script>
</head>
<body>
	<%@ include file="../common/myPageCommon.jsp" %>
	
	<section class="myinfo--page">
        <div class="myinfo--info">
            <div class="myinfo--common">
                <p class="common--title">고객 센터</p>
                <p class="info--annotation">언제나 고객의 목소리에 귀를 기울이는 고객센터입니다.</p>

                <span class="subheading">자주하는 질문</span>
                <br><br>
                <div class="slide--group">
                    <h5>사용자들이 자주 묻는 질문에 대해서 확인해 보세요.</h5>
                    <div class="slide--div">Q. 주문 취소는 어떻게 하나요?</div>
                    <p class="slide--p">A. 판매처에서 주문을 확인하기 전이라면 언제든 취소하실 수 있으며, 상품 상세 페이지에서 에서 직접 주문취소하실 수 있습니다.
                        <br>
                        ※ 이미 판매처에서 상품을 확인해 준비 중이라면, 직접 취소가 어렵습니다. 상세 페이지에 확인되는 판매자 연락처 또는 고객센터로 문의 부탁드립니다.</p>
                    <div class="slide--div">Q. 마일리지와 포인트의 차이가 뭔가요?</div>
                    <p class="slide--p">A. 마일리지는 상품 구매를 통해서 얻을 수 있는 현금과 같은 재화이고 포인트는 사이트 내 다양한 활동을 통하여 얻을 수 있고, 현금가치가 없습니다.</p>
                    <div class="slide--div">Q. 중고 물품 환불은 어떻게 하나요?</div>
                    <p class="slide--p">A. 중고 물품의 환불의 경우 본 사이트에서 책임지지 않습니다. 판매자에게 직접 연락하여 해결하셔야 합니다.</p>
                    <div class="slide--div">Q. 로그인회원과 비회원의 차이가 있나요?</div>
                    <p class="slide--p">A. 로그인 회원의 경우 마이페이지를 사용 가능하며 활동 기록을 확인 할 수 있으며, 마일리지 및 포인트 적립이 가능하며 이를 통하여 사이트 내 다양한 베네핏을 얻으실 수 있습니다.
                        <br> 비회원의 경우 상품을 구매하셔도 마일리지를 쌓지 못하고 이벤트 참여가 불가하므로 사이트를 제대로 활용하고 싶으시면 꼭 로그인을 해주세요!
                    </p>
                    <div class="slide--div">Q. 배송비는 얼마인가요?</div>
                    <p class="slide--p">A. 본 사이트는 상품정보 중계 및 판매 매체이며, 판매 업체 별로 배송비 정책이 상이합니다. 각 상품상세페이지에서 배송비를 확인하실 수 있습니다.</p>                   
                </div>
                <br><br>

                <span class="subheading">처음 사용자 가이드</span>
                <br><br>
                <div class="slide--group">
                    <h5>사이트를 처음 이용하시는 분들께 유용한 정보를 확인해 보세요.</h5>
                    <div class="slide--div">1. 회원 가입 방법 및 특혜</div>
                    <p class="slide--p">회원가입은 사이트의 우측 상단에 로그인 버튼을 클릭시, 회원가입 버튼이 나옵니다. 회원가입 버튼 클릭시 나오는 약관에 동의 후, 양식을 작성하여 회원가입을 하실 수 있습니다.
                        <br><br>※회원가입 특혜
                        <br><br> 회원가입을 하실 경우 마이페이지를 통하여 각종 활동기록을 확인 하실 수 있으시며, 사이트 내 활동을 통하여 포인트를 획득, 이를 통하여 다양한 아이콘 구입 등, 사이트 내 꾸미기가 가능해집니다.
                        <br> 또한 상품 구매를 통하여 구매 금액의 일정 부분을 마일리지로 적립 하실 수 있으시며, 이는 사이트 내에서 현금과 같은 효과를 가집니다. 다양한 상품 구매에 현금처럼 사용하실 수 있습니다.
                    </p>
                    <div class="slide--div">2. 포인트란?</div>
                    <p class="slide--p">포인트는 회원님께서 글쓰기, 댓글쓰기, 이벤트 참여 등 사이트 내에서 활동을 통하여 얻으실 수 있는 자산입니다. 다만, 포인트에는 그 어떤 현금적인 가치는 없으므로, 상품을 구매하는데 사용하실 수 없습니다. 포인트는 사이트 내에서 아이콘을 바꾼다던가 포인트 베팅에 사용하실 수 있습니다.</p>
                    <div class="slide--div">3. 마일리지란?</div>
                    <p class="slide--p">마일리지는 회원님께서 사이트 내의 상품을 구매할 경우 일정량 얻으실 수 있는 현금 가치가 있는 포인트입니다. 이는 사이트 내에서만 사용 가능하면 외부 사이트에서는 그 어떤 가치도 존재하지 않습니다. 상품 구매시 마일리지를 사용하여 현금과 같은 비율로 사용되며, 마일리지의 경우 일정 기간이 지나면 자동 소멸하오니 이 점, 유의해주시기 바랍니다.</p>
                    <div class="slide--div">4. 글 작성 및 회원 신고</div>
                    <p class="slide--p">글 작성시 반드시 로그인 상태여야하며, 비로그인시 글 작성을 하실 수 없습니다. 게시글이나 댓글에 욕설이나 비하발언을 하게 될 경우 회원자격이 정지될 수 있으므로 이점, 유의해 주시기 바랍니다. 또한 비매너 행위를 하는 사용자에 대해서 신고가 가능합니다.</p>
                    <div class="slide--div">5. 중고거래시 유의 사항</div>
                    <p class="slide--p">중고 거래의 경우 본 사이트는 그 어떠한 책임도 지지 않습니다. 거래시 판매자 혹은 구매자에 대한 정보를 충분히 습득한 상태에서 거래하세요!</p>                    
                </div>
                <br><br>

                <span class="subheading">문의 내역 확인</span>
                <br><br>
                <div class="table--margin"> <!-- 테이블 컨텐츠 사이즈 조절용 div클래스 -->
	                <div id="questionTable">
	                    <table class="mytable table table-striped">
	                        <thead>
	                            <tr>
	                                <th>결제상품</th>
	                                <th>문의제목</th>
	                                <th>답변상태</th>
	                                <th>문의날짜</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        <%if(qList.isEmpty()) {%>
	                        	<!-- 문의내역이 존재하지 않을 경우 -->
	                        		<tr>
				                    	<td colspan="4">문의 내역이 없습니다.</td>
				                	</tr>
				            <%}else { %>
				            	<!-- 게시글이 존재할 경우 -->
				            	<%for(ProductInquiry pi : qList) {%>
	                            	<tr class="p--question">
	                                	<td><%= pi.getpName() %></td>
	                                	<td><%= pi.getPiTitle() %></td>
	                                	<td><%= pi.getAnswer() %></td>
	                                	<td><%= pi.getCreateDate() %></td>
	                            	</tr>
	                            	<tr class="p--answer">
	                                	<td colspan="4"><%= pi.getPiContent() %>
	                                	<br><br><br><br>
	                                	<hr>
	                                	<% if(pi.getPaContent() != null) { %>
	                                		<%= pi.getPaContent() %>
	                                	<%} else{ %>
	                                		아직 등록된 답변이 없습니다. 조금만 기다려주세요.
	                                	<%} %>
	                                	</td>
	                            	</tr>
	                            <%} %>
	                       <%} %>
	                        </tbody>
	                    </table>
	                    <div align="center">
	                    <% if(questionMaxPage !=0){ %>
	                    	<% if(currentQuestionPage != 1) {%>
	                        	<button class="page-btn btn btn-outline-secondary" onclick="loadQuestionPage('<%= currentQuestionPage-1 %>')">&lt;</button>
	                    	<%} %>
	                    
	                    
	                    	<%for(int p = questionStartPage; p<=questionEndPage; p++){ %>
	                    		<%if( p == currentQuestionPage){ %>
	                        		<button disabled class="page-btn btn btn-outline-secondary"><%= p %></button>
	                     	    <%} else{ %>
	                       	 		<button class="page-btn btn btn-outline-secondary" onclick="loadQuestionPage('<%= p %>')"><%= p %></button>
	                      	  <%} %>
	                   		<%} %>
	                    		<% if(currentQuestionPage != questionMaxPage) { %>
	                       	 		<button class="page-btn btn btn-outline-secondary" onclick="loadQuestionPage('<%= currentQuestionPage +1 %>')">&gt</button>
	                    		<%} %>
	                    <%} %>    
	                    </div>
	                </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>