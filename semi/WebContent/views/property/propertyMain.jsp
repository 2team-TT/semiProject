<%@page import="com.kh.property.model.vo.Property"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.kh.common.model.vo.PageInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Property> ppList = (ArrayList<Property>)request.getAttribute("ppList");
	
	
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    
    <!-- 여백 제거 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
    <!-- 버튼 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- j쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
    <!-- css -->
    <link rel="stylesheet" href="./resources/css/PropertyMain.css">
    <!-- js -->
    <!-- <script defer src="./resources/js/welfareMain.js"></script> -->
    <script defer src="./resources/js/PropertyMain.js"></script>
</head>
<body>
    <section id="sectionTop">
        <div id="propertyTopRoot">
            <div class="menuWrap menuTopWrap">
                <div class="menuWrap__inner menuTopWrap__inner">
                    <a href="javascript:void(0)" class="building-type isSelected" name="">원룸투룸</a>
                    <a href="javascript:void(0)" class="building-type isNotSelected">아파트</a>
                    <a href="javascript:void(0)" class="building-type isNotSelected">주택/빌라</a>
                    <a href="javascript:void(0)" class="building-type isNotSelected">오피스텔</a>
                    <a href="javascript:void(0)" class="building-type isNotSelected">도시형생활주택</a>
                </div>
            </div>
            <div class="menuWrap menuBtmWrap">
                <div class="menuWrap__inner menuBtmWrap__inner">
                    <a href="javascript:void(0)" class="popup-trigger isNotSelected">거래방식</a>
                    <div class="filter_popup filter_popup--deal disabled">
                        <div class="filter_popup__top">
                            <div class="filter_popup__title">거래방식</div>
                            <div class="filter_popup__exitBtn">X</div>
                        </div>
                        <div class="filter_popup__content">
                            <div class="filter_popup__content-Wrap filter_popup__content-deal">
                                <span id="filter-wolse" class="price-spanBtn">월세</span>
                                <span id="filter-jeonse" class="price-spanBtn">전세</span>
                            </div>
                            <div class="filter-popup__content-description">중복 체크 가능</div>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="popup-trigger isNotSelected">가격대</a>
                    <div class="filter_popup filter_popup--price disabled">
                        <div class="filter_popup__top">
                            <div class="filter_popup__title">가격</div>
                            <div class="filter_popup__exitBtn">X</div>
                        </div>
                        <div class="filter_popup__content">
                            <div class="filter_popup__content-Wrap filter_popup__content-price">
                                <!-- <div class="filter_popup__content-wolse" align="center"></div> -->
                                <div class="filter_popup__content-inner" id="filter_popup__content-jeonse">
                                    <div class="content_title price_title">전세가격</div>
                                    <div class="price_btnWrap" align="center">
                                        <button type="button" class="btn btn-price isNotSelected" value="5000">~5천</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="6000">~6천</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="7000">~7천</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="8000">~8천</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="9000">~9천</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="10000">~1억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="20000">~2억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="30000">~3억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="40000">~4억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="50000">~5억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="60000">~6억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="70000">~7억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="80000">~8억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="90000">~9억</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="100000">~10억</button>
                                        <div class="price-result" id="price-result-jeonse" align="right">
                                            가격표시값삽입
                                        </div>
                                    </div>
                                </div>
                                <div class="filter_popup__content-inner" id="filter_popup__content-wolse">
                                    <div class="content_title price_title">월세가격</div>
                                    <div class="price_btnWrap" align="center">
                                        <button type="button" class="btn btn-price isNotSelected" value="10">~10</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="20">~20</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="30">~30</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="40">~40</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="50">~50</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="60">~60</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="70">~70</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="80">~80</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="90">~90</button>
                                        <button type="button" class="btn btn-price isNotSelected" value="100">~100</button>
                                        <div class="price-result" id="price-result-wolse" align="right">가격표시값삽입</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="popup-trigger isNotSelected">면적</a>
                    <div class="filter_popup filter_popup--size disabled">
                        <div class="filter_popup__top">
                            <div class="filter_popup__title">면적</div>
                            <div class="filter_popup__exitBtn">X</div>
                        </div>
                        <div class="filter_popup__content">
                            <div class="filter_popup__content-Wrap filter_popup__content-size">
                                <div class="filter_popup__content-inner">
                                    <div class="content_title size_title">면적</div>
                                    <div class="btnWrap size_btnWrap" align="center">
                                        <button type="button" class="btn btn-size isNotSelected" value="10p">~10평</button>
                                        <button type="button" class="btn btn-size isNotSelected" value="20p">~20평</button>
                                        <button type="button" class="btn btn-size isNotSelected" value="30p">~30평</button>
                                        <button type="button" class="btn btn-size isNotSelected" value="40p">~40평</button>
                                        <button type="button" class="btn btn-size isNotSelected" value="50p">~50평</button>
                                        <button type="button" class="btn btn-size isNotSelected" value="60p">~60평</button>
                                        <button type="button" class="btn btn-size isNotSelected" value="70p">~70평</button>
                                        <button type="button" class="btn btn-size isNotSelected" value="over70p">~70평</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="popup-trigger isNotSelected">입주가능일</a>
                    <div class="filter_popup filter_popup--date disabled">
                        <div class="filter_popup__top">
                            <div class="filter_popup__title">입주가능일</div>
                            <div class="filter_popup__exitBtn">X</div>
                        </div>
                        <div class="filter_popup__content">
                            <div class="filter_popup__content-Wrap filter_popup__content-date">
                                <div class="filter_popup__content-inner">
                                    <div class="content_title date_title">입주가능일</div>
                                    <div class="btnWrap date_btnWrap" align="center">
                                        <button type="button" class="btn btn-date isNotSelected" value="1y">~1년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="2y">~2년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="3y">~3년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="4y">~4년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="5y">~5년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="6y">~6년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="7y">~7년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="8y">~8년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="9y">~9년</button>
                                        <button type="button" class="btn btn-date isNotSelected" value="over9y">9년~</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="popup-trigger isNotSelected">추가필터</a>
                    <div class="filter_popup filter_popup--detail disabled">
                        <div class="filter_popup__top">
                            <div class="filter_popup__title">추가필터</div>
                            <div class="filter_popup__exitBtn">X</div>
                        </div>
                        <div class="filter_popup__content">
                            <div class="filter_popup__content-detail">
                                <div class="filter_popup__content-inner">
                                    <!-- <div class="content_title detail_title">추가필터</div> -->
                                    <div class="filter_popup__content">
                                        <div class="filter_popup__content-detail">
                                            <div id="floorBtn" class="detail-divBtn" onclick="">층수</div>
                                            <div id="floorWrap" class="detail-wrap">
                                                <button type="button" class="btn btn-detail isNotSelected" name="floor" value="1f">1층</button>
                                                <button type="button" class="btn btn-detail isNotSelected" name="floor" value="2f">2층이상</button>
                                                <button type="button" class="btn btn-detail isNotSelected" name="floor" value="0f">반지하</button>
                                                <button type="button" class="btn btn-detail isNotSelected" name="floor" value="tf">탑층</button>
                                            </div>
                                            <!-- <div id="pyeongBtn" class="detail-divBtn">평수</div>
                                            <div id="pyeongWrap" class="detail-wrap">
                                                <div class="pyeongWrapInner">
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="10p">~10평</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="20p">~20평</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="30p">~30평</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="40p">~40평</button>
                                                </div>
                                                <div class="pyeongWrapInner">
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="50p">~50평</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="60p">~60평</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="70p">~70평</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="pyeong" value="80p">70평~</button>
                                                </div>
                                            </div> -->
                                            <div id="roomsBtn" class="detail-divBtn">방/욕실수</div>
                                            <div id="roomsWrap" class="detail-wrap">
                                                <div id="roomsAllWrap"class="roomsWrapInner">
                                                    <input type="radio" name="rooms" id="roomsAll" class="rooms_radio_input" value="" checked><label for="roomsA" class="radio_label">전체</label>
                                                </div>
                                                <div class="roomsWrapInner">
                                                    <input type="radio" name="rooms" id="rooms1" class="rooms_radio_input" value=""><label for="rooms1" class="radio_label">1개</label>
                                                    <input type="radio" name="rooms" id="rooms2" class="rooms_radio_input" value=""><label for="rooms2" class="radio_label">2개</label>
                                                    <input type="radio" name="rooms" id="rooms3" class="rooms_radio_input" value=""><label for="rooms3" class="radio_label">3개</label>
                                                    <input type="radio" name="rooms" id="rooms4" class="rooms_radio_input" value=""><label for="rooms4" class="radio_label">4개</label>
                                                    <input type="radio" name="rooms" id="rooms5" class="rooms_radio_input" value=""><label for="rooms5" class="radio_label">4개이상</label>
                                                </div>
                                            </div>
                                            <div id="directionBtn" class="detail-divBtn">방향</div>
                                            <div id="directionWrap" class="detail-wrap">
                                                <div id="directionAllWrap"class="directionWrapInner">
                                                    <input type="radio" name="direction" id="directionAll" class="direction_radio_input" value="A" checked><label for="directionAll" class="radio_label">전체</label>
                                                </div>
                                                <div class="directionWrapInner">
                                                    <input type="radio" name="direction" id="directionEast" class="direction_radio_input" value="E"><label for="directionEast" class="radio_label">동쪽</label>
                                                    <input type="radio" name="direction" id="directionSouthEast" class="direction_radio_input" value="SE"><label for="directionSouthEast" class="radio_label">남동쪽</label>
                                                    <input type="radio" name="direction" id="directionWest" class="direction_radio_input" value="W"><label for="directionWest" class="radio_label">서쪽</label>
                                                    <input type="radio" name="direction" id="directionSouthWest" class="direction_radio_input" value="SW"><label for="directionSouthWest" class="radio_label">남서쪽</label>
                                                </div>
                                                <div class="directionWrapInner">
                                                    <input type="radio" name="direction" id="directionSouth" class="direction_radio_input" value="S"><label for="directionSouth" class="radio_label">남쪽</label>
                                                    <input type="radio" name="direction" id="directionNorthEast" class="direction_radio_input" value="NE"><label for="directionNorthEast" class="radio_label">북동쪽</label>
                                                    <input type="radio" name="direction" id="directionNorth" class="direction_radio_input" value="N"><label for="directionNorth" class="radio_label">북쪽</label>
                                                    <input type="radio" name="direction" id="directionNorthWest" class="direction_radio_input" value="NW"><label for="directionNorthWest" class="radio_label">북서쪽</label>
                                                </div>
                                            </div>
                                            <div id="heatingBtn" class="detail-divBtn">난방</div>
                                            <div id="heatingWrap" class="detail-wrap">
                                                <button type="button" class="btn btn-detail isNotSelected" name="heating" value="central">중앙난방</button>
                                                <button type="button" class="btn btn-detail isNotSelected" name="heating" value="individual">개별난방</button>
                                                <button type="button" class="btn btn-detail isNotSelected" name="heating" value="district">지역난방</button>
                                            </div>
                                            <div id="elevatorBtn" class="detail-divBtn">엘리베이터</div>
                                            <div id="elevatorWrap" class="detail-wrap">
                                                <button type="button" class="btn btn-detail isNotSelected" name="elevator" value="yes">엘리베이터 있음</button>
                                            </div>
                                            <div id="householdsBtn" class="detail-divBtn">세대수</div>
                                            <div id="householdsWrap" class="detail-wrap">
                                                <div class="householdsWrapInner">
                                                    <button type="button" class="btn btn-detail isNotSelected" name="households" value="100">~100</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="households" value="300">~300</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="households" value="500">~500</button>
                                                </div>
                                                <div class="householdsWrapInner">
                                                    <button type="button" class="btn btn-detail isNotSelected" name="households" value="700">~700</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="households" value="1000">~1000</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="households" value="2000">~2000</button>
                                                </div>
                                            </div>
                                            <div id="parkingBtn" class="detail-divBtn">총주차대수</div>
                                            <div id="parkingWrap" class="detail-wrap">
                                                <div class="parkingWrapInner">
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="1pk">1대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="2pk">2대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="3pk">3대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="4pk">4대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="5pk">5대</button>
                                                </div>
                                                <div class="parkingWrapInner">
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="10pk">~10대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="30pk">~30대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="50pk">~50대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="100pk">~100대</button>
                                                    <button type="button" class="btn btn-detail isNotSelected" name="parking" value="over100pk">100대~</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="sectionMain">
        <div id="propertyMainRoot">
            <div class="propertyListWrap">
                <div class="propertyListWrap__content">
                    <ul class="propertyList"></ul>
                    <div class="paging-area" align="center"></div>
                    <script>
                        $(document).ready(function(){
                            let listCount;		// 총 부동산 매물
                            let currentPage;	// 현재 부동산 매물 페이지
                            let pageLimit;		// 페이징바의 페이지 최대 개수(개단위)(ex) 5개씩 =  1 2 3 4 5, 6 7 8 9 10)
                            let detailLimit;	// 한 페이지 내에 보여질 매물 개수(개단위)
                            let maxPage;		// 가장 마지막 페이지(총페이지수)
                            let startPage;		// 페이징바 시작수
                            let endPage;		// 페이징바 끝수
                            
                            currentPage = <%= currentPage %>;
                            pageLimit = <%= pi.getPageLimit() %>;
                            detailLimit = <%= pi.getDetailLimit() %>;
                            maxPage = <%= pi.getMaxPage() %>;
                            startPage = <%= startPage %>;
                            endPage = <%= endPage %>;
                            

                            $.ajax({
                                type: "GET",
                                url: "PropertyList.prop",
                                data: {
                                    cPage: currentPage,
                                    limit: detailLimit
                                },
                                success : function(result){
                                    let paging = '';
                                    let properties = '';
                                    <% if(ppList.isEmpty()){ %>
                                    	properties = '<li>'
                                                   + '<div>비어있음<div>'
                                                   + '</li>'
                                    <% }else{ %>
	                                    <% for(Property pp : ppList) {%>
	                                    	<% String propType = ""; %>
		                                    properties += '<li>'
				                                        + '<a href="javascript:void(0)" class="propertyPrev">'
				                                        + '<div class="propertyImgContent">'
				                                        /* + '<img class="propertyImg" src="<%= request.getContextPath() %><%= pp.getFilePath() %><%= pp.getChangeName() %>" alt="">' */
				                                        + '<img class="propertyImg" src="https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/58/653c9848333a40e925e26c102d5618ee_res.jpeg" alt="">'
				                                        + '</div>'
				                                        + '<div class="marginSmallDiv"></div>'
				                                        + '<div class="propertyDetailContent">'
				                                        + '<div class="propertyDetailContentInner propertyDetailContent__Top">'
				                                        + '<h4 class="propertyDetailContentInner__title"><%= pp.getPpName() %></h4>'
				                                        + '</div>'
				                                        + '<div class="propertyDetailContentInner propertyDetailContentMiddle">'
				                                        + '<p class="propertyDetailContentInner__price"><%= pp.getPpPrice() %></p>'
				                                        <% if(pp.getType() == 311 || pp.getType() == 321){%>
				                                        	<% propType = "아파트"; %>
				                                        <% } else if(pp.getType() == 312){%>
				                                        	<% propType = "주택"; %>
				                                        <% }%>
				                                        + '<p class="propertyDetailContentInner__type"><%= propType %></p>'
				                                        <% if(pp.getMoveDate() != null && pp.getMoveDate().length() != 0){ %>
				                                        + 	'<p class="propertyDetailContentInner__move-in-date">입주가능일 : <%= pp.getMoveDate() %></p>'
				                                        <% } %>
				                                        <% if(pp.getPyeong() != 0){%>
				                                        + 	'<p class="propertyDetailContentInner__pyeong"><%= pp.getPyeong() %>평</p>'
				                                        <% } %>
				                                        + '</div>'
				                                        + '<div class="propertyDetailContentInner propertyDetailContentBottom">'
				                                        <% if(pp.getPpOption() != null && pp.getPpOption().length() != 0){ %>
				                                        + 	'<p class="propertyDetailContentInner__option"><%= pp.getPpOption() %></p>'
				                                        <% } %>
				                                        <% if(pp.getPpInfo() != null && pp.getPpInfo().length() != 0){ %>
				                                        + '<p class="propertyDetailContentInner__info"><%= pp.getPpInfo() %></p>'
				                                        <% } %>
				                                        + '<p class="propertyDetailContentInner__brokerage"><%= pp.getBrokerage() %></p>'
				                                        + '<p class="propertyDetailContentInner__uploadDate">등록일 : <%= pp.getPpDate() %></p>'
				                                        + '</div>'
				                                        + '</div>'
				                                        + '</a>'
				                                        + '</li>'
	                                    <% } %>
                                    <% } %>
                                    $('.propertyList').html(properties);
                                    
                                },
                            })
                            
                        })
                    </script>
                    <!-- 
		                            <button onclick="location.href='<%= request.getContextPath() %>/list.bo?cpage=<%= currentPage - 1 %>'">&lt;</button>
                     -->
                </div>
            </div>
            <!-- TODO: ajax으로 페이징 처리 버튼 만들기, 부동산 관련 api 연동하기 -->
            <div class="other">
                asdasd
            </div>
        </div>
        <div id="propertyListCloseBtn">
            ◀
        </div>
    </section>
</body>
</html>