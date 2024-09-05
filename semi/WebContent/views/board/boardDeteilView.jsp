<%@page import="com.kh.board.model.vo.Board" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <% Board b=(Board)request.getAttribute("b"); int tag=Integer.parseInt(b.getTagNo()); %>
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

        <link rel="stylesheet" href="./resources/css/boardDeilView.css">





      </head>

      <body>


        <%@include file="../common/menubar.jsp" %>


          <section class="board_navi first">

            <ul class="navi_content">
              <li class="free_choose_board">자유게시판</li>
              <li class="honey_choose_board">꿀팁게시판</li>
              <li class="cook_choose_board">너의레시피</li>
              <li class="used_choose_board">중고거래</li>

            </ul>

          </section>

          <section class="boardDetilView_section">

            <div class="deteil_area">

              <div class="deteil_navi">
                <div class="deteil_title">
                  <%=b.getBoardTitle() %>
                </div>

                <div class="deteil_navi_bottom">
                  <div class="bottom_icons">

                    <div class="icon">
                      <span class="material-icons m_icon">visibility</span>
                      <span class="icon_text">
                        <%=b.getViewCount() %>
                      </span>
                    </div>
                    <div class="icon">
                      <img src="./resources/img/foot.png" alt="">
                      <span class="icon_text">
                        <%=b.getLikesCount() %>
                      </span>
                    </div>
                    <div class="icon">
                      <span class="material-icons m_icon">textsms</span>
                      <span class="icon_text">
                        <%=b.getReplyCount() %>
                      </span>

                    </div>



                  </div>

                  <div class="bottom_right_area">

                    <div>

                      <div class="userbtn">
                        <%=b.getBoardWriter() %>
                      </div>

                      <div class="bage">
                        <a>쪽지보내기</a>
                        <div></div>
                        <a href="<%=contextPath%>/UserBoardList.bo?cpage=1&writerNo=<%=b.getUserId()%>"
                          class="userList_btn">작성자
                          글보기</a>
                      </div>
                    </div>

                    <div>
                      <%=b.getCreateDate() %>
                    </div>

                  </div>


                </div>


              </div>


              <div class="deteil_content_area">
                <div class="content">
                  <%=b.getBoardContent() %>
                </div>
                <img class="likesbtn" src="./resources/img/foot.png" alt="">

              </div>

            </div>

            <div class="backList_btn_area">
              <%if(u !=null && u.getUserNo()==Integer.parseInt(b.getUserId())){ %>
                <a href="<%=contextPath%>/updateBoardForm.bo?bno=<%=b.getBoardNo()%>">수정하기</a>
                <a href="<%=contextPath%>/delete.bo?bno=<%=b.getBoardNo()%>">삭제하기</a>
                <%} %>

                  <%if(tag==110){ %>
                    <a href="<%=contextPath%>/honeyBoardList.bo?cpage=1">글목록</a>
                    <%}else if(tag==130){ %>
                      <a href="<%=contextPath%>/foodBoardList.bo?cpage=1">글목록</a>
                      <%}else { %>
                        <a href="<%=contextPath%>/freeBoardList.bo?cpage=1">글목록</a>
                        <%} %>
            </div>

            <%if(u==null){%>
              <input type="hidden" id="userNo" value="">
              <%}else{%>
                <input type="hidden" id="userNo" value="<%=u.getUserNo()%>">
                <%}%>
                  <input type="hidden" id="boardNo" value="<%=b.getBoardNo()%>">
          </section>



          <section class="reply_section">

            <div class="reply_area">


              <div class="new_reply_area">

                <button class="new_reply_btn">댓글 작성하기</button>

                <div class="reply_input">
                  <textarea id="reply_content_input" placeholder="댓글을 입력하세요"></textarea>
                  <button class="up_replay">댓글 올리기</button>
                </div>

              </div>

              <%if(b.getReplyCount()!=0){%>
                <div class="reply_content_area">

                </div>
                <%}%>

            </div>

          </section>



          <script>

            const new_reply_btn = document.querySelector('.reply_section .reply_area .new_reply_area>.new_reply_btn')


            let count = 0;
            new_reply_btn.addEventListener('click', function () {

              if (count === 0) {
                document.querySelector('.reply_section .reply_area .new_reply_area .reply_input').style.display = "flex"
                count = 1;
              } else {
                document.querySelector('.reply_section .reply_area .new_reply_area .reply_input').style.display = "none"
                count = 0;
              }

            })

            const free_choose_board = document.querySelector('.board_navi .navi_content>.free_choose_board');

            const honey_choose_board = document.querySelector('.board_navi .navi_content .honey_choose_board');
            const cook_choose_board = document.querySelector('.board_navi .navi_content .cook_choose_board');
            const used_choose_board = document.querySelector('.board_navi .navi_content .used_choose_board');

            free_choose_board.addEventListener('click', function () {
              console.log('dd')
              location.href = "<%=contextPath%>/freeBoardList.bo?cpage=1"

            })

            honey_choose_board.addEventListener('click', function () {

              location.href = "<%=contextPath%>/honeyBoardList.bo?cpage=1"

            })

            cook_choose_board.addEventListener('click', function () {

              location.href = "<%=contextPath%>/foodBoardList.bo?cpage=1"

            })

            used_choose_board.addEventListener('click', function () {

              location.href = "<%=contextPath%>/usedBoardList.bo?cpage=1"

            })


            const likesbtn = document.querySelector(' .boardDetilView_section .deteil_area .likesbtn');
            let uno = document.querySelector('#userNo').value
            let bno = document.querySelector('#boardNo').value


            likesbtn.addEventListener('click', function () {


              if (uno === "") {
                alert('로그인해야 발도장 남길수 있습니다.')
              } else {
                lkesinsert()
              }
            })


            function lkesinsert() {
              $.ajax({
                url: "insertLikes.bo",
                data: {
                  userNo: uno,
                  boardNo: bno,
                  num: '1'
                },
                type: "post",
                success: function (result) {
                  console.log(result)
                  if (result === 'iiiii') {
                    console.log('insert')
                    likesbtn.className += ' like'
                  } else if (result === 'ddddd') {
                    console.log('delete')
                    likesbtn.className = 'likesbtn'
                  }
                },
                error: function () {
                  console.log("실패")
                },

              })
            }

            function lkes() {
              $.ajax({
                url: "insertLikes.bo",
                data: {
                  userNo: uno,
                  boardNo: bno,
                  num: '2'
                },
                type: "post",
                success: function (result) {
                  console.log(5)

                  if (result === 'like') {
                    console.log('insert')
                    likesbtn.className += ' like'
                  }
                },
                error: function () {
                  console.log("실패")
                },

              })
            }




            function replyselect() {

              $.ajax({
                url: "replySelect.bo",
                data: {
                  boardNo: bno,
                },
                type: "get",
                success: function (list) {
                  console.log(list)


                  const reply_area = $('.reply_section .reply_area .reply_content_area')
                  let value = "";
                  for (let i = 0; i < list.length; i++) {
                    // console.log(list[i].userNick )
                    // console.log(list[i].replyWriter )
                    if (list[i].userNick === undefined) {
                      // console.log(list)
                      // console.log(list[i].userNick)
                      value += "<div class='reply_content'><input type='hidden' id='replyNo' value="
                        + list[i].replyNo
                        + "><div class='reply_writer'><div>"
                        + list[i].replyWriter
                        + "</div><div>" + list[i].createDate + "</div></div><div class='reply_text'>"
                        + list[i].replyContent + "</div><div class='re_replay_count' onclick='re_replay_view(this)'>댓글 "
                        + list[i].reReplyCount + "</div>"
                        + "<div class='re_replay'>"
                        + "<div class='re_replay_input'>"
                        + "<textarea id='re_replay_textInput'></textarea>"
                        + "<button class='re_reply_puch_btn' onclick='insertReReply(this)'>올리기</button>"


                        + "</div>"
                        + "<div class='re_reply_list'></div>"
                        + "</div>"

                        + "</div>"
                    } else {
                      // console.log('아닐때'+list)
                      // console.log('아닐때'+list[i].userNick)
                      value += "<div class='reply_content'><input type='hidden' id='replyNo' value="
                        + list[i].replyNo
                        + "><div class='reply_writer'><div>"
                        + list[i].userNick
                        + "</div><div>" + list[i].createDate + "</div></div><div class='reply_text'>"
                        + list[i].replyContent + "</div><div class='re_replay_count' onclick='re_replay_view(this)'>댓글 "
                        + list[i].reReplyCount + "</div>"
                        + "<div class='re_replay'>"

                        + "<div class='re_replay_input'>"
                        + "<textarea id='re_replay_textInput'></textarea>"
                        + "<button class='re_reply_puch_btn' onclick='insertReReply(this)'>올리기</button>"
                        + "</div>"
                        + "<div class='re_reply_list'></div>"
                        + "</div>"

                        + "</div>"

                    }






                  }

                  reply_area.html(value);





                },
                error: function () {
                  console.log('dg')
                },


              })


            }





            const up_replay = document.querySelector('.reply_area .up_replay')

            up_replay.addEventListener('click', function () {

              if (uno !== "") {
                insertreply()

              } else {
                alert("로그인 후 이용해주세요")
              }
              replyselect()

            })

            function insertreply() {

              $.ajax({
                url: "insertreply.bo",
                data: {
                  userNo: uno,
                  boardNo: bno,
                  content: $('#reply_content_input').val(),

                },
                type: "post",
                success: function (str) {

                  if (str === 'iiiii') {
                    alert('댓글이 정상적으로 등록되었습니다.')
                  } else if (str === 'ddddd') {
                    alert('댓글 등록에 실패했습니다.')
                  }



                },
                error: function () {
                  console.log('insert error')
                },
              })

            }


            const userbtn = document.querySelector('.bottom_right_area .userbtn')
            const bage = document.querySelector('.bottom_right_area .bage')

            let bagecount = 0;
            userbtn.addEventListener('click', function () {

              if (bagecount === 0) {
                bage.style.display = "flex"
                bagecount = 1


              } else {
                bage.style.display = "none"
                bagecount = 0

              }



            })


            // $('.userbtn userList_btn').on('click', () => {
            //   location.href = "<%=contextPath%>/UserBoardList.bo?cpage=1&writerNo=<%=b.getUserId()%>"
            // })




            // 
            function re_replay_view(el) {
              let re_replay_view_count = 0
              const el_next = $(el).next()

              console.log(el_next)


              if (el_next.hasClass('view')) {
                el_next.removeClass('view')

              } else {
                el_next.addClass('view')
                if ($(el).text() !== "댓글 0") {
                  re_replyselect(el_next)

                }
              }




            }









            //대댓글 조회

            function re_replyselect(el_next) {

              console.log($(el_next).closest('.reply_content').children('#replyNo').val())

              $.ajax({
                url: "re_replyselect.bo",
                data: {
                  replyNo: $(el_next).closest('.reply_content').children('#replyNo').val()
                },
                type: "get",
                success: function (list) {

                  let value2 = ""
                  // console.log(list)
                  // console.log(el_next)
                  for (let i = 0; i < list.length; i++) {
                    if (list[i].userNick === undefined) {
                      // console.log(list)
                      // console.log(list[i].userNick)

                      value2 += "<div class='list_area'><div class='material-icons arrow'>subdirectory_arrow_right</div>"
                        + "<div class='re_replay_content'>"
                        + "<div class='re_reply_writer'>"
                        + "<div>" + list[i].replyWriter + "</div>"
                        + "<div>" + list[i].createDate + "</div>"
                        + "</div>"
                        + "<div class='re_reply_text'>" + list[i].replyContent + "</div>"
                        + "</div></div>"

                    } else {
                      // console.log('아닐때'+list)
                      // console.log('아닐때'+list[i].userNick)
                      value2 += "<div class='list_area'><div class='material-icons arrow'>subdirectory_arrow_right</div>"
                        + "<div class='re_replay_content'>"
                        + "<div class='re_reply_writer'>"
                        + "<div>" + list[i].userNick + "</div>"
                        + "<div>" + list[i].createDate + "</div>"
                        + "</div>"
                        + "<div class='re_reply_text'>" + list[i].replyContent + "</div>"
                        + "</div></div>"

                    }



                  }

                  el_next.children('.re_reply_list').html(value2)

                  // console.log(el_next.children().eq(1).html())


                },
                error: function () {
                  console.log('ggg')
                },

              })


            }





            function insertReReply(el) {

              const reply_content = $(el).closest('.reply_content')

              const content = $(el).prev().val()

              // const ll = $('#re_replay_textInput').val()


              console.log(content)


              // console.log('22rrr'+ll)
              if (uno === "") {

                alert("로그인 후 이용해주세요")


              } else if (content === "") {
                alert("내용을 입력해주세요")
              } else {


                $.ajax({
                  url: "insertReReply.bo",
                  data: {
                    replyNo: reply_content.children('#replyNo').val(),
                    userNo: uno,
                    content: content
                  },
                  type: "post",
                  success: function (result) {

                    if (result === "iiii") {
                      alert('등록되었습니다.')



                    } else if (result == "ffff") {
                      alert('등록에 실패했습니다.')
                    }

                  },
                  error: function () {
                    console.log('fffff')
                  }

                })



              }




            }














            $(function () {

              if (uno !== "") {

                lkes()
              }
              replyselect()







            })

          </script>


      </body>

      </html>