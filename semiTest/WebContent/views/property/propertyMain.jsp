<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script defer src="./resources/js/welfareMain.js"></script>
    <script defer src="./resources/js/PropertyMain.js"></script>
</head>
<body>
    <section id="section">
        <div id="propertyRoot">
            <div class="menuWrap menuTopWrap">
                <div class="menuWrap__inner menuTopWrap__inner">
                    <a href="javascript:void(0)" class="building-type isSelected">원룸투룸</a>
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
                                <div class="filter_popup__content-inner">
                                    <div class="content_title price_title">전세가격</div>
                                    <div class="price_btnWrap" align="center">
                                        <button type="button" class="btn-price" value="5000">~5천</button>
                                        <button type="button" class="btn-price" value="6000">~6천</button>
                                        <button type="button" class="btn-price" value="7000">~7천</button>
                                        <button type="button" class="btn-price" value="8000">~8천</button>
                                        <button type="button" class="btn-price" value="9000">~9천</button>
                                        <button type="button" class="btn-price" value="10000">~1억</button>
                                        <button type="button" class="btn-price" value="20000">~2억</button>
                                        <button type="button" class="btn-price" value="30000">~3억</button>
                                        <button type="button" class="btn-price" value="40000">~4억</button>
                                        <button type="button" class="btn-price" value="50000">~5억</button>
                                        <button type="button" class="btn-price" value="60000">~6억</button>
                                        <button type="button" class="btn-price" value="70000">~7억</button>
                                        <button type="button" class="btn-price" value="80000">~8억</button>
                                        <button type="button" class="btn-price" value="90000">~9억</button>
                                        <button type="button" class="btn-price" value="100000">~10억</button>
                                        <div class="price-result" id="price-result-jeonse" align="right">
                                            가격표시값삽입
                                        </div>
                                    </div>
                                </div>
                                <div class="filter_popup__content-inner">
                                    <div class="content_title price_title">월세가격</div>
                                    <div class="price_btnWrap" align="center">
                                        <button type="button" class="btn-price" value="10">~10</button>
                                        <button type="button" class="btn-price" value="20">~20</button>
                                        <button type="button" class="btn-price" value="30">~30</button>
                                        <button type="button" class="btn-price" value="40">~40</button>
                                        <button type="button" class="btn-price" value="50">~50</button>
                                        <button type="button" class="btn-price" value="60">~60</button>
                                        <button type="button" class="btn-price" value="70">~70</button>
                                        <button type="button" class="btn-price" value="80">~80</button>
                                        <button type="button" class="btn-price" value="90">~90</button>
                                        <button type="button" class="btn-price" value="100">~100</button>
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
                                        <button type="button" class="btn-size" value="10p">~10평</button>
                                        <button type="button" class="btn-size" value="20p">~20평</button>
                                        <button type="button" class="btn-size" value="30p">~30평</button>
                                        <button type="button" class="btn-size" value="40p">~40평</button>
                                        <button type="button" class="btn-size" value="50p">~50평</button>
                                        <button type="button" class="btn-size" value="60p">~60평</button>
                                        <button type="button" class="btn-size" value="70p">~70평</button>
                                        <button type="button" class="btn-size" value="over70p">~70평</button>
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
                                        <button type="button" class="btn-date" value="1y">~1년</button>
                                        <button type="button" class="btn-date" value="2y">~2년</button>
                                        <button type="button" class="btn-date" value="3y">~3년</button>
                                        <button type="button" class="btn-date" value="4y">~4년</button>
                                        <button type="button" class="btn-date" value="5y">~5년</button>
                                        <button type="button" class="btn-date" value="6y">~6년</button>
                                        <button type="button" class="btn-date" value="7y">~7년</button>
                                        <button type="button" class="btn-date" value="8y">~8년</button>
                                        <button type="button" class="btn-date" value="9y">~9년</button>
                                        <button type="button" class="btn-date" value="over9y">9년~</button>
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
                                                <button type="button" class="btn-detail" name="floor" value="1f">1층</button>
                                                <button type="button" class="btn-detail" name="floor" value="2f">2층이상</button>
                                                <button type="button" class="btn-detail" name="floor" value="0f">반지하</button>
                                                <button type="button" class="btn-detail" name="floor" value="tf">탑층</button>
                                            </div>
                                            <!-- <div id="pyeongBtn" class="detail-divBtn">평수</div>
                                            <div id="pyeongWrap" class="detail-wrap">
                                                <div class="pyeongWrapInner">
                                                    <button type="button" class="btn-detail" name="pyeong" value="10p">~10평</button>
                                                    <button type="button" class="btn-detail" name="pyeong" value="20p">~20평</button>
                                                    <button type="button" class="btn-detail" name="pyeong" value="30p">~30평</button>
                                                    <button type="button" class="btn-detail" name="pyeong" value="40p">~40평</button>
                                                </div>
                                                <div class="pyeongWrapInner">
                                                    <button type="button" class="btn-detail" name="pyeong" value="50p">~50평</button>
                                                    <button type="button" class="btn-detail" name="pyeong" value="60p">~60평</button>
                                                    <button type="button" class="btn-detail" name="pyeong" value="70p">~70평</button>
                                                    <button type="button" class="btn-detail" name="pyeong" value="80p">70평~</button>
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
                                                <button type="button" class="btn-detail" name="heating" value="central">중앙난방</button>
                                                <button type="button" class="btn-detail" name="heating" value="individual">개별난방</button>
                                                <button type="button" class="btn-detail" name="heating" value="district">지역난방</button>
                                            </div>
                                            <div id="elevatorBtn" class="detail-divBtn">엘리베이터</div>
                                            <div id="elevatorWrap" class="detail-wrap">
                                                <button type="button" class="btn-detail" name="elevator" value="yes">엘리베이터 있음</button>
                                            </div>
                                            <div id="householdsBtn" class="detail-divBtn">세대수</div>
                                            <div id="householdsWrap" class="detail-wrap">
                                                <div class="householdsWrapInner">
                                                    <button type="button" class="btn-detail" name="households" value="100">~100</button>
                                                    <button type="button" class="btn-detail" name="households" value="300">~300</button>
                                                    <button type="button" class="btn-detail" name="households" value="500">~500</button>
                                                </div>
                                                <div class="householdsWrapInner">
                                                    <button type="button" class="btn-detail" name="households" value="700">~700</button>
                                                    <button type="button" class="btn-detail" name="households" value="1000">~1000</button>
                                                    <button type="button" class="btn-detail" name="households" value="2000">~2000</button>
                                                </div>
                                            </div>
                                            <div id="parkingBtn" class="detail-divBtn">총주차대수</div>
                                            <div id="parkingWrap" class="detail-wrap">
                                                <div class="parkingWrapInner">
                                                    <button type="button" class="btn-detail" name="parking" value="1pk">1대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="2pk">2대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="3pk">3대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="4pk">4대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="5pk">5대</button>
                                                </div>
                                                <div class="parkingWrapInner">
                                                    <button type="button" class="btn-detail" name="parking" value="10pk">~10대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="30pk">~30대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="50pk">~50대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="100pk">~100대</button>
                                                    <button type="button" class="btn-detail" name="parking" value="over100pk">100대~</button>
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
    <section>
        <!-- <div>aasada</div> -->
        
    </section>
</body>
</html>