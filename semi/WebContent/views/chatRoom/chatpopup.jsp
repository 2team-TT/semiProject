<%@page import="com.kh.chatRoom.model.vo.ChatMsg" %>
    <%@page import="java.util.ArrayList" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <% int chNo=(int)request.getAttribute("chNo"); int userNo=(int)request.getAttribute("userNo"); String
                sendUser=(String)request.getAttribute("sendUser"); %>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Document</title>
                    <!-- css 초기화 -->
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css" />

                    <!-- 메타리얼 아이ㅇ콘 -->
                    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

                    <!-- <link rel="stylesheet"
                        href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
                    <!-- 제이쿼리 -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


                    <link rel="stylesheet" href="./resources/css/chatpopup.css">
                </head>

                <body>

                    <section class="chatpop">

                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>메세지를 입력해주세요!</strong>
                        </div>


                        <input type="hidden" id="userNo" value="<%=chNo %>">
                        <input type="hidden" id="chatNo" value="<%=userNo%>">
                        <div class="chatpop_header">
                            <%=sendUser %>님과의 채팅
                        </div>

                        <div class="line"></div>

                        <div class="chatpop_body">

                            <div class="chat_view">


                                <div class="chat_message ">
                                    <div class="send_user">
                                        보낸이
                                    </div>
                                    <div class="message">
                                        sasdfwegasdgfawergasdfawefgasdgeargasdgaewrga asdf weaf asdf awef asd asf
                                        ewf asdf asfe as
                                        es as
                                        asdf ase asd
                                    </div>
                                </div>






                                <div class="chat_message right ">
                                    <div class="send_user">
                                        보낸이
                                    </div>
                                    <div class="message">
                                        sasdfwegasdgfawergasdfawefgasdgeargasdgaewrga asdf weaf asdf awef asd asf
                                        ewf asdf asfe as
                                        es as
                                        asdf ase asd
                                    </div>
                                </div>

                            </div>


                            <div class="line"></div>


                            <div class="chat_input">
                                <textarea name="" id="chat_textarea"></textarea>

                                <button class="textarea_btn material-icons">
                                    send
                                </button>
                            </div>

                        </div>

                    </section>


                    <script>
                        $(function () {
                            chatMessgeList()

                            setInterval(function () {
                                chatMessgeList()
                            }, 2000)
                        })
                        function chatMessgeList() {
                            $.ajax({
                                url: "chatMegList.ch",
                                type: "get",
                                data: {
                                    chNo: "<%=chNo%>",
                                },
                                success: function (list) {
                                    // console.log(list)
                                    let value = "";
                                    for (let i = 0; i < list.length; i++) {
                                        // console.log(list[i].sendUserNo)
                                        // console.log(list[i].message)
                                        if (list[i].sendUserNo === Number("<%= userNo %>")) {
                                            // alert("if문")
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

                                    $('.chatpop .chat_view').html(value)

                                },
                                error: function () {
                                    console.log('실패')
                                },

                            })
                        }


                        $('.chat_input  #chat_textarea').on('keydown', function (e) {

                            if (e.keyCode === 13) {
                                $('.chat_input .textarea_btn').click()
                                return
                            }
                        })

                        $('.chat_input .textarea_btn').on('click', function () {
                            let chmsg = $('.chat_input  #chat_textarea').val()
                            // console.log(chmsg)
                            // console.log(chno)
                            if (!chmsg) {

                                $('.alert').css('display', 'block')
                            } else {
                                // console.log('채팅 입력')
                                lnsertChatMassge(chmsg)
                            }


                        })


                        function lnsertChatMassge(chmsg) {
                            $.ajax({
                                url: "insertMsg.ch",
                                type: "post",
                                data: {
                                    userNo: "<%=userNo%>",
                                    chMsg: chmsg,
                                    chroom: "<%=chNo%>",
                                },
                                success: function (result) {

                                    // console.log(result)
                                    if (result === "yyyyy") {
                                        chatMessgeList()
                                    } else {
                                        alert("메시지 전송에 실패했습니다.")
                                    }
                                    $('.chat_input  #chat_textarea').val("")

                                },
                                error: function () {
                                    console.log("메세지 전송 실패")
                                }
                            })
                        }

                        $('.alert .close').on('click', function () {
                            $('.alert').css('display', 'none')
                        })

                    </script>

                </body>

                </html>