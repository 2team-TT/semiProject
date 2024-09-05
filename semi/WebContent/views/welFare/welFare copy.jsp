<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    
    <!-- 여백 제거 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css">
    <!-- 버튼 -->
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> -->
    
    <!-- css -->
    <link rel="stylesheet" href="./resources/css/welfareMain.css">
    <!-- js -->
    <script defer src="./resources/js/welfareMain.js"></script>
</head>
<body>
    <section id="section1">
        <ul>
            <li class="section-nav">
                <div class="section-nav__content">
                    <img src="./resources/img/img1.daumcdn.jpg" alt="">
                </div>
                <div class="section-nav__content"><a href="javascript:void(0)">asdf</a></div>
            </li>
            <li class="section-nav">
                <div class="section-nav__content">
                    <img src="./resources/img/img1.daumcdn.jpg" alt="">
                </div>
                <div class="section-nav__content"><a href="javascript:void(0)">asdf</a></div>
            </li>
            <li class="section-nav">
                <div class="section-nav__content">
                    <img src="./resources/img/img1.daumcdn.jpg" alt="">
                </div>
                <div class="section-nav__content"><a href="javascript:void(0)">asdf</a></div>
            </li>
            <li class="section-nav">
                <div class="section-nav__content">
                    <img src="./resources/img/img1.daumcdn.jpg" alt="">
                </div>
                <div class="section-nav__content"><a href="javascript:void(0)">asdf</a></div>
            </li>
            <li class="section-nav">
                <div class="section-nav__content">
                    <img src="./resources/img/img1.daumcdn.jpg" alt="">
                </div>
                <div class="section-nav__content"><a href="javascript:void(0)">asdf</a></div>
            </li>
            <li class="section-nav">
                <div class="section-nav__content">
                    <img src="./resources/img/img1.daumcdn.jpg" alt="">
                </div>
                <div class="section-nav__content"><a href="javascript:void(0)">asdf</a></div>
            </li>
            <li class="section-nav">
                <div class="section-nav__content">
                    <img src="./resources/img/img1.daumcdn.jpg" alt="">
                </div>
                <div class="section-nav__content"><a href="javascript:void(0)">asdf</a></div>
            </li>
        </ul>
    </section>
    <section id="section2">
        <div id="main-contents">
            <div id="main-contents__title">정책 조회</div>
            <div id="main-contents__filter" onclick="filterOpen()">¥ 필터</div>
            <div id="main-contents__filter-place">
                <form action="" method="get">
                    <div class="filter-inner">
                        <div class="filter-title">거주지</div>
                        <div id="filter-residence">
                            <select name="residence-first" class="filter-city">
                                <option value="" hidden selected>시/도 선택</option>
                                <option value="seoul">서울특별시</option>
                                <option value="busan">부산광역시</option>
                                <option value="daegu">대구광역시</option>
                                <option value="incheon">인천광역시</option>
                                <option value="gwangju">광주광역시</option>
                                <option value="daejeon">대전광역시</option>
                                <option value="ulsan">울산광역시</option>
                                <option value="sejoing">세종특별자치시</option>
                                <option value="gyeonggi">경기도</option>
                                <option value="chungcheongbuk">충청북도</option>
                                <option value="chungcheongnam">충청남도</option>
                                <option value="jeollanam">전라남도</option>
                                <option value="gyeongsangbuk">경상북도</option>
                                <option value="gyeongsangnam">경상남도</option>
                                <option value="jeju">제주특별자치도</option>
                                <option value="gangwon">강원특별자치도</option>
                                <option value="jeonbuk">전북특별자치도</option>
                            </select>
                            <select name="residence-second" class="filter-state">
                                <option value="" hidden selected>시/군/구 선택</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>
                    <div class="filter-inner">
                        <div class="filter-title">나이</div>
                        <input type="number" name="age" class="filter-input"></div>
                    <div class="filter-inner">
                        <div class="filter-title">부서</div>
                        <div class="filter-checkbox-wrapper">
                            <input type="checkbox" name="centralMinistry" id="searchCentralMinistry" class="filter-checkbox" value="centralMinistry"><label for="searchCentralMinistry">중앙부처</label>
                            <input type="checkbox" name="government" id="searchGovernment" class="filter-checkbox" value="government"><label for="searchGovernment">지자체</label>
                            <input type="checkbox" name="privateSector" id="searchPrivateSector" class="filter-checkbox" value="privateSector"><label for="searchPrivateSector">민간</label>
                        </div>
                    </div>
                    <div class="filter-inner-big">
                        <div class="filter-title">필터</div>
                        <div class="filter-exception">
                            <div class="filter-subtitle">생애주기별</div>
                            <div class="filter-checkbox-wrapper">
                                <input type="checkbox" name="byLifeCycle" id="preg" class="filter-checkbox" value="임신출산"><label for="preg">임신 출산</label>
                                <input type="checkbox" name="byLifeCycle" id="infant" class="filter-checkbox" value="영유아"><label for="infant">영유아</label>
                                <input type="checkbox" name="byLifeCycle" id="children" class="filter-checkbox" value="아동"><label for="children">아동</label>
                                <input type="checkbox" name="byLifeCycle" id="teen" class="filter-checkbox" value="청소년"><label for="teen">청소년</label>
                                <input type="checkbox" name="byLifeCycle" id="youth" class="filter-checkbox" value="청년"><label for="youth">청년</label>
                                <input type="checkbox" name="byLifeCycle" id="middleAged" class="filter-checkbox" value="중장년"><label for="middleAged">중장년</label>
                                <input type="checkbox" name="byLifeCycle" id="elder" class="filter-checkbox" value="노인"><label for="elder">노인</label>
                            </div>
                            <div class="filter-subtitle">가구상황별</div>
                            <div class="filter-checkbox-wrapper">
                                <input type="checkbox" name="by가구상황별" id="lowIncome" class="filter-checkbox" value="저소득"><label for="lowIncome">저소득</label>
                                <input type="checkbox" name="by가구상황별" id="disabledPerson" class="filter-checkbox" value="장애인"><label for="disabledPerson">장애인</label>
                                <input type="checkbox" name="by가구상황별" id="singleParentGrandchild" class="filter-checkbox" value="한부모조손"><label for="singleParentGrandchild">한부모 조손</label>
                                <input type="checkbox" name="by가구상황별" id="multipleChildren" class="filter-checkbox" value="다자녀"><label for="multipleChildren">다자녀</label>
                                <input type="checkbox" name="by가구상황별" id="multicultural" class="filter-checkbox" value="다문화탈북민"><label for="multicultural">다문화탈북민</label>
                                <input type="checkbox" name="by가구상황별" id="veterans" class="filter-checkbox" value="보훈대상자"><label for="veterans">보훈대상자</label>
                            </div>
                            <div class="filter-subtitle">관심주제별</div>
                            <div class="filter-checkbox-wrapper">
                                <input type="checkbox" name="exceptionCentralMinistry" id="exceptionCentralMinistry" class="filter-checkbox" value="centralMinistry"><label for="exceptionCentralMinistry">중앙부처</label>
                                <input type="checkbox" name="exceptionGovernment" id="exceptionGovernment" class="filter-checkbox" value="government"><label for="exceptionGovernment">지자체</label>
                                <input type="checkbox" name="exceptionPrivateSector" id="exceptionPrivateSector" class="filter-checkbox" value="privateSector"><label for="exceptionPrivateSector">민간</label>
                            </div>
                        </div>
                    </div>
                    <div class="filter-btns">
                        <button type="submit" class="btn">확인</button>
                        <button type="reset" class="btn btn-warning">초기화</button>
                        <button type="button" class="btn btn-warning" onclick="filterOpen()">취소</button>
                    </div>
                </form>
            </div>
            <div id="main-contents__detail">
                <div class="welfare">
                    <div class="welfare__title">공공산림가꾸기</div>
                    <div class="welfare__detail">
                        <div class="welfare__detail-description">
                            청년 실업자나 장년층 퇴직자 등을 산림사업에 투입하여 일자리 창출에 기여합니다.
                        </div>
                        <div class="welfare__detail-wrapper">
                            <a href="javascript:void(0)">
                                <div class="welfare__detail-enroll">
                                    신청하기
                                </div>
                            </a>
                            <div class="welfare__detail-inquiry">문의전화 : 010-1234-5678</div>
                        </div>
                        <div class="welfare__detail-tags">
                            <div class="tags">
                                태그1
                            </div>
                            <div class="tags">
                                태그2
                            </div>
                        </div>
                    </div>
                </div>
                <div class="welfare">
                    <div class="welfare__title">재취업지원서비스 시행지원</div>
                    <div class="welfare__detail">
                        <div class="welfare__detail-description">
                            재취업지원서비스 제도가 현장에 안착할 수 있도록 사업주에게 제도설계 컨설팅, 인사 담당자 교육 등의 서비스를 제공합니다.
                        </div>
                        <div class="welfare__detail-wrapper">
                            <a href="javascript:void(0)">
                                <div class="welfare__detail-enroll">
                                    신청하기
                                </div>
                            </a>
                            <div class="welfare__detail-inquiry">문의전화 : 010-1234-5678</div>
                        </div>
                            <div class="welfare__detail-tags">
                                <div class="tags">
                                    태그1
                                </div>
                                <div class="tags">
                                    태그2
                                </div>
                                <div class="tags">
                                    태그3
                                </div>
                                <div class="tags">
                                    태그4
                                </div>
                                <div class="tags">
                                    태그5
                                </div>
                                <div class="tags">
                                    태그6
                                </div>
                                <div class="tags">
                                    태그7
                                </div>
                                <div class="tags">
                                    태그8
                                </div>
                                <div class="tags">
                                    태그9
                                </div>
                            </div>
                    </div>
                </div>
                <div class="welfare">
                    <div class="welfare__title">청년 자격증 지원 사업</div>
                    <div class="welfare__detail">
                        <div class="welfare__detail-description">
                            로렘 입숨(lorem ipsum; 줄여서 립숨, lipsum)은 출판이나 그래픽 디자인 분야에서 폰트, 타이포그래피, 레이아웃 같은 그래픽 요소나 시각적 연출을 보여줄 때 사용하는 
                            표준 채우기 텍스트로, 최종 결과물에 들어가는 실제적인 문장 내용이 채워지기 전에 시각 디자인 프로젝트 모형의 채움 글로도 이용된다. 이런 용도로 사용할 때 로렘 입숨을 
                            그리킹(greeking)이라고도 부르며, 때로 로렘 입숨은 공간만 차지하는 무언가를 지칭하는 용어로도 사용된다.
                        </div>
                        <div class="welfare__detail-wrapper">
                            <a href="javascript:void(0)">
                                <div class="welfare__detail-enroll">
                                    신청하기
                                </div>
                            </a>
                            <div class="welfare__detail-inquiry">문의전화 : 010-1234-5678</div>
                        </div>
                        <div class="welfare__detail-tags">
                            <div class="tags">
                                태그1
                            </div>
                            <div class="tags">
                                태그2
                            </div>
                            <div class="tags">
                                태그3
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>