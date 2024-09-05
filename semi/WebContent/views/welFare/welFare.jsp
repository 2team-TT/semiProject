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
    
    <!-- j쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
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
                <form id="searchForm" method="post">
                    <div class="filter-inner">
                        <div class="filter-title">거주지</div>
                        <div id="filter-residence">
                            <select name="residence" class="filter-city">
                                <option value="seoul" hidden selected>시/도 선택</option>
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
                        </div>
                    </div>
                    <div class="filter-inner">
                        <div class="filter-title">나이</div>
                        <input type="number" name="age" class="filter-input"></div>
                    <div class="filter-inner">
                        <div class="filter-title">부서</div>
                        <div class="filter-checkbox-wrapper" id="deptFilter">
                            <input type="checkbox" name="byDept" id="searchCentralMinistry" class="filter-checkbox" value="1"><label for="searchCentralMinistry">중앙부처</label>
                            <input type="checkbox" name="byDept" id="searchGovernment" class="filter-checkbox" value="2"><label for="searchGovernment">지자체</label>
                            <input type="checkbox" name="byDept" id="searchPrivateSector" class="filter-checkbox" value="3"><label for="searchPrivateSector">민간</label>
                        </div>
                    </div>
                    <div class="filter-inner-big">
                        <div class="filter-title">필터</div>
                        <div class="filter-exception">
                            <div class="filter-subtitle">생애주기별</div>
                            <div class="filter-checkbox-wrapper" id="lifeCycleFilter">
                                <input type="checkbox" name="byLifeCycle" id="preg" class="filter-checkbox" value="임신출산"><label for="preg">임신 출산</label>
                                <input type="checkbox" name="byLifeCycle" id="infant" class="filter-checkbox" value="영유아"><label for="infant">영유아</label>
                                <input type="checkbox" name="byLifeCycle" id="children" class="filter-checkbox" value="아동"><label for="children">아동</label>
                                <input type="checkbox" name="byLifeCycle" id="teen" class="filter-checkbox" value="청소년"><label for="teen">청소년</label>
                                <input type="checkbox" name="byLifeCycle" id="youth" class="filter-checkbox" value="청년"><label for="youth">청년</label>
                                <input type="checkbox" name="byLifeCycle" id="middleAged" class="filter-checkbox" value="중장년"><label for="middleAged">중장년</label>
                                <input type="checkbox" name="byLifeCycle" id="elder" class="filter-checkbox" value="노인"><label for="elder">노인</label>
                            </div>
                            <div class="filter-subtitle">가구상황별</div>
                            <div class="filter-checkbox-wrapper" id="gaguFilter">
                                <div><input type="checkbox" name="byGagu" id="lowIncome" class="filter-checkbox" value="저소득"><label for="lowIncome">저소득</label></div>
                                <div><input type="checkbox" name="byGagu" id="disabledPerson" class="filter-checkbox" value="장애인"><label for="disabledPerson">장애인</label></div>
                                <div><input type="checkbox" name="byGagu" id="singleParentGrandchild" class="filter-checkbox" value="한부모조손"><label for="singleParentGrandchild">한부모 조손</label></div>
                                <div><input type="checkbox" name="byGagu" id="multipleChildren" class="filter-checkbox" value="다자녀"><label for="multipleChildren">다자녀</label></div>
                                <div><input type="checkbox" name="byGagu" id="multicultural" class="filter-checkbox" value="다문화탈북민"><label for="multicultural">다문화탈북민</label></div>
                                <div><input type="checkbox" name="byGagu" id="veterans" class="filter-checkbox" value="보훈대상자"><label for="veterans">보훈대상자</label></div>
                            </div>
                            <div class="filter-subtitle">관심주제별</div>
                            <div class="filter-checkbox-wrapper" id="interestFilter">
                                <input type="checkbox" name="byInterest" id="health" class="filter-checkbox" value="신체건강"><label for="health">신체건강</label>
                                <input type="checkbox" name="byInterest" id="livingSupport" class="filter-checkbox" value="생활지원"><label for="livingSupport">생활지원</label>
                                <input type="checkbox" name="byInterest" id="job" class="filter-checkbox" value="일자리"><label for="job">일자리</label>
                                <input type="checkbox" name="byInterest" id="safetyCrisis" class="filter-checkbox" value="안전위기"><label for="safetyCrisis">안전위기</label>
                                <input type="checkbox" name="byInterest" id="fosterCare" class="filter-checkbox" value="입양위탁"><label for="fosterCare">입양위탁</label>
                                <input type="checkbox" name="byInterest" id="microfinance" class="filter-checkbox" value="서민금융"><label for="microfinance">서민금융</label>
                                <input type="checkbox" name="byInterest" id="mentalHealth" class="filter-checkbox" value="정신건강"><label for="mentalHealth">정신건강</label>
                                <input type="checkbox" name="byInterest" id="house" class="filter-checkbox" value="주거"><label for="house">주거</label>
                                <input type="checkbox" name="byInterest" id="culture" class="filter-checkbox" value="문화여가"><label for="culture">문화여가</label>
                                <input type="checkbox" name="byInterest" id="education" class="filter-checkbox" value="교육"><label for="education">교육</label>
                                <input type="checkbox" name="byInterest" id="protectiveCare" class="filter-checkbox" value="보호돌봄"><label for="protectiveCare">보호돌봄</label>
                                <input type="checkbox" name="byInterest" id="law" class="filter-checkbox" value="법률"><label for="law">법률</label>
                            </div>
                        </div>
                    </div>
                    <div class="filter-btns">
                        <button id="filterSubmitBtn" class="btn" onclick="">확인</button>
                        <button type="reset" class="btn">초기화</button>
                        <button type="button" class="btn" onclick="filterOpen()">취소</button>
                    </div>
                </form>
            </div>
            <div id="main-contents__detail">
                <div class="welfare">
                    <div class="welfare__title">예시 타이틀</div>
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
    <script>
        $(document).ready(function() {
            $.ajax({
                url: 'controller.wf', // Servlet URL 설정
                type: 'GET', // 또는 POST
                data: {
                    
                },
                dataType: 'json', // 응답 데이터 타입
                success: function(response) {
                    $('#main-contents__detail').empty();
                    let welFareList = "";
                    let welFareDetailDefaultLink = "https://www.bokjiro.go.kr/ssis-tbu/twataa/wlfareInfo/moveTWAT52011M.do?wlfareInfoId=";
                    for(let i=0; i<response.length; i++){
                        let tags = extractFirstTags(response[i].RETURN_STR);
                        
                        welFareList += '<div class="welfare">'
                                        + '<div class="welfare__title">' + response[i].WLFARE_INFO_NM + '</div>'
                                        + '<div class="welfare__detail">'
                                        + '<div class="welfare__detail-description">' + response[i].WLFARE_INFO_OUTL_CN + '</div>'
                                        + '<div class="welfare__detail-wrapper">'
                                        + '<a href=' + welFareDetailDefaultLink + response[i].WLFARE_INFO_ID + '>' 
                                        + '<div class="welfare__detail-enroll">신청하기</div>'
                                        + '</a>'
                                        + '<div class="welfare__detail-inquiry">' + '문의전화 : ' + response[i].RPRS_CTADR + '</div>'
                                        + '</div>' // .welfare__detail-wrapper 닫기
                                        + '<div class="welfare__detail-tags">' 

                                        // 태그 div 추가 전에 값의 유효성 검사
                                        if (tags.INTRS_THEMA_CD) {
                                            welFareList += '<div class="tags">' + tags.INTRS_THEMA_CD + '</div>';
                                        }
                                        if (tags.FMLY_CIRC_CD) {
                                            welFareList += '<div class="tags">' + tags.FMLY_CIRC_CD + '</div>';
                                        }
                                        if (tags.BKJR_LFTM_CYC_CD) {
                                            welFareList += '<div class="tags">' + tags.BKJR_LFTM_CYC_CD + '</div>';
                                        }

                        welFareList    += '</div>' // .welfare__detail-tags 닫기
                                        + '</div>' // .welfare__detail 닫기
                                        + '</div>' // .welfare 닫기
                    }
                    $("#main-contents__detail").html(welFareList);
                },
                error: function() {
                    $('#main-contents__detail').html('<p>데이터를 불러오는데 실패했습니다.</p>');
                }
            });
        });

        // 태그의 값이 비어있는지 아닌지 확인하는 기능
        function extractFirstTags(returnStr) {
            let tags = {
                INTRS_THEMA_CD: "",
                FMLY_CIRC_CD: "",
                BKJR_LFTM_CYC_CD: ""
            };

            // 각 코드별로 첫 번째 태그 추출
            let parts = returnStr.split(';');
            parts.forEach(part => {
                let keyVal = part.split(':');
                let key = keyVal[0].trim();
                let values = keyVal[1].split(',');
                
                if (tags.hasOwnProperty(key) && values[0].trim() !== "") {
                    tags[key] = values[0].trim(); // 첫 번째 값만 저장
                }
            });
            return tags;
        }

        function submitSearch() {
            var formData = $('#searchForm').serialize(); // 폼 데이터 직렬화

            $.ajax({
                url: 'controller.wf', // 서블릿 URL
                type: 'POST',
                data: formData,
                dataType: 'json',
                success: function(response) {
                    displayResults(response); // 결과 표시 함수
                },
                error: function() {
                    $('#main-contents__detail').html('<p>데이터를 불러오는데 실패했습니다.</p>');
                }
            });
        }

        function displayResults(data) {
            $('#main-contents__detail').empty();
            data.forEach(function(item) {
                $('#main-contents__detail').append('<div>' + item.WLFARE_INFO_NM + '</div>');
            });
        }
    </script>
    
</body>
</html>