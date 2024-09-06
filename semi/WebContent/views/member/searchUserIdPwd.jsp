<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <% String num=(String)request.getAttribute("num"); %>
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


            <!-- 제이쿼리 -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

            <link rel="stylesheet" href="./resources/css/searchUserid.css">
        </head>

        <body>

            <%@include file="../common/menubar.jsp" %>


                <section class="searchUserId_wrap first">

                    <div class="searchUserId_area">

                        <div class="searchform id">
                            <div class="title">아이디 찾기</div>
                            <div class="input_area">

                                <div><span>이름 </span> <input type="text" class="name" placeholder="이름을 입력해주세요"></div>
                                <div><span>전화번호 </span> <input type="text" class="phone" placeholder="-를 붙여주세요"></div>

                            </div>

                            <div class="search_btn id_btn">아이디 찾기</div>
                        </div>

                        <div class="searchform pwd ">
                            <div class="title">비밀번호 찾기</div>
                            <div class="input_area">

                                <div><span>아이디 </span> <input type="text" id="id" placeholder="아이디를 입력해주세요"></div>

                                <div><span>이름 </span> <input type="text" class="name" placeholder="이름을 입력해주세요"></div>
                                <div><span>전화번호 </span> <input type="text" class="phone" placeholder="-를 붙여주세요"></div>

                            </div>

                            <div class="search_btn pwd_btn">비밀번호 찾기</div>
                        </div>


                        <div class="choose_search">
                            <div class="id_choose">아이디 찾기</div>
                            <div></div>
                            <div class="pwd_choose">비밀번호 찾기</div>
                        </div>

                    </div>

                </section>


                <script>

                    $(function () {
                        if ("<%=num%>" === "1") {
                            $('.searchUserId_wrap .searchform.id').removeClass('hidden')
                            $('.searchUserId_wrap .searchform.pwd').addClass('hidden')
                        } else {
                            $('.searchUserId_wrap .searchform.pwd').removeClass('hidden')
                            $('.searchUserId_wrap .searchform.id').addClass('hidden')
                        }
                    })

                    $('.id_choose').on('click', function () {
                        $('.searchUserId_wrap .searchform.id').removeClass('hidden')
                        $('.searchUserId_wrap .searchform.pwd').addClass('hidden')
                    })

                    $('.pwd_choose').on('click', function () {
                        $('.searchUserId_wrap .searchform.pwd').removeClass('hidden')
                        $('.searchUserId_wrap .searchform.id').addClass('hidden')
                    })






                    $('.searchUserId_wrap .id_btn').on('click', function () {
                        const name = $('.searchUserId_wrap .searchform.id .name').val();
                        const phone = $('.searchUserId_wrap .searchform.id .phone').val();
                        // console.log(name)
                        // console.log(phone)

                        if (name === "") {
                            alert('이름을 입력해주세요')
                            $('.searchUserId_wrap .searchform.id .name').focus()
                        } else if (phone === "") {
                            alert('전화번호를 입력해주세요')
                            $('.searchUserId_wrap .searchform.id .phone').focus()
                        } else {
                            idSearch(name, phone)
                        }
                    })




                    $('.searchUserId_wrap .pwd_btn').on('click', function () {
                        const id = $('.searchUserId_wrap .searchform.pwd #id').val();
                        const name = $('.searchUserId_wrap .searchform.pwd .name').val();
                        const phone = $('.searchUserId_wrap .searchform.pwd .phone').val();
                        // console.log(name)
                        // console.log(phone)

                        if (id === "") {
                            alert('아이디를 입력해주세요')
                            $('.searchUserId_wrap .searchform.pwd #id').focus()
                        } else if (name === "") {
                            alert('이름을 입력해주세요')
                            $('.searchUserId_wrap .searchform.pwd .name').focus()

                        } else if (phone === "") {
                            alert('전화번호를 입력해주세요')
                            $('.searchUserId_wrap .searchform.pwd .phone').focus()
                        } else {
                            pwddSearch(id, name, phone)
                        }
                    })


                    $('.searchUserId_wrap .searchform.pwd .phone').on('keydown', function (e) {
                        if (e.keyCode === 13) {
                            $('.searchUserId_wrap .pwd_btn').click();
                        }
                    })
                    $('.searchUserId_wrap .searchform.id .phone').on('keydown', function (e) {
                        if (e.keyCode === 13) {
                            $('.searchUserId_wrap .id_btn').click();
                        }
                    })


                    function idSearch(name, phone) {
                        $.ajax({
                            url: "idSearch.mo",
                            data: {
                                name: name,
                                phone: phone,
                            },
                            type: "post",
                            success: (result) => {

                                if (result === "") {
                                    alert("해당 아이디 없습니다.")
                                } else {
                                    const value = "아이디는 " + result + " 입니다."
                                        + "로그인하시겠습니까?"
                                    if (confirm(value)) {
                                        $('#login_btn').click();
                                    }
                                }

                                $('.searchUserId_wrap .searchform.id .name').val("");
                                $('.searchUserId_wrap .searchform.id .phone').val("");
                            }
                        })
                    }



                    function pwddSearch(id, name, phone) {
                        $.ajax({
                            url: "pwdSearch.mo",
                            data: {
                                id: id,
                                name: name,
                                phone: phone,
                            },
                            type: "post",
                            success: (result) => {

                                if (result === "") {
                                    alert("해당 비밀번호 없습니다.")
                                } else {
                                    const value = "비밀번호는 " + result + " 입니다."
                                        + "로그인하시겠습니까?"
                                    if (confirm(value)) {
                                        $('#login_btn').click();
                                    }
                                }
                                $('.searchUserId_wrap .searchform.pwd #id').val("");
                                $('.searchUserId_wrap .searchform.pwd .name').val("");
                                $('.searchUserId_wrap .searchform.pwd .phone').val("");
                            }
                        })
                    }





                </script>










        </body>

        </html>