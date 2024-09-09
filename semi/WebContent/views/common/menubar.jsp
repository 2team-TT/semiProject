<%@page import="com.kh.member.model.vo.User" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <% String contextPath=request.getContextPath(); User u=(User)session.getAttribute("u"); String
            alertMsg=(String)session.getAttribute("alertMsg"); %>



            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- css 초기화 -->

                <!-- 메타리얼 아이ㅇ콘 -->
                <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

                <!-- swiper -->
                <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
                <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js" defer></script>

                <!-- lodash -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
                    integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
                    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

                <!-- gsap -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js"
                    integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ=="
                    crossorigin="anonymous"></script>

                <!-- GSAP Core -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.0/gsap.min.js"></script>
                <!-- GSAP ScrollToPlugin -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.0/ScrollToPlugin.min.js"></script>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>






                <!-- css파일 -->
                <link rel="stylesheet" href="resources/css/menubar.css">
                <script src="resources/js/menubar.js" defer></script>
            </head>

            <body>

                <%if(alertMsg!=null){%>
                    <script>
                        alert("<%=alertMsg%>")

                    </script>
                    <%session.removeAttribute("alertMsg"); %>
                        <%}%>



                            <!-- 헤더 -->
                            <header>
                                <div class="big">

                                    <!-- 로고 -->
                                    <a class="logo" href="<%=contextPath%>">
                                        <img src="./resources/img/KakaoTalk_20240730_090734755.png" alt="">
                                        <img src="./resources/img/KakaoTalk_20240730_145616126.png" alt="">
                                    </a>

                                    <!-- 메뉴바 -->
                                    <div class="menubar">
                                        <!-- 네비 -->
                                        <ul class="navi">
                                            <li>
                                                <a href="<%=contextPath%>/freeBoardList.bo?cpage=1">커뮤니티</a>

                                            </li>
                                            <li>
                                                <a href="<%= contextPath %>/producutMain.me">쇼핑</a>
                                            </li>
                                            <li>
                                                <a href="<%= contextPath %>/main.prop">부동산 / 이사</a>
                                            </li>
                                            <li>
                                                <a href="">이벤트</a>
                                            </li>
                                            <li>
                                                <a href="<%= contextPath %>/main.wf">정책</a>
                                            </li>

                                        </ul>



                                        <!-- 로그인영역 -->
                                        <div class="login">
                                            <%if(u==null){ %>

                                                <div class="login__not">
                                                    <button type="button" id="login_btn" class="btn btn-light"
                                                        data-toggle="modal" data-target="#loginModal">
                                                        로그인
                                                    </button>

                                                </div>

                                                <%}else{ %>


                                                    <div class="profile">


                                                        <div class="profile__container">
                                                            <div class="profile__container-up">
                                                                <div class="profile__container-up-img">
                                                                    <div class="profile__img"><img src="" alt=""></div>

                                                                </div>
                                                                <div class="profile__container-up-text">
                                                                    <%if(u.getUserNick()==null){ %>
                                                                        <div class="user__name"><b>
                                                                                <%=u.getUserId() %>
                                                                            </b> 님 반갑습니다.</div>
                                                                        <%}else{ %>
                                                                            <div class="user__name"><b>
                                                                                    <%=u.getUserNick() %>
                                                                                </b> 님 반갑습니다.</div>
                                                                            <%} %>
                                                                                <div class="a__box">
                                                                                    <a href="">쪽지</a>
                                                                                    <a
                                                                                        href="<%= contextPath %>/myPageInfo.me">마이페이지</a>
                                                                                    <a
                                                                                        href="<%=contextPath%>/logOut.mo">로그아웃</a>
                                                                                </div>

                                                                </div>

                                                            </div>
                                                            <div class="profile__container-down">
                                                                <a
                                                                    href="<%=contextPath%>/household.hh?userNo=<%=u.getUserNo()%>">가계부</a>
                                                                <a href="">스케줄 관리</a>
                                                                <a
                                                                    href="<%=contextPath%>/chatroom.ch?userNo=<%=u.getUserNo()%>">채팅</a>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <%} %>


                                        </div>

                                    </div>
























                                    <!-- 검색 -->
                                    <div class="search">

                                        <!-- 검색 입력칸 -->
                                        <form class="search__bar" action="search.do" method="get">
                                            <div class="search__input">


                                                <input type="search" name="search" id="search">

                                                <div class="auto__search">
                                                    <div class="lately__search hidden">최근 검색</div>
                                                    <div class="cookie__search">
                                                        <!-- <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div>
                                                        <div class="lately__searchs">
                                                            <span class="searchs">asdf</span>
                                                            <span class="material-icons">close</span>

                                                        </div> -->
                                                    </div>

                                                    <!-- 자동완성 넣을 곳 -->
                                                    <ul class="auto_searchList">

                                                    </ul>
                                                </div>


                                            </div>
                                            <button class="search__icon material-icons">search</button>

                                        </form>


                                        <!-- 인기 검색어 , 추천 리스트 -->
                                        <div class="search__list">



                                            <div class="list best">

                                                <div class="list__title"><a href="">인기검색어</a></div>


                                                <div class="swiper-container">
                                                    <div class="swiper-wrapper">
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>
                                                        <div class="swiper-slide">
                                                            1
                                                        </div>




                                                    </div>
                                                </div>



                                            </div>



                                        </div>
                                    </div>






                                </div>



                                <div class="small">

                                    <div class="small__main">

                                        <div class="small__logo"><a href="<%=contextPath%>">Leave Traces</a></div>

                                        <div class="small_menu">

                                            <div class="material-icons icon search__click">search</div>
                                            <div class="material-icons icon menu__click">menu</div>

                                        </div>




                                    </div>




                                </div>









                            </header>





                            <!-- 로그인 모델 -->
                            <div class="modal" id="loginModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">로그인</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <form action="<%=contextPath %>/login.mo" method="post">
                                            <!-- Modal body -->
                                            <div class="modal-body">



                                                <table class="login_modal">

                                                    <tr>
                                                        <td>아이디</td>
                                                        <td>
                                                            <input type="text" required name="id">
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>비밀번호</td>
                                                        <td>
                                                            <input type="password" name="pwd">
                                                        </td>
                                                    </tr>

                                                </table>




                                                <div class="login_search">
                                                    <a href="<%=contextPath%>/searchUseridpwd.mo?num=1">아이디 찾기</a>
                                                    <a href="<%=contextPath%>/searchUseridpwd.mo?num=2">비밀번호 찾기</a>
                                                </div>

                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <button type="submit">로그인</button>
                                                <a href="<%=contextPath %>/enroll.mo">회원가입</a>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>


                            <div class="modal" id="loginModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title">로그인</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <form action="<%=contextPath %>/login.mo" method="post">
                                            <!-- Modal body -->
                                            <div class="modal-body">



                                                <table class="login_modal">

                                                    <tr>
                                                        <td>아이디</td>
                                                        <td>
                                                            <input type="text" required name="id">
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>비밀번호</td>
                                                        <td>
                                                            <input type="password" name="pwd">
                                                        </td>
                                                    </tr>

                                                </table>




                                                <div class="login_search">
                                                    <a href="">아이디 찾기</a>
                                                    <a href="">비밀번호 찾기</a>
                                                </div>

                                            </div>

                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <button type="submit">로그인</button>
                                                <a href="<%=contextPath %>/enroll.mo">회원가입</a>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>













                            <section class="side_menu side_content">


                                <div class="side__profile">

                                    <%if(u==null) {%>

                                        <div class="side_login_btn">

                                            <button type="button" class="btn btn-light" data-toggle="modal"
                                                data-target="#loginModal">
                                                로그인
                                            </button>

                                        </div>



                                        <%}else{ %>
                                            <div class="profile__img">
                                                <img src="./resources/img/나노머신.jpg" alt="">
                                            </div>
                                            <div class="profile__container">
                                                <div class="profile__id">asdf 님 반갑습니다.</div>
                                                <div class="profile__menu">
                                                    <a href="<%= contextPath %>/myPageInfo.me">마이페이지</a>
                                                    <a href="<%=contextPath%>/logOut.mo">로그아웃</a>
                                                </div>
                                            </div>
                                            <%} %>


                                </div>


                                <div class="side_cont">
                                    <%if(u==null) {%>



                                        <%}else{ %>
                                            <a href="">알림</a>
                                            <a href="">스계줄관리</a>
                                            <a href="<%=contextPath%>/household.hh?userNo=<%=u.getUserNo()%>">가계부</a>
                                            <a href="<%=contextPath%>/chatroom.ch?userNo=<%=u.getUserNo()%>">채팅</a>


                                            <%} %>
                                </div>




                                <ul class="side_navi side">

                                    <div class="side__navi__main">
                                        <li>
                                            <a class="side__btn__community"
                                                href="<%=contextPath%>/freeBoardList.bo?cpage=1">커뮤니티</a>

                                        </li>
                                        <li>
                                            <a class="side__btn__shopping" href="<%= contextPath %>/producutMain.me">쇼핑</a>
                                        </li>
                                        <li>
                                            <a class="side__btn__house" href="<%= contextPath %>/main.prop">부동산 / 이사</a>
                                        </li>
                                        <li>
                                            <a>이벤트</a>
                                        </li>
                                        <li>
                                            <a href="<%= contextPath %>/main.wf">정책</a>
                                        </li>
                                    </div>

                                    <!-- <div class="side__navi__community">
                <li>
                    <div>꿀팁</div>
                    
                </li>
                <li>
                    <div>자유게시판</div>
                </li>
                <li>
                    <div>너의 레시피</div>
                </li>
                <li>
                    <div>중고</div>
                </li>
                <li>
                    <div>정책</div>
                </li>
            </div>

            <div class="side__navi__shopping">
                <li>
                    <div>가구</div>
                    
                </li>
                <li>
                    <div>식재료</div>
                </li>
                <li>
                    <div>이거저것 </div>
                </li>
                <li>
                    <div>툴툴</div>
                </li>
                <li>
                    <div>ㅎㅎㅎ책</div>
                </li>
            </div>

            <div class="side__navi__house">
                <li>
                    <div>부동산 조회</div>
                    
                </li>
                <li>
                    <div>이사업체</div>
                </li>
                
            </div> -->


                                </ul>


                                <ul class="side_footer">
                                    <li><a href="">공지사항</a></li>
                                    <li><a href="">고객센터</a></li>
                                    <li><a href="">문의</a></li>

                                </ul>

                                <button class="side__btn out material-icons">logout</button>

                            </section>



                            <!-- 사이드 검색창 -->
                            <section class="side__search side_content">

                                <h2>검색</h2>

                                <div class="side__searchbar">
                                    <form action="search.do">
                                        <div class="side_input_search">
                                            <input type="search" name="search" id="side_search">


                                            <button class="side_search__icon material-icons">search</button>

                                        </div>



                                    </form>




                                </div>

                                <div class="auto__search">
                                    <div class="lately__search hidden">최근 검색</div>
                                    <div class="cookie__search">

                                        <!-- <div class="lately__searchs">
                                            <span class="searchs">asdf</span>
                                            <span class="material-icons">close</span>

                                        </div> -->
                                    </div>
                                    <div class="auto_side_search"></div>

                                </div>



                                <div class="side__manysearch">

                                    <div class="side_best">인기검색어</div>
                                    <!-- <div class="side_hot">핫 키워드</div> -->
                                </div>

                                <div class="side_search_list">

                                    <ul class="side_best_list">
                                        <li>
                                            <a href="<%=contextPath%>/search.do?search=">1.asdfasdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">2.asdfasdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">3.asdfasdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">4.asdfasdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">5.asdfasdfasdfas</a>
                                        </li>
                                    </ul>


                                    <!-- <ul class="side_hot_list">
                                        <li>
                                            <a href="">1.asdfㅁㄴㅇㄻㄴㅇㄹsdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">2.asdfasdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">3.asdfasdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">4.asdfasdfasdfas</a>
                                        </li>
                                        <li>
                                            <a href="">5.asdfasdfasdfas</a>
                                        </li>
                                    </ul> -->



                                </div>

                                <button class="side__btn out material-icons">logout</button>

                            </section>




                            <div id="to-top">
                                <div class="material-icons">arrow_upward</div>
                            </div>


                            <script>




                                function bestSwiper() {


                                    new Swiper('header .swiper-container', {
                                        direction: 'vertical',
                                        autoplay: {
                                            delay: 4000,
                                        },
                                        loop: true,
                                        observer: true,
                                        observeParents: true,
                                        loopedSlides: 1,
                                        loopAdditionalSlides: 1,

                                    });
                                    //console.log(222222222222222222)


                                }






                                function test() {
                                    $.ajax({
                                        url: "bestsearchList.mo",
                                        type: "get",
                                        success: function (list) {
                                            //console.log(list)

                                            let value = ""
                                            for (let i = 0; i < list.length; i++) {

                                                // console.log(list[i].sName)
                                                value += " <li>"
                                                    + "<a href='<%=contextPath%>/search.do?search=" + list[i].sName + "'>" + (i + 1) + ". " + list[i].sName + "</a>"
                                                    + "</li>"
                                                $('.search__list .best .swiper-wrapper').children().eq(i).text(i + 1 + ' ' + list[i].sName)
                                                // console.log( $('.search__list .best .swiper-wrapper').children().eq(i).text())
                                            }
                                            $('.side_best_list').html(value)

                                        },
                                        error: function () {
                                            console.log("인기검색어 불려오기 실패")
                                        },
                                        complete: function () {
                                            console.log("실행")
                                        }
                                    })

                                }

                                function latelySearch() {
                                    $.ajax({
                                        url: "latelySearch.mo",
                                        success: (list) => {
                                            // console.log(list)
                                            if (list) {
                                                $('.lately__search').removeClass('hidden')
                                                let value = "";

                                                for (let i = 0; i < list.length; i++) {
                                                    value += " <div class='lately__searchs'>"
                                                        + "<input type='hidden' value=" + list[i].sNo + ">"
                                                        + "<span class='searchs'>" + list[i].sName + "</span>"
                                                        + "<span class='material-icons close'>close</span>"
                                                        + "</div>"


                                                }

                                                $('.search .auto__search .cookie__search').html(value);
                                                $('.side__search .auto__search .cookie__search').html(value)

                                                $('.search .auto__search .cookie__search .lately__searchs').click(function () {
                                                    $('#search').val($(this).children('.searchs').text())
                                                    // console.log($(this).text())

                                                })
                                                $('.side__search .auto__search .cookie__search .lately__searchs .searchs').click(function () {
                                                    $('#side_search').val($(this).children('.searchs').text())
                                                    // console.log($(this).text())

                                                })


                                                $('.lately__searchs .close').on('click', function () {
                                                    const sNo = $(this).parent().children('input').val()

                                                    delectSearch(sNo)
                                                })



                                            }
                                        },
                                        error: () => {

                                        }
                                    })
                                }



                                function delectSearch(sNo) {
                                    $.ajax({
                                        url: "delectSearch.mo",
                                        data: {
                                            sNo: sNo,

                                        },
                                        type: "get",
                                        success: (result) => {

                                            if (result === "yyyy") {
                                                latelySearch()
                                            } else {

                                            }
                                        },
                                        error: () => { }
                                    })
                                }


                                $('#search').click(latelySearch())
                                $('#side_search').click(latelySearch())



                                $(function () {


                                    test();
                                    // latelySearch()


                                    setTimeout(function () {
                                        bestSwiper()
                                    }, 1000)

                                    $('#search').keyup(function () {

                                        $.ajax({
                                            url: "searchLikeList.mo",
                                            data: {
                                                searchContent: $('#search').val()
                                            },
                                            type: "get",
                                            success: function (list) {
                                                // console.log(list)
                                                let value = ""

                                                for (let i = 0; i < list.length; i++) {
                                                    value += "<li>" + list[i].sName + "</li>"
                                                }
                                                console.log(value)
                                                $('.auto_searchList').html(value);
                                                $('.auto_searchList>li').click(function () {
                                                    $('#search').val($(this).text())
                                                    // console.log($(this).text())

                                                })

                                            },
                                            error: function () {
                                                console.log("검색 통신 실패")
                                            },

                                        })


                                    })




                                    $('#side_search').keyup(function () {
                                        // console.log($('#side_search').val())
                                        $.ajax({
                                            url: "searchLikeList.mo",
                                            data: {
                                                searchContent: $('#side_search').val()
                                            },
                                            type: "get",
                                            success: function (list) {
                                                // console.log(list)
                                                let value = ""

                                                for (let i = 0; i < list.length; i++) {
                                                    value += "<div>" + list[i].sName + "</div>"
                                                }
                                                // console.log(value)
                                                $('.auto_side_search').html(value);
                                                $('.auto_side_search>div').click(function () {
                                                    $('#side_search').val($(this).text())
                                                    console.log($(this).text())

                                                })

                                            },
                                            error: function () {
                                                console.log("검색 통신 실패")
                                            },

                                        })


                                    })



                                })

                                // ScrollToPlugin을 GSAP에 등록
                                // 이 코드는 ScrollToPlugin을 사용하기 위해 반드시 필요.
                                gsap.registerPlugin(ScrollToPlugin);

                                // '#to-top' ID를 가진 요소를 선택하여 toTopEl 변수에 저장
                                // 이 요소는 페이지 상단으로 스크롤할 때 나타나는 버튼.
                                const toTopEl = document.querySelector('#to-top');

                                // 사용자가 스크롤을 할 때마다 이벤트가 발생하도록 설정
                                // _.throttle()은 스크롤 이벤트의 빈도를 제한하여 성능을 최적화하는 역할을 함.
                                window.addEventListener('scroll', _.throttle(function () {
                                    // 현재 스크롤 위치를 콘솔에 출력하여 확인
                                    // console.log(window.scrollY);

                                    // 스크롤 위치가 500픽셀을 넘으면 toTopEl 요소를 화면에 나타나도록 설정
                                    if (window.scrollY > 500) {
                                        // GSAP을 사용해 toTopEl 버튼을 x축으로 0 위치로 이동시켜 화면에 나타나게 함.
                                        gsap.to(toTopEl, {
                                            duration: 0.2, // 애니메이션 지속 시간 (0.2초)
                                            x: 0 // x축 위치를 0으로 설정하여 버튼이 화면에 나타남.
                                        });
                                    } else {
                                        // 스크롤 위치가 500픽셀 이하이면 toTopEl 요소를 화면에서 숨김.
                                        // x축 위치를 100으로 이동시켜 화면 밖으로 사라지게 함.
                                        gsap.to(toTopEl, {
                                            duration: 0.2, // 애니메이션 지속 시간 (0.2초)
                                            x: 100 // x축 위치를 100으로 설정하여 버튼이 화면 밖으로 이동.
                                        });
                                    }
                                }, 300)); // 300ms(0.3초)마다 스크롤 이벤트를 처리하도록 제한

                                // toTopEl 버튼이 클릭되었을 때의 이벤트 처리
                                toTopEl.addEventListener('click', function () {
                                    // 클릭 이벤트가 발생했음을 콘솔에 출력하여 확인
                                    console.log('Button clicked');

                                    // GSAP을 사용해 페이지를 상단으로 스크롤
                                    gsap.to(window, {
                                        duration: 0.5, // 애니메이션 지속 시간 (0.7초)
                                        scrollTo: { y: 0, autoKill: false } // y축 위치를 0으로 설정하여 페이지 상단으로 스크롤
                                        // autoKill: false는 사용자가 중간에 스크롤을 시도해도 애니메이션이 중단되지 않도록 함.
                                    });
                                });


                            </script>


            </body>

            </html>