<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!-- css 초기화 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" />

        <!-- 메타리얼 아이ㅇ콘 -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- swiper -->
        <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
        <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js" defer></script>

        <!-- css 파일 -->
        <link rel="stylesheet" href="./resources/css/index.css">
        <script src="./resources/js/index.js" defer></script>

    </head>

    <body>


        <%@include file="./views/common/menubar.jsp" %>

            <!-- 슬라이드 영역 -->
            <section class="slide__view first">

                <div class="silde_area">

                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="javascript:void(0)">
                                    <img src="https://image11.coupangcdn.com/image/cmg/oms/banner/bfb8adee-93bc-40c8-b60c-6cdef3f45781_720x322.png"
                                        alt="">
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="javascript:void(0)">
                                    <img src="https://image11.coupangcdn.com/image/cmg/oms/banner/7244df41-a9f6-4972-bc86-3e85378a3f9d_720x322.jpg"
                                        alt="">
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="javascript:void(0)">
                                    <img src="https://image11.coupangcdn.com/image/cmg/oms/banner/7daa6090-6e60-4c9f-b92f-853d3c3c15ec_720x322.png"
                                        alt="">
                                </a>
                            </div>

                            <div class="swiper-slide">
                                <a href="javascript:void(0)">
                                    <img src="https://image11.coupangcdn.com/image/cmg/oms/banner/9f21646e-4e49-410e-b82c-5bb360b6e93c_720x322.png"
                                        alt="">
                                </a>
                            </div>

                        </div>

                    </div>

                    <div class="swiper-prev">
                        <div class="material-icons btn__prev">play_circle_outline</div>

                    </div>
                    <div class="swiper-next">
                        <div class="material-icons btn__next">play_circle_outline</div>


                    </div>
                    <div class="swiper-pagination"></div>

                </div>



            </section>


            <section class="board_content">
                <!--  커뮤니티 인기글-->
                <div class="content_community">
                    <!-- 커뮤니티 게시글 영역 -->
                    <div class="community_area">
                        <div class="community_area_title">꿀팁</div>
                        <div class="community_area_choose">
                            <span class="honeytip">꿀팁</span>
                            <span class="best_community">인기게시글</span>
                        </div>


                        <!-- 꿀팁 게시판  테이블-->
                        <table class="community_area_table honeytip_table">
                            <tr>
                                <td>순위</td>
                                <td>제목 꿀팁</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목 ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇ</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목 ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇ</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목 ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇ</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목asdfasdfasdfasdfasdfasasdfasdfasdfasdfasdfasddf</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                        </table>


                        <!-- 인기게시글 테이블 -->
                        <table class="community_area_table best_community_table">
                            <tr>
                                <td>순위</td>
                                <td>제목 인기게시글</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목 ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇ</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목 ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇ</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목 ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇ</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                            <tr>
                                <td>순위</td>
                                <td>제목asdfasdfasdfasdfasdfasasdfasdfasdfasdfasdfasddf</td>
                                <td>
                                    <img src="./resources/img/foot.png" alt="">
                                    <span>1231</span>
                                </td>
                            </tr>
                        </table>
                    </div>


                    <!-- 이벤트 영역 / 공지사항 -->
                    <div class="event_area">

                        <div class="event_area_title"><a href="">이달의 집</a></div>
                        <div class="event_area_choose">
                            <span class="choose_house">이달의 집</span>
                            <span class="choose_cook">이달의 요리</span>
                            <span class="choose_notice">공지사항</span>
                        </div>


                        <!-- 공지사항  게시판  테이블-->
                        <table class="event_area_table notice_table">
                            <tr>

                                <td>제목 꿀팁</td>
                                <td>날짜</td>
                            </tr>
                            <tr>

                                <td>제목 ㅁㄴㅇㄻㄴㅇㄻㄴㅇasdfasdfasdfasdfasdfasdfasdfㄻㄴㅇ</td>
                                <td>2024-08-02</td>
                            </tr>
                            <tr>
                                <td>제목 꿀팁</td>
                                <td>날짜</td>
                            </tr>
                            <tr>
                                <td>제목 꿀팁</td>
                                <td>날짜</td>
                            </tr>
                            <tr>
                                <td>제목 꿀팁</td>
                                <td>날짜</td>
                            </tr>
                        </table>



                        <!-- 이달의 집 슬라이드 -->
                        <div class="event_area_house">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div>1</div>
                                        <a href="javascript:void(0)">

                                            <img src="resources/img/다운로드.jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>2</div>
                                        <a href="javascript:void(0)">
                                            <img src="./resources/img/다운로드 (1).jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>3</div>
                                        <a href="javascript:void(0)">

                                            <img src="./resources/img/images.jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>4</div>

                                        <a href="javascript:void(0)">
                                            <img src="resources/img/다운로드 (2).jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>5</div>

                                        <a href="javascript:void(0)">
                                            <img src="resources/img/다운로드 (3).jfif" alt="">
                                        </a>
                                    </div>

                                </div>

                            </div>





                        </div>


                        <!-- 이달의 요리 슬라이드 -->
                        <div class="event_area_cook">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div>1</div>
                                        <a href="javascript:void(0)">

                                            <img src="resources/img/asd.jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>2</div>
                                        <a href="javascript:void(0)">
                                            <img src="./resources/img/asdd.jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>3</div>
                                        <a href="javascript:void(0)">

                                            <img src="./resources/img/asdf.jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>4</div>

                                        <a href="javascript:void(0)">
                                            <img src="resources/img/asdfw.jfif" alt="">
                                        </a>
                                    </div>

                                    <div class="swiper-slide">
                                        <div>5</div>

                                        <a href="javascript:void(0)">
                                            <img src="resources/img/asdgw.jfif" alt="">
                                        </a>
                                    </div>

                                </div>

                            </div>





                        </div>




                    </div>

                </div>









                <!-- 요리와 중고 글  -->
                <div class="content_cook_used">
                    <div class="cook_used_title"><a href="<%=contextPath%>/foodBoardList.bo?cpage=1">요리</a></div>
                    <div class="cook_used_choose">
                        <div class="cook_choose">요리</div>
                        <div class="used_choose">중고</div>
                    </div>
                    <div class="cook_used_area">

                        <div class="cook_area">

                            <div class="cook_used_box cook_box">
                                <div class="cook_used_box_img">
                                    <img src="./resources/img/김부장.jpg" alt="">
                                </div>
                                <div class="cook_box_content ">
                                    <div class="cook_box_title">제목</div>
                                    <div class="cook_box_enrollDate">날짜</div>
                                    <div class="cook_box_icons">
                                        <div class="icon">
                                            <span class="material-icons icon">visibility</span>
                                            <span>조회수</span>
                                        </div>
                                        <div class="icon">
                                            <img src="./resources/img/foot.png" alt="">
                                            <span>좋아요 수</span>
                                        </div>
                                        <div class="icon">
                                            <span class="material-icons icon">textsms</span>
                                            <span>댓글수</span>

                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="cook_used_box cook_box">
                                <div class="cook_used_box_img ">
                                    <img src="./resources/img/김부장.jpg" alt="">
                                </div>
                                <div class="cook_box_content">
                                    <div class="cook_box_title">제목</div>
                                    <div class="cook_box_enrollDate">날짜</div>
                                    <div class="cook_box_icons">
                                        <div class="icon">
                                            <span class="material-icons icon">visibility</span>
                                            <span>조회수</span>
                                        </div>
                                        <div class="icon">
                                            <img src="./resources/img/foot.png" alt="">
                                            <span>좋아요 수</span>
                                        </div>
                                        <div class="icon">
                                            <span class="material-icons icon">textsms</span>
                                            <span>댓글수</span>

                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="cook_used_box cook_box">
                                <div class="cook_used_box_img">
                                    <img src="./resources/img/김부장.jpg" alt="">
                                </div>
                                <div class="cook_box_content">
                                    <div class="cook_box_title">제목</div>
                                    <div class="cook_box_enrollDate">날짜</div>
                                    <div class="cook_box_icons">
                                        <div class="icon">
                                            <span class="material-icons icon">visibility</span>
                                            <span>조회수</span>
                                        </div>
                                        <div class="icon">
                                            <img src="./resources/img/foot.png" alt="">
                                            <span>좋아요 수</span>
                                        </div>
                                        <div class="icon">
                                            <span class="material-icons icon">textsms</span>
                                            <span>댓글수</span>

                                        </div>
                                    </div>
                                </div>
                            </div>




                        </div>
                        <!-- 요리 컨텐츠 박스  -->


                        <!--  -->


                        <div class="used_area hidden">
                            <div class="cook_used_box used_box">
                                <div class="cook_used_box_img">
                                    <img src="./resources/img/나노머신.jpg" alt="">
                                </div>
                                <div class="cook_box_content">
                                    <div class="cook_box_title">제목</div>
                                    <div class="cook_box_enrollDate">날짜</div>
                                    <div class="cook_box_icons">
                                        <div class="used_text">가격 : </div>
                                        <div class="used_text">상태 : </div>
                                        <div class="used_text">지역 : </div>

                                    </div>
                                </div>

                            </div>

                            <!--  -->
                            <div class="cook_used_box used_box">
                                <div class="cook_used_box_img">
                                    <img src="./resources/img/나노머신.jpg" alt="">
                                </div>
                                <div class="cook_box_content">
                                    <div class="cook_box_title">제목</div>
                                    <div class="cook_box_enrollDate">날짜</div>
                                    <div class="cook_box_icons">
                                        <div class="used_text">가격 : </div>
                                        <div class="used_text">상태 : </div>
                                        <div class="used_text">지역 : </div>
                                    </div>
                                </div>

                            </div>

                            <!--  -->
                            <div class="cook_used_box used_box">
                                <div class="cook_used_box_img">
                                    <img src="./resources/img/나노머신.jpg" alt="">
                                </div>
                                <div class="cook_box_content">
                                    <div class="cook_box_title">제목</div>
                                    <div class="cook_box_enrollDate">날짜</div>
                                    <div class="cook_box_icons">
                                        <div class="used_text">가격 : </div>
                                        <div class="used_text">상태 : </div>
                                        <div class="used_text">지역 : </div>
                                    </div>
                                </div>

                            </div>

                            <!--  -->
                        </div>
                        <!-- 중고 컨텐츠 박스  -->







                    </div>
                </div>


            </section>







            <!-- 쇼핑영역 -->
            <section class="shopping_content">

                <div class="shopping_area">

                    <div class="shopping_title">
                        <a href="">상품</a>
                    </div>

                    <div class="shopping_tag">

                        <span class="choose_new">상품</span>
                        <span class="choose_refur">리퍼상품</span>
                        <span class="choose_group">공동구매</span>
                        <span class="choose_discount">초특가할인</span>

                    </div>

                    <!-- 슬라이드 -->
                    <div class="swiper-container shopping_silde shopping_new_slide">
                        <div class="swiper-wrapper">

                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 새상품</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>




                        </div>

                    </div>

                    <div class="swiper-container shopping_silde shopping_refur_slide">
                        <div class="swiper-wrapper">

                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 리퍼상품</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>




                        </div>

                    </div>

                    <div class="swiper-container shopping_silde shopping_group_slide">
                        <div class="swiper-wrapper">

                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 중동구매</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>




                        </div>

                    </div>

                    <div class="swiper-container shopping_silde shopping_discount_slide">
                        <div class="swiper-wrapper">

                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 초특가할인</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>
                            <a class="swiper-slide" href="javascript:void(0)">
                                <div class="slide_shop_img">
                                    <img src="./resources/img/3.png" alt="">
                                    <div>1</div>

                                </div>
                                <div class="slide_shop_name">1등 상품명</div>
                                <div class="slide_shop_price">
                                    <!-- 할인 -->
                                    <span>61%</span>
                                    <!-- 할인 적용된가격 -->
                                    <span>>a1500원</span>

                                </div>
                                <div class="slide_shop_span">
                                    <span class="material-icons">star</span>
                                    <span>4.5</span>
                                    <span class="material-icons icon">textsms</span>
                                    <span>150개</span>

                                </div>
                            </a>




                        </div>

                    </div>

                    <div class="swiper-prev">
                        <div class="material-icons btn__prev">play_circle_outline</div>

                    </div>
                    <div class="swiper-next">
                        <div class="material-icons btn__next">play_circle_outline</div>


                    </div>





            </section>






            <section class="property">

                <div class="property_area">
                    <div class="property_title">인기 매물</div>

                    <div class="property_slide_area">

                        <div class="swiper-container property_slide">
                            <div class="swiper-wrapper">
                                <!-- a태그로 할까? -->
                                <div class="swiper-slide">
                                    <div class="img_area">
                                        <img src="./resources/img/다운로드 (3).jfif" alt="">
                                    </div>
                                    <div class="text_area">
                                        <div>건물명</div>
                                        <div>가격</div>
                                        <div>위치</div>
                                        <div>전세</div>
                                        <div>옵션
                                            <p>- 옵션 내용
                                                fsdfasdfasdfasdfasdfasdfasdasdfasdfasdfasdfasdfasdasdfasdfasdfasdfas</p>
                                        </div>
                                        <div>주변정보
                                            <p>- asdfasdfasdfasdfasdfasdfsadfasfasfasfasdfasdfasfafsdfasfasf</p>
                                        </div>


                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <div class="img_area">
                                        <img src="./resources/img/다운로드 (3).jfif" alt="">
                                    </div>
                                    <div class="text_area">
                                        <div>건물명</div>
                                        <div>가격</div>
                                        <div>위치</div>
                                        <div>전세</div>
                                        <div>옵션
                                            <p>- 옵션 내용
                                                fsdfasdfasdfasdfasdfasdfasdasdfasdfasdfasdfasdfasdasdfasdfasdfasdfas</p>
                                        </div>
                                        <div>주변정보
                                            <p>- asdfasdfasdfasdfasdfasdfsadfasfasfasfasdfasdfasfafsdfasfasf</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="img_area">
                                        <img src="./resources/img/다운로드 (3).jfif" alt="">
                                    </div>
                                    <div class="text_area">
                                        <div>건물명</div>
                                        <div>가격</div>
                                        <div>위치</div>
                                        <div>전세</div>
                                        <div>옵션
                                            <p>- 옵션 내용
                                                fsdfasdfasdfasdfasdfasdfasdasdfasdfasdfasdfasdfasdasdfasdfasdfasdfas</p>
                                        </div>
                                        <div>주변정보
                                            <p>- asdfasdfasdfasdfasdfasdfsadfasfasfasfasdfasdfasfafsdfasfasf</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="img_area">
                                        <img src="./resources/img/다운로드 (3).jfif" alt="">
                                    </div>
                                    <div class="text_area">
                                        <div>건물명</div>
                                        <div>가격</div>
                                        <div>위치</div>
                                        <div>전세</div>
                                        <div>옵션
                                            <p>- 옵션 내용
                                                fsdfasdfasdfasdfasdfasdfasdasdfasdfasdfasdfasdfasdasdfasdfasdfasdfas</p>
                                        </div>
                                        <div>주변정보
                                            <p>- asdfasdfasdfasdfasdfasdfsadfasfasfasfasdfasdfasfafsdfasfasf</p>
                                        </div>


                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="img_area">
                                        <img src="./resources/img/다운로드 (3).jfif" alt="">
                                    </div>
                                    <div class="text_area">
                                        <div>건물명</div>
                                        <div>가격</div>
                                        <div>위치</div>
                                        <div>전세</div>
                                        <div>옵션
                                            <p>- 옵션 내용
                                                fsdfasdfasdfasdfasdfasdfasdasdfasdfasdfasdfasdfasdasdfasdfasdfasdfas</p>
                                        </div>
                                        <div>주변정보
                                            <p>- asdfasdfasdfasdfasdfasdfsadfasfasfasfasdfasdfasfafsdfasfasf</p>
                                        </div>


                                    </div>
                                </div>



                            </div>

                        </div>

                        <div class="swiper-prev">
                            <div class="material-icons btn__prev">play_circle_outline</div>

                        </div>
                        <div class="swiper-next">
                            <div class="material-icons btn__next">play_circle_outline</div>


                        </div>

                    </div>


                </div>

            </section>



            <section class="brokerage">

                <div class="brokerage_area">

                    <div class="brokerage_title">
                        <a href="">부동산</a>
                    </div>

                    <div class="brokerage_choose">
                        <span class="property_choose">부동산</span>
                        <span class="move_choose">이사</span>
                    </div>



                    <div class="brokerage_slide_area">


                        <div class="swiper-container property_slide">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="slide_img">
                                        <img src="./resources/img/3.png" alt="">
                                    </div>
                                    <div class="slide_title">중개업 이름</div>
                                    <p>리뷰내용asdfasdfasdfasdfsdfasdfsdfasdfasfasdfasdfasdfasdasdfasdfasdfasdfasdfasdfasdfasdfsadfasdfasdfasdfasdfasdfffffffffffffffffffasdasdfasdf
                                    </p>
                                </div>


                                <div class="swiper-slide">
                                    <div class="slide_img">
                                        <img src="./resources/img/3.png" alt="">
                                    </div>
                                    <div class="slide_title">중개업 이름</div>
                                    <p>asdfasdfasdfasdfsdfasdfsdfasdfasfasdfasdfasdfasdasdfasdfasdfasdfasdfasdfasdfasdfsadfasdfasdfasdfasdfasdfffffffffffffffffffasdasdfasdf
                                    </p>
                                </div>


                                <div class="swiper-slide">
                                    <div class="slide_img">
                                        <img src="./resources/img/3.png" alt="">
                                    </div>
                                    <div class="slide_title">중개업 이름</div>
                                    <p>asdfasdfasdfasdfsdfasdfsdfasdfasfasdfasdfasdfasdasdfasdfasdfasdfasdfasdfasdfasdfsadfasdfasdfasdfasdfasdfffffffffffffffffffasdasdfasdf
                                    </p>
                                </div>



                            </div>

                        </div>


                        <div class="swiper-container move_slide">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="slide_img">
                                        <img src="./resources/img/다운로드 (1).jfif" alt="">
                                    </div>
                                    <div class="slide_title">중개업 이름</div>
                                    <p>리뷰내용asdfasdfasdfasdfsdfasdfsdfasdfasfasdfasdfasdfasdasdfasdfasdfasdfasdfasdfasdfasdfsadfasdfasdfasdfasdfasdfffffffffffffffffffasdasdfasdf
                                    </p>
                                </div>


                                <div class="swiper-slide">
                                    <div class="slide_img">
                                        <img src="./resources/img/3.png" alt="">
                                    </div>
                                    <div class="slide_title">중개업 이름</div>
                                    <p>asdfasdfasdfasdfsdfasdfsdfasdfasfasdfasdfasdfasdasdfasdfasdfasdfasdfasdfasdfasdfsadfasdfasdfasdfasdfasdfffffffffffffffffffasdasdfasdf
                                    </p>
                                </div>


                                <div class="swiper-slide">
                                    <div class="slide_img">
                                        <img src="./resources/img/3.png" alt="">
                                    </div>
                                    <div class="slide_title">중개업 이름</div>
                                    <p>asdfasdfasdfasdfsdfasdfsdfasdfasfasdfasdfasdfasdasdfasdfasdfasdfasdfasdfasdfasdfsadfasdfasdfasdfasdfasdfffffffffffffffffffasdasdfasdf
                                    </p>
                                </div>



                            </div>

                        </div>

                        <div class="swiper-prev">
                            <div class="material-icons btn__prev">play_circle_outline</div>

                        </div>
                        <div class="swiper-next">
                            <div class="material-icons btn__next">play_circle_outline</div>


                        </div>



                    </div>


                </div>


            </section>












            <script>

                function boardBest() {
                    $.ajax({
                        url: "mainbestBoardLIst.bo",
                        type: "get",
                        success: function (list) {
                            // console.log("게시글실행")
                            // console.log(list)
                            // console.log($('.community_area_table.best_community_table tr').children().eq(0).text())
                            let value = ""
                            for (let i = 0; i < list.length; i++) {
                                value += "<tr>"
                                    + "<td>"
                                    + "<input type='hidden' value=" + list[i].boardNo + ">"

                                    + (i + 1) + "</td>"
                                    + "<td>" + list[i].boardTitle + "</td>"
                                    + " <td><img src='./resources/img/foot.png'><span>" + list[i].viewCount + "</span></td></tr>"
                            }
                            // console.log(value)
                            // console.log($('.community_area_table.best_community_table').text())
                            $('.community_area_table.best_community_table').html(value);
                            $('.community_area_table>tr').on('click', function () {
                                const num = $(this).children('td').children('input').val()
                                // console.log(num)
                                location.href = "<%=contextPath%>/boardDeteil.bo?bno=" + num
                            })

                        },
                        error: function () {
                            console.log("게시글 불려오기 실패")
                        },
                    })
                }

                function boardHoney() {
                    $.ajax({
                        url: "mainboardHoneyList.bo",
                        type: "get",
                        success: function (list) {
                            // console.log("게시글실행")
                            // console.log(list)
                            // console.log($('.community_area_table.honeytip_table tr').children().eq(0).text())
                            let value = ""
                            for (let i = 0; i < list.length; i++) {
                                value += "<tr>"
                                    + "<td>"
                                    + "<input type='hidden' value=" + list[i].boardNo + ">"

                                    + (i + 1) + "</td>"
                                    + "<td>" + list[i].boardTitle + "</td>"
                                    + " <td><img src='./resources/img/foot.png'><span>" + list[i].viewCount + "</span></td></tr>"
                            }
                            // console.log(value)
                            // console.log($('.community_area_table.honeytip_table').text())
                            $('.community_area_table.honeytip_table').html(value);

                            $('.community_area_table>tr').on('click', function () {
                                const num = $(this).children('td').children('input').val()
                                // console.log(num)
                                location.href = "<%=contextPath%>/boardDeteil.bo?bno=" + num
                            })

                        },
                        error: function () {
                            console.log("게시글 불려오기 실패")
                        },
                    })
                }




                function noticList() {

                    $.ajax({
                        url: "mainNoticeList.bo",
                        type: "get",
                        success: function (list) {
                            // console.log(list)
                            let value = ""
                            for (let i = 0; i < list.length; i++) {
                                value += "<tr>"
                                    + "<td>"
                                    + "<input type='hidden' value=" + list[i].boardNo + ">"
                                    + list[i].boardTitle + "</td>"
                                    + "<td>" + list[i].createDate + "</td></tr>"
                            }

                            $('.event_area_table.notice_table').html(value)

                            $('.notice_table>tr').on('click', function () {
                                const num = $(this).children('td').children('input').val()
                                // console.log(num)
                                location.href = "<%=contextPath%>/boardDeteil.bo?bno=" + num
                            })

                        },
                        error: function () {
                            console.log("공지사항 불려오기 실패")
                        },
                        complete: function () {
                            // console.log("공지사항 불려오기 dd")
                        }


                    })


                }


                function selectcook() {
                    $.ajax({
                        url: "mainbestfood.bo",
                        type: "get",
                        success: function (list) {
                            // console.log(list)
                            let value = "";
                            for (let i = 0; i < list.length; i++) {
                                value += "<div class='cook_used_box cook_box'>"
                                    + "<input type='hidden' value=" + list[i].boardNo + ">"
                                    + " <div class='cook_used_box_img'>"
                                    + "<img src=" + list[i].titleImg + " >"
                                    + "</div>"
                                    + "<div class='cook_box_content'>"
                                    + "<div class='cook_box_title'>" + list[i].boardTitle + "</div>"
                                    + "<div class='cook_box_enrollDate'>" + list[i].createDate + "</div>"
                                    + "<div class='cook_box_icons'>"

                                    + "<div class='icon'>"
                                    + "<span class='material-icons icon'>visibility</span>"
                                    + "<span>" + list[i].viewCount + "</span>"
                                    + "</div>"

                                    + "<div class='icon'>"
                                    + "<img src='./resources/img/foot.png' >"
                                    + "<span>" + list[i].likesCount + "</span>"
                                    + "</div>"

                                    + "<div class='icon'>"
                                    + "<span class='material-icons icon'>textsms</span>"
                                    + "<span>" + list[i].replyCount + "</span>"
                                    + "</div>"
                                    + "</div>"
                                    + "</div>"
                                    + "</div>"
                            }
                            $('.content_cook_used .cook_area').html(value)

                            $('.cook_box').on('click', function () {
                                const num = $(this).children('input').val()
                                // console.log(num)
                                location.href = "<%=contextPath%>/boardDeteil.bo?bno=" + num
                            })


                        },
                        error: function () {

                        }
                    })
                }



                function bestUsed() {

                    $.ajax({
                        url: "bestUsed.bo",
                        type: "get",
                        success: function (list) {
                            // console.log(list)
                            let value = ""
                            for (let i = 0; i < list.length; i++) {
                                value += "<div class='cook_used_box used_box'>"
                                    + "<input type='hidden' value=" + list[i].boardNo + ">"
                                    + "<div class='cook_used_box_img'>"
                                    + "<img src=" + list[i].titleImg + " >"
                                    + " </div>"
                                    + "<div class='cook_box_content'>"
                                    + "<div class='cook_box_title'>" + list[i].boardTitle + "</div>"
                                    + " <div class='cook_box_enrollDate'>" + list[i].createDate + "</div>"
                                    + " <div class='cook_box_icons'>"
                                    + "<div class='used_text'>가격 : " + list[i].price + " </div>"
                                    + "<div class='used_text'>상태 : " + list[i].modelStatus + " </div>"
                                    + "<div class='used_text'>지역 : " + list[i].tradingArea + " </div>"
                                    + "</div>"
                                    + " </div>"
                                    + " </div>"
                            }

                            $('.content_cook_used .used_area').html(value)
                            $('.board_content .cook_choose').on('click', function () {
                                $('.cook_used_title').html("<a href='<%=contextPath%>/foodBoardList.bo?cpage=1'>요리</a>")
                                $('.content_cook_used .cook_area').removeClass('hidden')
                                $('.content_cook_used .used_area').addClass('hidden')
                            })

                            $('.board_content .used_choose').on('click', function () {
                                $('.cook_used_title').html("<a href='<%=contextPath%>/usedBoardList.bo?cpage=1'>중고</a>")

                                $('.content_cook_used .cook_area').addClass('hidden')
                                $('.content_cook_used .used_area').removeClass('hidden')
                            })


                            $('.used_box').on('click', function () {
                                const num = $(this).children('input').val()
                                // console.log(num)
                                location.href = "<%=contextPath%>/boardDeteil.bo?bno=" + num
                            })





                        },
                        error: function () {
                            console.log("공지사항 불려오기 실패")
                        },
                        complete: function () {
                            // console.log("공지사항 불려오기 dd")
                        }


                    })


                }








                $(function () {
                    boardHoney();
                    boardBest();
                    noticList();
                    selectcook();
                    bestUsed();
                })


            </script>







    </body>

    </html>