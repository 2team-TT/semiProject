<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
       <!-- css 초기화 -->
     <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css"/>  -->

     <!-- 메타리얼 아이ㅇ콘 -->
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
 
     <link href="https://cdn.jsdelivr.net/npm/quill@2.0.2/dist/quill.snow.css" rel="stylesheet" />


     <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    

    
<!-- Include stylesheet -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">

<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>









      <!-- css 파일 -->
      <link rel="stylesheet" href="./resources/css/createBoard.css">
</head>
<body>
   
   
       <%@include file="../common/menubar.jsp" %>

    <section class="input_section first">

        <div class="input_area">

            <form action="">
                <input type="hidden" name="userNo" value="">
                <table class="input_table">

                    <tbody>
                        <tr>
                            <td>제목</td>
                            <td>
                                <input type="text" name="title" required>
                            </td>
                        </tr>
                        <tr>
                            <td>게시글 유형</td>
                            <td>
                                <select name="" id="tag">
                                    <option value="asdf">asdfasdf</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">


                              <div id="editor" style="height: 400px"></div>





                            </td>
                        </tr>


                    </tbody>

                </table>


                <input type="hidden" name="content" id="boardContnent">

                <div class="btn_area">
                    <button type="button" onclick="return contnetInput()">글 올리기</button>
                </div>


            </form>
        </div>


    </section>

    











    <script>


      const quill = new Quill('#editor', {
        modules: {
          toolbar: [
            [{ header: [1, 2, false] }],
            [{ 'font': [] }],
            [{ 'align': [] }],
            ['bold', 'italic', 'underline','strike'],
            [{ 'color': [] }, { 'background': [] }],
            [{ 'list': 'ordered'}, { 'list': 'bullet' }, { 'list': 'check' }],
            [{ 'script': 'sub'}, { 'script': 'super' }], 
            ['link', 'image',  'formula', 'code-block','blockquote'],
          ],
        },
        placeholder: 'Compose an epic...',
        theme: 'snow', // or 'bubble'
      });
      
      quill.getModule('toolbar').addHandler('image',function(){
          imageNewName()
      })
      
      
      
      function imageNewName(){
      
          const fileInput = document.createElement('input');
          //input 요소를 만든다. 그 요소를 fileInput에 담는다.
          fileInput.setAttribute('type','file')
          // fileInput에 속성 중에 타입속성을 file를 부여한다.
      
          fileInput.click();
          // 만들어진 input type file를 클릭한다.
      
      
          fileInput.addEventListener('change',function(){
      
      
              if($(this).val() !== ""){
                  
                  let ext = $(this).val().split(".").pop().toLowerCase();
                  // 현재 변화된 파일의 값을 가져와 .를 기준으로 배열을 담고, 그 담은 배열에서 마지막을 잘라서내고, 소문자로 변화시킨뒤 변수에 담는다.
                  // pop() 배열의 마지막 끝의 요소를 제거한다.
                  if($.inArray(ext,["gif","jpg","jpeg","png","bmp"])==-1){
                      alert("gif, jpg, jpeg, png, bmp 파일만 업로드 가능합니다.")
                      return;
                  }
      
      
      
                  let fileSize = this.files[0].size;
      
                  let maxSize = 20*1024*1024;
      
                  
                  console.log(fileSize)
      
      
                  if(fileSize>maxSize){
                      alert('업로드 가능한 최대 이미지 용량은 20MB 입니다.')
                      return;
                  }


                const formData = new FormData();
                const file = fileInput.files[0];
                formData.append('uploadFile', file);


      
                  // $.ajax({
                  //     url:"fileName.bo",
                  //     type:"post",
                  //     enctype:"multipart/form-data",
                  //     data:{
                  //       file:fileInput.files[0]
                  //     },
                  //     success:function(){},
                  //     error:function(){
                  //       console.log("파일이름 바꾸기 실패")
                  //     },
                  //     complete:function(){},
                  // })
      

                  $.ajax({
                      url:"fileName.bo",
                      type:"post",
                      enctype:"multipart/form-data",
                      data:formData,
                      processData: false,
                      contentType: false,
                      success:function(str){
                    	  console.log(str)

                        if(str!==""){
                          const newImg = document.createElement('img');
                          newImg.setAttribute('src','<%=contextPath%>'+str)
                          $('.ql-editor').append(newImg)
                        }
                       
                      },
                      error:function(){
                        console.log("파일이름 바꾸기 실패")
                      },
                      complete:function(){
                        console.log("파일이름 바꾸기 실행")
                      },
                  })
      
      	
                 
      
      
              }
      
      
      
          })
      
      
          
      
      
      
      }
      
      
      
      </script>
      


    