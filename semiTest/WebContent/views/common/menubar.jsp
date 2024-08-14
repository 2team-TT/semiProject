<%@page import="com.kh.member.model.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath =request.getContextPath();

	User u = (User)session.getAttribute("u");

    String alertMsg = (String)session.getAttribute("alertMsg");
%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- css 초기화 -->

    <!-- 메타리얼 아이ㅇ콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">

    <!-- swiper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js" defer></script>

    <!-- lodash -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <!-- gsap -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.5.1/gsap.min.js" integrity="sha512-IQLehpLoVS4fNzl7IfH8Iowfm5+RiMGtHykgZJl9AWMgqx0AmJ6cRWcB+GaGVtIsnC4voMfm8f2vwtY+6oPjpQ==" crossorigin="anonymous"></script>

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
        <div class="logo" >
            <img src="./resources/img/KakaoTalk_20240730_090734755.png" alt="">
            <img src="./resources/img/KakaoTalk_20240730_145616126.png" alt="">
        </div>

        <!-- 메뉴바 -->
        <div class="menubar">
            <!-- 네비 -->
            <ul class="navi">
                <li>
                    <a href="">커뮤니티</a>
                    <ul>
                        <li><a href="">꿀팁</a></li>
                        <li><a href="">자유게시판</a></li>
                        <li><a href="">너의 레시피</a></li>
                        <li><a href="">중고</a></li>

                    </ul>
                </li>
                <li>
                    <a href="">쇼핑</a>
                </li>
                <li>
                    <a href="">부동산 / 이사</a>
                </li>
                <li>
                    <a href="">이벤트</a>
                </li>
                <li>
                    <a href="">정책</a>
                </li>

            </ul>



            <!-- 로그인영역 -->
            <div class="login">
			<%if(u==null){ %>

                <div class="login__not">
                    <button type="button" class="btn btn-light" data-toggle="modal" data-target="#loginModal">
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
                                <div class="user__name"><b><%=u.getUserId() %></b> 님 반갑습니다.</div>
                                <%}else{ %>
                                <div class="user__name"><b><%=u.getUserNick() %></b> 님 반갑습니다.</div>
                                <%} %>
                                <div class="a__box">
                                    <a href="">쪽지</a>
                                    <a href="">마이페이지</a>
                                    <a href="">로그아웃</a>
                                </div>
                                
                            </div>
                           
                        </div>
                        <div class="profile__container-down">
                            <a href="">가계부</a>
                            <a href="">스케줄 관리</a>
                            <a href="">채팅</a>
                        </div>

                    </div>
                </div>

				<%} %>

                
            </div>

        </div>




       



















        <!-- 검색 -->
        <div class="search" >

            <!-- 검색 입력칸 -->
            <form class="search__bar" action="search.do" method="get">
                <div class="search__input">
                
                    
                    <input type="search" name="search" id="search">
                    
                    <div class="auto__search">
                        <div class="lately__search">최근 검색</div>
                        <div class="cookie__search">
                            <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div>
                            <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div> <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div> <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div> <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div> <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div>
                            <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div> <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div> <div class="lately__searchs">
                                <span class="searchs">asdf</span>
                                <span class="material-icons">close</span>
                                
                            </div>
                        </div>

                        <!-- 자동완성 넣을 곳 -->
                        <ul class="auto_searchList">
                          
                        </ul>
                    </div>
                
                   
                </div>
                <button class="search__icon material-icons" >search</button>

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

                <div class="small__logo">Leave Traces</div>
    
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
                                <input type="password"  name="pwd">
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
                <a href="<%=contextPath %>/enroll.mo" >회원가입</a>
            </div>
         </form>
            
          </div>
        </div>
      </div>
















    <section class="side_menu side_content">


        <div class="side__profile">
        
        	<%if(u==null) {%>
                
            <div class="side_login_btn">

                <button type="button" class="btn btn-light" data-toggle="modal" data-target="#loginModal">
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
                    <a href="">마이페이지</a>
                    <a href="">로그아웃</a>
                </div>
            </div>
			<%} %>
	

        </div>


		<%if(u!=null) {%>
        <div class="side_content">

           <a href="">알림</a>
           <a href="">스계줄관리</a>
           <a href="">가계부</a>
           <a href="">채팅</a>

        </div>

		<%} %>
        

        <ul class="side_navi side">

            <div class="side__navi__main">
                <li>
                    <div class="side__btn__community">커뮤니티</div>
                    
                </li>
                <li>
                    <div class="side__btn__shopping">쇼핑</div>
                </li>
                <li>
                    <div class="side__btn__house">부동산 / 이사</div>
                </li>
                <li>
                    <div>이벤트</div>
                </li>
                <li>
                    <div>정책</div>
                </li>
            </div>
                
            <div class="side__navi__community">
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
                
            </div>


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
            <form action="">
                <div class="side_input_search">
                    <input type="search" name="search">


                    <button class="side_search__icon material-icons" >search</button>

                </div>
              


            </form>

        


        </div>
        
        <div class="auto__search">
            <div class="lately__search">최근 검색</div>
            <div class="cookie__search">
                <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div>
                <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div> <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div> <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div> <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div> <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div>
                <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div> <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div> <div class="lately__searchs">
                    <span class="searchs">asdf</span>
                    <span class="material-icons">close</span>
                    
                </div>
            </div>

            <!-- 자동완성 넣을 곳 -->

        </div>



        <div class="side__manysearch">

            <div class="side_best">인기검색어</div>
            <div class="side_hot">핫 키워드</div>
        </div>

        <div class="side_search_list">

            <ul class="side_best_list">
                <li> 
                    <a href="">1.asdfasdfasdfas</a>
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


            <ul class="side_hot_list">
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
            </ul>



        </div>

        <button class="side__btn out material-icons">logout</button>

    </section>







    <script>


    

        function bestSwiper(){
           
          
                new Swiper('header .swiper-container',{
                direction: 'vertical',
                autoplay:{
                    delay:4000,
                },
                loop:true,
                observer: true,
                observeParents: true,
                loopedSlides: 1 ,
                loopAdditionalSlides : 1,
                
                 });
                 //console.log(222222222222222222)
               
            
        }
           

         
        


        function test(){
                $.ajax({
                url:"bestsearchList.mo",
                type:"get",
                success:function(list){
                    //console.log(list)

                   
                    for(let i =0 ;i< list.length; i++){

                       // console.log(list[i].sName)
                        
                         $('.search__list .best .swiper-wrapper').children().eq(i).text(i+1+' '+list[i].sName)    
                        // console.log( $('.search__list .best .swiper-wrapper').children().eq(i).text())
                    }


                },
                error:function(){
                    console.log("인기검색어 불려오기 실패")
                },
                complete:function(){
                    console.log("실행")
                }
            })

            }



          


        $(function(){


            test();



             setTimeout(function(){
                bestSwiper()
            },1000)

            $('#search').keyup(function(){

                $.ajax({
                    url:"searchLikeList.mo",
                    data:{
                        searchContent:$('#search').val()
                    },
                    type:"get",
                    success:function(list){
                        console.log(list)
                        let value = ""

                        for(let i =0 ;i< list.length; i++){
                            value += "<li>"+list[i].sName + "</li>"
                        }
                        console.log(value)
                        $('.auto_searchList').html(value);
                        $('.auto_searchList>li').click(function(){
                            $('#search').val($(this).text())
                            console.log($(this).text())
                            
                        })

                    },
                    error:function(){
                        console.log("검색 통신 실패")
                    },

                })


            })



        })


    </script>


</body>
</html>