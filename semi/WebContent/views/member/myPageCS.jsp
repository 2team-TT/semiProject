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
<title>Insert title here</title>
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
                    <div class="slide--div">Q. 이 사이트 먹튀 없나요?</div>
                    <p class="slide--p">A. 우리는 위메프나 티몬이 아닙니다 고객님. 걱정마세요!</p>
                    <div class="slide--div">Q. 마일리지와 포인트의 차이가 뭔가요?</div>
                    <p class="slide--p">A. 마일리지는 상품 구매를 통해서 얻을 수 있는 현금과 같은 재화이고 포인트는 몰루? 대충 아무글 감사위원은 원장의 제청으로 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다. 모든 국민은 인간다운 생활을 할 권리를 가진다. 헌법개정안이 제2항의 찬성을 얻은 때에는 헌법개정은 확정되며, 대통령은 즉시 이를 공포하여야 한다. 언론·출판은 타인의 명예나 권리 또는 공중도덕이나 사회윤리를 침해하여서는 아니된다. 언론·출판이 타인의 명예나 권리를 침해한 때에는 피해자는 이에 대한 피해의 배상을 청구할 수 있다.</p>
                    <div class="slide--div">Q. 중고 물품 환불은 어떻게 하나요?</div>
                    <p class="slide--p">A. 그건 알아서 하세요. 그리고 반응형웹 확인을 위한 잡소리 넣을거임. 대통령은 제3항과 제4항의 사유를 지체없이 공포하여야 한다. 모든 국민은 학문과 예술의 자유를 가진다. 정당의 목적이나 활동이 민주적 기본질서에 위배될 때에는 정부는 헌법재판소에 그 해산을 제소할 수 있고, 정당은 헌법재판소의 심판에 의하여 해산된다. 대한민국의 영토는 한반도와 그 부속도서로 한다. 국가는 노인과 청소년의 복지향상을 위한 정책을 실시할 의무를 진다. 대통령이 임시회의 집회를 요구할 때에는 기간과 집회요구의 이유를 명시하여야 한다. 통신·방송의 시설기준과 신문의 기능을 보장하기 위하여 필요한 사항은 법률로 정한다. 헌법개정은 국회재적의원 과반수 또는 대통령의 발의로 제안된다.</p>
                    <div class="slide--div">Q. kc 인증마크는 없어요?</div>
                    <p class="slide--p">A. 그거 있으면 뭐가 좋나요?</p>
                    <div class="slide--div">Q. 자주하는 질문이 5개밖에 안되나요?</div>
                    <p class="slide--p">A. 상상력의 한계입니다. ㅈㅅㅈㅅ</p>                   
                </div>
                <br><br>

                <span class="subheading">처음 사용자 가이드</span>
                <br><br>
                <div class="slide--group">
                    <h5>사이트를 처음 이용하시는 분들께 유용한 정보를 확인해 보세요.</h5>
                    <div class="slide--div">1. 회원 가입 방법 및 특혜</div>
                    <p class="slide--p">회원 가입 방법 및 특혜는 이용약관에 적는게 맞지 않나 싶은데 일단 반응형웹 작동 잘 하나 확인용 잡글. 헌법개정안은 국회가 의결한 후 30일 이내에 국민투표에 붙여 국회의원선거권자 과반수의 투표와 투표자 과반수의 찬성을 얻어야 한다. 대통령은 법률이 정하는 바에 의하여 사면·감형 또는 복권을 명할 수 있다. 정당은 법률이 정하는 바에 의하여 국가의 보호를 받으며, 국가는 법률이 정하는 바에 의하여 정당운영에 필요한 자금을 보조할 수 있다. 국회가 재적의원 과반수의 찬성으로 계엄의 해제를 요구한 때에는 대통령은 이를 해제하여야 한다. 이 헌법시행 당시에 이 헌법에 의하여 새로 설치될 기관의 권한에 속하는 직무를 행하고 있는 기관은 이 헌법에 의하여 새로운 기관이 설치될 때까지 존속하며 그 직무를 행한다</p>
                    <div class="slide--div">2. 포인트란?</div>
                    <p class="slide--p">대충 아무글 감사위원은 원장의 제청으로 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다. 모든 국민은 인간다운 생활을 할 권리를 가진다. 헌법개정안이 제2항의 찬성을 얻은 때에는 헌법개정은 확정되며, 대통령은 즉시 이를 공포하여야 한다. 언론·출판은 타인의 명예나 권리 또는 공중도덕이나 사회윤리를 침해하여서는 아니된다. 언론·출판이 타인의 명예나 권리를 침해한 때에는 피해자는 이에 대한 피해의 배상을 청구할 수 있다.대법관은 대법원장의 제청으로 국회의 동의를 얻어 대통령이 임명한다. 나는 헌법을 준수하고 국가를 보위하며 조국의 평화적 통일과 국민의 자유와 복리의 증진 및 민족문화의 창달에 노력하여 대통령으로서의 직책을 성실히 수행할 것을 국민 앞에 엄숙히 선서합니다. 공무원의 신분과 정치적 중립성은 법률이 정하는 바에 의하여 보장된다. 대통령이 제1항의 기간내에 공포나 재의의 요구를 하지 아니한 때에도 그 법률안은 법률로서 확정된다. 국회는 의원의 자격을 심사하며, 의원을 징계할 수 있다. 정당은 그 목적·조직과 활동이 민주적이어야 하며, 국민의 정치적 의사형성에 참여하는데 필요한 조직을 가져야 한다.</p>
                    <div class="slide--div">3. 마일리지란?</div>
                    <p class="slide--p">반응형웹 확인을 위한 잡소리 넣을거임. 대통령은 제3항과 제4항의 사유를 지체없이 공포하여야 한다. 모든 국민은 학문과 예술의 자유를 가진다. 정당의 목적이나 활동이 민주적 기본질서에 위배될 때에는 정부는 헌법재판소에 그 해산을 제소할 수 있고, 정당은 헌법재판소의 심판에 의하여 해산된다. 대한민국의 영토는 한반도와 그 부속도서로 한다. 국가는 노인과 청소년의 복지향상을 위한 정책을 실시할 의무를 진다. 대통령이 임시회의 집회를 요구할 때에는 기간과 집회요구의 이유를 명시하여야 한다. 통신·방송의 시설기준과 신문의 기능을 보장하기 위하여 필요한 사항은 법률로 정한다. 헌법개정은 국회재적의원 과반수 또는 대통령의 발의로 제안된다.</p>
                    <div class="slide--div">4. 네번째는 뭘 넣을지 모르겠는데 추천좀</div>
                    <p class="slide--p">신체장애자 및 질병·노령 기타의 사유로 생활능력이 없는 국민은 법률이 정하는 바에 의하여 국가의 보호를 받는다. 국민의 모든 자유와 권리는 국가안전보장·질서유지 또는 공공복리를 위하여 필요한 경우에 한하여 법률로써 제한할 수 있으며, 제한하는 경우에도 자유와 권리의 본질적인 내용을 침해할 수 없다. 국무위원은 국정에 관하여 대통령을 보좌하며, 국무회의의 구성원으로서 국정을 심의한다. 위원은 정당에 가입하거나 정치에 관여할 수 없다. 대통령은 국무총리·국무위원·행정각부의 장 기타 법률이 정하는 공사의 직을 겸할 수 없다. 공공필요에 의한 재산권의 수용·사용 또는 제한 및 그에 대한 보상은 법률로써 하되, 정당한 보상을 지급하여야 한다.</p>
                    <div class="slide--div">5. 4개는 애매하니 5개로 할 생각</div>
                    <p class="slide--p">국회는 정부의 동의없이 정부가 제출한 지출예산 각항의 금액을 증가하거나 새 비목을 설치할 수 없다. 전직대통령의 신분과 예우에 관하여는 법률로 정한다. 대한민국의 주권은 국민에게 있고, 모든 권력은 국민으로부터 나온다. 대통령·국무총리·국무위원·행정각부의 장·헌법재판소 재판관·법관·중앙선거관리위원회 위원·감사원장·감사위원 기타 법률이 정한 공무원이 그 직무집행에 있어서 헌법이나 법률을 위배한 때에는 국회는 탄핵의 소추를 의결할 수 있다. 국가의 세입·세출의 결산, 국가 및 법률이 정한 단체의 회계검사와 행정기관 및 공무원의 직무에 관한 감찰을 하기 위하여 대통령 소속하에 감사원을 둔다.</p>                    
                </div>
                <br><br>

                <span class="subheading">문의 내역 확인</span>
                <br><br>
                <div class="table--margin"> <!-- 테이블 컨텐츠 사이즈 조절용 div클래스 -->

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
                        	<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cQuestionPage=<%= currentQuestionPage-1 %>'">&lt;</button>
                    	<%} %>
                    
                    
                    	<%for(int p = questionStartPage; p<=questionEndPage; p++){ %>
                    		<%if( p == currentQuestionPage){ %>
                        		<button disabled class="page-btn btn btn-outline-secondary"><%= p %></button>
                     	    <%} else{ %>
                       	 		<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cQuestionPage=<%= p %>'"><%= p %></button>
                      	  <%} %>
                   		<%} %>
                    		<% if(currentQuestionPage != questionMaxPage) { %>
                       	 		<button class="page-btn btn btn-outline-secondary" onclick = "location.href ='<%=contextPath %>/myPageBoard.me?cQuestionPage=<%= currentQuestionPage+1 %>'">&gt</button>
                    		<%} %>
                    <%} %>    
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>