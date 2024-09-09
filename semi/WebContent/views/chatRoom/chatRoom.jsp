<%@page import="com.kh.chatRoom.model.vo.ChatRoom" %>
    <%@page import="java.util.ArrayList" %>
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


                <!-- 제이쿼리 -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <!-- swiper -->
                <!-- swiper -->
                <link rel="stylesheet" href="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.css" />
                <script src="https://unpkg.com/swiper@6.8.4/swiper-bundle.min.js"></script>

                <link rel="stylesheet" href="./resources/css/chatRoom.css">
            </head>

            <body>

                <%@include file="../common/menubar.jsp" %>


                    <section class="first chatRoom_section">


                        <div class="chatRoom_area">

                            <div class="chat_select_area">

                                <div class="select_view_area">






                                </div>

                                <button class="create_room" data-toggle="modal" data-target="#create_chroom">채팅방
                                    만들기</button>

                            </div>



                            <div class="chat_view_area">

                                <div class="chat_room">


                                    <input type="hidden" id="chat_no" value="">
                                    <div class="chat_view">


                                        <div class="none_chat_massage">
                                            채팅방을 선택해주세요
                                        </div>



                                        <!-- 
                                                <div class="chat_message right">
                                                    <div class="send_user">
                                                        보낸이
                                                    </div>
                                                    <div class="message">
                                                        .
                                                    </div>
                                                </div> -->


                                        <!-- <div class="chat_message ">
                                                    <div class="send_user">
                                                        보낸이
                                                    </div>
                                                    <div class="message">
                                                        sadfasdfasdfasdsdfsdfsdfsdfsdfsdfsdfsdfsddsfadsf asdf asd sadf
                                                        asdfas f asdf
                                                        asdf asdf
                                                        asdf asdf assdfasdf
                                                    </div>
                                                </div> -->
                                        <!-- <div class="chat_message ">
                                                    <div class="send_user">
                                                        보낸이
                                                    </div>
                                                    <div class="message">
                                                        sadfasdfasdfasdsdfsdfsdfsdfsdfsdfsdfsdfsddsfadsf asdf asd sadf
                                                        asdfas f asdf
                                                        asdf asdf
                                                        asdf asdf assdfasdf
                                                    </div>
                                                </div>
                                                <div class="chat_message ">
                                                    <div class="send_user">
                                                        보낸이
                                                    </div>
                                                    <div class="message">
                                                        sadfasdfasdfasdsdfsdfsdfsdfsdfsdfsdfsdfsddsfadsf asdf asd sadf
                                                        asdfas f asdf
                                                        asdf asdf
                                                        asdf asdf assdfasdf
                                                    </div>
                                                </div>
                                                <div class="chat_message ">
                                                    <div class="send_user">
                                                        보낸이
                                                    </div>
                                                    <div class="message">
                                                        sadfasdfasdfasdsdfsdfsdfsdfsdfsdfsdfsdfsddsfadsf asdf asd sadf
                                                        asdfas f asdf
                                                        asdf asdf
                                                        asdf asdf assdfasdf
                                                    </div>
                                                </div>
                                                <div class="chat_message ">
                                                    <div class="send_user">
                                                        보낸이
                                                    </div>
                                                    <div class="message">
                                                        sadfasdfasdfasdsdfsdfsdfsdfsdfsdfsdfsdfsddsfadsf asdf asd sadf
                                                        asdfas f asdf
                                                        asdf asdf
                                                        asdf asdf assdfasdf
                                                    </div>
                                                </div>
                                                <div class="chat_message ">
                                                    <div class="send_user">
                                                        보낸이
                                                    </div>
                                                    <div class="message">
                                                        sadfasdfasdfasdsdfsdfsdfsdfsdfsdfsdfsdfsddsfadsf asdf asd sadf
                                                        asdfas f asdf
                                                        asdf asdf
                                                        asdf asdf assdfasdf
                                                    </div>
                                                </div> -->

                                    </div>


                                    <div class="chat_input_area">
                                        <textarea name="" id="chat_textarea"></textarea>

                                        <button class="textarea_btn material-icons">
                                            send
                                        </button>
                                    </div>


                                </div>



                            </div>

                        </div>







                    </section>



                    <!-- The Modal -->
                    <div class="modal" id="create_chroom">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h4 class="modal-title">채팅할 유저를 선택해주세요</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <span>유저명 </span>
                                    <div>
                                        <input type="text" id="userNo">
                                        <select id="user_select">
                                            <option value="">직접입력</option>
                                        </select>

                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="user_select_btn" data-dismiss="modal"
                                        onclick="UserIdSearch()">채팅방 만들기</button>
                                </div>

                            </div>
                        </div>
                    </div>



                    <script>

                        // const chat_swiper = new Swiper('.chatRoom_section .swiper-container', {
                        //     // 옵션 설정
                        //     speed: 250,
                        //     direction: 'vertical',
                        //     slidesPerView: 8,
                        //     spaceBetween: 10,
                        //     mousewheel: true,
                        //     pagination: {
                        //         el: '.swiper-pagination',
                        //         clickable: true,
                        //     },
                        //     mousewheel: true,
                        //     on: {
                        //         reachEnd: function () {
                        //             chat_swiper.mousewheel.disable();
                        //         }
                        //     },
                        //     scrollbar: {
                        //         el: '.chatRoom_section .swiper-scrollbar',
                        //         draggable: true // 스크롤바를 드래그할 수 있도록 설정
                        //     },
                        // });

                        // window.addEventListener('wheel', function (event) {
                        //     if (event.deltaY < 0) {
                        //         chat_swiper.mousewheel.enable();
                        //     }
                        // });

                        $(function () {

                            selectChatRoom()



                            setInterval(() => {


                                selectChatRoom()
                                if (document.querySelector('.chat_room .chat_view').classList.contains("abled")) {

                                    let chno = $('.chat_room  #chat_no').val()
                                    chatMessgeList(chno)
                                }




                            }, 2000)




                        })



                        $(window).on('resize', function () {
                            if ($(window).width() > 1200) {
                                $('.chatRoom_section .chatRoom_area .chat_view_area').css('display', 'block')
                                $('.chatRoom_section .chatRoom_area').css('width', '1200px')

                            } else {
                                $('.chatRoom_section .chatRoom_area .chat_view_area').css('display', 'none')
                                $('.chatRoom_section .chatRoom_area').css('width', '400px')
                            }
                        })



                        $('.select_chat_room').on('click', function () {
                            let chno = $(this).children('input').val()
                            let sendUser = $(this).children('.chat_user').text()
                            // console.log(sendUser)
                            // console.log(chno)
                            $('.chat_room  #chat_no').val(chno)

                            if ($(window).width() < 1200) {

                                window.open("<%=contextPath%>/chatpopmsgList.ch?ch=" + chno + "&userNo=<%=u.getUserNo()%>&sendUser=" + sendUser, "chatroom", "width=362, height=502")

                            }
                            document.querySelector('.chat_room .chat_view').classList.add('abled')
                            console.log($(window).width())

                            // console.log($('.chat_room  #chat_no').val())
                        })


                        function selectChatRoom(count) {
                            $.ajax({
                                url: "chatroomList.ch",
                                tpye: "get",
                                data: {
                                    userNo: "<%=u.getUserNo()%>",

                                },
                                success: function (list) {
                                    // console.log('gggg')

                                    let value = ""
                                    for (let i = 0; i < list.length; i++) {
                                        value += "<div class='select_chat_room'>"
                                            + "<input type='hidden' id='chatNo' value=" + list[i].chatNo + ">"
                                            + "<div class='last_message'>"
                                            + list[i].lastMsg
                                            + "</div>"
                                            + "<div class='chat_user'>"
                                            + list[i].sendUserId
                                            + "</div>"
                                            + "</div>"
                                    }

                                    $('.select_view_area').html(value)


                                    $('.select_chat_room').on('click', function () {
                                        let chno = $(this).children('input').val()
                                        let sendUser = $(this).children('.chat_user').text()
                                        // console.log(sendUser)
                                        // console.log(chno)
                                        $('.chat_room  #chat_no').val(chno)

                                        if ($(window).width() < 1200) {

                                            window.open("<%=contextPath%>/chatpopmsgList.ch?ch=" + chno + "&userNo=<%=u.getUserNo()%>&sendUser=" + sendUser, "chatroom", "width=362, height=502")

                                        }
                                        document.querySelector('.chat_room .chat_view').classList.add('abled')
                                        chatMessgeList(chno)
                                        // console.log($(window).width())

                                        // console.log($('.chat_room  #chat_no').val())
                                    })


                                    // console.log(count)

                                    if (count) {
                                        // console.log('gg')
                                        $('.select_chat_room input').each((index, item) => {
                                            let no = item.value
                                            // console.log(no)
                                            if (count === no) {
                                                const node = item.parentNode
                                                $(node).click()
                                            }

                                        })


                                    }




                                },
                                error: function () { console.log('fffff') },

                            })

                        }



                        $('.chat_input_area  #chat_textarea').on('keydown', function (e) {

                            if (e.keyCode === 13) {
                                $('.chat_input_area .textarea_btn').click()
                                return
                            }
                        })


                        $('.chat_input_area .textarea_btn').on('click', function () {
                            let chno = $('.chat_room  #chat_no').val()
                            let chmsg = $('.chat_room  #chat_textarea').val()
                            // console.log(chmsg)
                            // console.log(chno)
                            if (!chno) {
                                alert("채팅방을 선택하셔야 이용 가능합니다.")
                            } else if (!chmsg) {
                                alert("메세지를 입력해주세요")
                            } else {
                                // console.log('채팅 입력')
                                lnsertChatMassge(chmsg, chno)
                            }


                        })


                        function lnsertChatMassge(chmsg, chno) {
                            $.ajax({
                                url: "insertMsg.ch",
                                type: "post",
                                data: {
                                    userNo: "<%=u.getUserNo()%>",
                                    chMsg: chmsg,
                                    chroom: chno
                                },
                                success: function (result) {

                                    // console.log(result)
                                    if (result === "yyyyy") {
                                        chatMessgeList(chno)
                                    } else {
                                        alert("메시지 전송에 실패했습니다.")
                                    }
                                    $('.chat_room  #chat_textarea').val("")
                                    $('.select_view_area .select_chat_room').each(function () {
                                        const no = $(this).children('input').val()
                                        if (no === chno) {
                                            $(this).children('.last_message').text(chmsg)

                                        }
                                    })
                                },
                                error: function () {
                                    console.log("메세지 전송 실패")
                                }
                            })
                        }

                        function chatMessgeList(chno) {
                            $.ajax({
                                url: "chatMegList.ch",
                                type: "get",
                                data: {
                                    chNo: chno,
                                },
                                success: function (list) {
                                    // console.log(list)
                                    let value = "";
                                    for (let i = 0; i < list.length; i++) {
                                        // console.log('<%= u.getUserNo() %>')
                                        // console.log(list[i].sendUserNo)
                                        // console.log(list[i].message)
                                        if (list[i].sendUserNo === Number("<%= u.getUserNo() %>")) {

                                            value += "<div class='chat_message right'>"
                                                + "<div class='send_user'>"
                                                + list[i].sendUserid
                                                + "</div>"
                                                + "<div class='message'>"
                                                + list[i].message
                                                + "</div>"
                                                + "</div>";
                                            continue;
                                        }

                                        value += "<div class='chat_message'>"
                                            + "<div class='send_user'>"
                                            + list[i].sendUserid
                                            + "</div>"
                                            + "<div class='message'>"
                                            + list[i].message
                                            + "</div>"
                                            + "</div>";


                                    }
                                    // $('.select_view_area .select_chat_room').each(function () {
                                    //     const no = $(this).children('input').val()
                                    //     if (no === chno) {
                                    //         $(this).children('.last_message').text(list[0].message)

                                    //     }
                                    // })
                                    // console.log(value)
                                    $('.chat_room .chat_view').html(value)

                                },
                                error: function () {
                                    console.log('실패')
                                },

                            })
                        }


                        $('#create_chroom').on('show.bs.modal', function () {
                            user_select()
                        })

                        function user_select() {
                            $.ajax({
                                url: "selectUser.ch",
                                data: {
                                    userNo: "<%=u.getUserNo()%>",
                                },
                                type: "get",
                                success: function (list) {
                                    let value = "<option value=''>직접입력</option>";
                                    // console.log(list)
                                    for (let i = 0; i < list.length; i++) {
                                        value += "<option value=" + list[i].userId + ">" + list[i].userNick + "</option>"
                                    }
                                    const user_select = $('#create_chroom #user_select')
                                    user_select.html(value)

                                    user_select.on('change', function () {
                                        if (document.querySelector('#create_chroom #user_select>option:nth-child(1)').selected) {
                                            // status_input.value = ""
                                            $('#create_chroom #userNo').val("")
                                            $('#create_chroom #userNo').attr('readOnly', false)
                                            // status_input.readOnly = false
                                            // console.log('ggggegege')
                                        }
                                        // console.log('gggg')


                                        for (let i = 2; i <= user_select.children().length; i++) {
                                            // console.log('반복문')
                                            if (document.querySelector('#create_chroom #user_select>option:nth-child(' + i + ')').selected) {
                                                // console.log('if')

                                                let value = document.querySelector('#create_chroom #user_select>option:nth-child(' + i + ')').value
                                                $('#create_chroom #userNo').val(value)
                                                $('#create_chroom #userNo').attr('readOnly', true)
                                                // console.log(status_input.value)
                                            }
                                        }

                                    })



                                },
                                error: function () {
                                    console.log('')
                                }
                            })
                        }







                        function UserIdSearch() {
                            if ($('#create_chroom #userNo').val()) {
                                // console.log($('#create_chroom #userNo').val())
                                searchUserch($('#create_chroom #userNo').val())
                            } else {
                                alert('채팅하고자하는 아이디를 입력해주세요')

                            }

                        }

                        function searchUserch(uId) {
                            $.ajax({
                                url: "searchUserId.ch",
                                data: {
                                    userId: uId
                                },
                                type: "post",
                                success: function (userNo) {
                                    console.log(userNo)
                                    if (userNo === "0") {
                                        alert('없는 아이디입니다. 다시 입력해주세요')
                                    } else {

                                        if (userNo === "<%= u.getUserNo()%>") {
                                            alert('회원과 같은 아이디입니다. 다시 입력해주세요')
                                        } else {

                                            searchChatRoomCount(userNo)



                                        }

                                    }

                                },
                                error: function () { },

                            })
                        }




                        function searchChatRoomCount(no) {
                            $.ajax({
                                url: "searchChatRoomCount.ch",
                                data: {
                                    chatUser: no,
                                    userNo: "<%=u.getUserNo()%>",
                                },
                                type: "get",
                                success: (count) => {
                                    // console.log(count)

                                    if (count === 'nnnnn') {
                                        if (confirm("채팅 가능한 회원입니다. 채팅방 만들겠습니까?")) {
                                            insertchatRoom(no)
                                        }
                                    } else {

                                        if (confirm("존재하는 채팅방이 있습니다. 채팅방으로 이동하시겠습니까?")) {
                                            selectChatRoom(count)

                                        }





                                    }



                                },
                                error: () => {

                                }
                            })
                        }






                        function insertchatRoom(no) {
                            $.ajax({
                                url: "insertChatRoom.ch",
                                data: {
                                    chatUser: no,
                                    userNo: "<%=u.getUserNo()%>",
                                },
                                type: "get",
                                success: function (count) {

                                    if (count === "nnnnn") {
                                        alert("채팅방 개설에 실패했습니다.")
                                    } else {
                                        if (confirm("채팅방 개설되었습니다. 채팅방으로 이동하시겠습니까?")) {
                                            selectChatRoom(count)
                                        }
                                    }


                                    selectChatRoom()
                                },
                                error: function () {
                                    console.log('gg')
                                }
                            })
                        }









                    </script>










            </body>

            </html>