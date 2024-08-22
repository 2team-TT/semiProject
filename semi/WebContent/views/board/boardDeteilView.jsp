<%@page import="com.kh.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("b");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

  <!-- css 초기화 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css"/> 

  <!-- 메타리얼 아이ㅇ콘 -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">




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
        <div class="deteil_title"><%=b.getBoardTitle() %></div>

        <div class="deteil_navi_bottom">
          <div  class="bottom_icons">

            <div class="icon">
                <span class="material-icons m_icon">visibility</span>
                <span class="icon_text"><%=b.getViewCount() %></span>
            </div>
            <div class="icon">
                <img src="./resources/img/foot.png" alt="">
                <span class="icon_text"><%=b.getLikesCount() %></span>
            </div>
            <div class="icon">
                <span class="material-icons m_icon">textsms</span>
                <span class="icon_text"><%=b.getReplyCount() %></span>

            </div>



          </div>

          <div class="bottom_right_area">
           
            <div>
            	<%if(b.getUserNick()==null){ %>
                	<div><%=b.getBoardWriter() %></div>
                <%}else{ %>
                	<div><%=b.getUserNick() %></div>
                <%} %>
                <div class="bage">
                    <a>쪽지보내기</a>
                    <div></div>
                    <a>작성자 글보기</a>
                </div>
            </div>
            
            <div><%=b.getCreateDate() %></div>

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
        <a href="">글목록</a>
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

      <div class="reply_content_area">
        <div class="reply_content">
          <div class="reply_writer">
            <div>작성자</div>
            <div>작성일자</div>
          </div>
        
          <div class="reply_text">asdfasdf</div>
  
          <div class="re_replay_count">댓글 53</div>
  
          <div class="re_replay">
            <div class="material-icons arrow">subdirectory_arrow_right</div>
            <div class="re_replay_content">
              <div class="re_reply_writer">
                <div>작성자</div>
                <div>작성일자</div>
              </div>
              <div class="re_reply_text">내용</div>
            </div>
          </div>
        </div>
      </div>


    </div>

  </section>



  <script>

    const new_reply_btn = document.querySelector('.reply_section .reply_area .new_reply_area>.new_reply_btn')

    
    let count =0;
    new_reply_btn.addEventListener('click', function(){

      if(count ===0){
        document.querySelector('.reply_section .reply_area .new_reply_area .reply_input').style.display="flex"
        count =1;
      }else{
        document.querySelector('.reply_section .reply_area .new_reply_area .reply_input').style.display="none"
        count =0;
      }

    })
    
const free_choose_board = document.querySelector('.board_navi .navi_content>.free_choose_board');

const honey_choose_board = document.querySelector('.board_navi .navi_content .honey_choose_board');
const cook_choose_board = document.querySelector('.board_navi .navi_content .cook_choose_board');
const used_choose_board = document.querySelector('.board_navi .navi_content .used_choose_board');
    
free_choose_board.addEventListener('click',function(){
	console.log('dd')
	location.href="<%=contextPath%>/freeBoardList.bo?cpage=1"

})

honey_choose_board.addEventListener('click',function(){
	
	location.href="<%=contextPath%>/honeyBoardList.bo?cpage=1"

})

cook_choose_board.addEventListener('click',function(){
	
	location.href="<%=contextPath%>/foodBoardList.bo?cpage=1"

})

used_choose_board.addEventListener('click',function(){
	
	location.href="<%=contextPath%>/usedBoardList.bo?cpage=1"

})


const likesbtn = document.querySelector(' .boardDetilView_section .deteil_area .likesbtn');
let uno = document.querySelector('#userNo').value
let bno = document.querySelector('#boardNo').value


likesbtn.addEventListener('click', function(){
 

  if(uno===""){
    alert('로그인해야 발도장 남길수 있습니다.')
  }else{
     lkesinsert()
  }
})


function lkesinsert(){
  $.ajax({
      url:"insertLikes.bo",
      data:{
        userNo:uno,
        boardNo:bno,
        num:'1'
      },
      type:"post",
      success:function(result){
        console.log(result)
        if(result==='iiiii'){
          console.log('insert')
          likesbtn.className += ' like'
        }else if(result==='ddddd'){
          console.log('delete')
            likesbtn.className = 'likesbtn'
        }
      },
      error:function(){
        console.log("실패")
      },

    })
}

function lkes(){
  $.ajax({
      url:"insertLikes.bo",
      data:{
        userNo:uno,
        boardNo:bno,
        num:'2'
      },
      type:"post",
      success:function(result){
        console.log(5)

        if(result==='like'){
          console.log('insert')
          likesbtn.className += ' like'
        }
      },
      error:function(){
        console.log("실패")
      },

    })
}




function replyselect(){

  $.ajax({
    url:"replySelect.bo",
    data:{
      boardNo:bno,
    },
    type:"get",
    success:function(list){
      console.log(list)


      const reply_area = $('.reply_section .reply_area .reply_content_area')
      let value = "";
      for(let i= 0; i< list.length; i++){

        value +=  "<div class='reply_content'><input type='hidden' id='replyNo' value="
          + list[i].replyNo 
          +"><div class='reply_writer'><div>"
          +list[i].replyWriter
          +"</div><div>"+list[i].createDate+"</div></div><div class='reply_text'>"
            +list[i].replyContent+"</div><div class='re_replay_count>댓글 "
            +list[i].reReplyCount+"</div></div>"

        

      }

      reply_area.html(value);




    },
    error:function(){
      console.log('dg')
    },


  })


}

const up_replay = document.querySelector('.reply_area .up_replay')

up_replay.addEventListener('click',function(){

  if(uno!==""){
    insertreply()
 
  }else{
    alert("로그인 후 이용해주세요")
  }
  replyselect()

})

function insertreply(){

  $.ajax({
    url:"insertreply.bo",
    data :{
      userNo:uno,
      boardNo:bno,
      content: $('#reply_content_input').val(),

    },
    type:"post",
    success:function(str){

      if(str==='iiiii'){
          alert('댓글이 정상적으로 등록되었습니다.')
        }else if(str==='ddddd'){
          alert('댓글 등록에 실패했습니다.')
        }



    },
    error:function(){
      console.log('insert error')
    },
  })

}








$(function(){

  if(uno!==""){

    lkes()
  }
  replyselect()





})

  </script>

    
</body>
</html>