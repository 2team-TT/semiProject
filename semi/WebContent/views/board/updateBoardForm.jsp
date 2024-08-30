<%@page import="com.kh.common.model.vo.Tag" %>
    <%@page import="java.util.ArrayList" %>
        <%@page import="com.kh.board.model.vo.Used" %>
            <%@page import="com.kh.board.model.vo.Attachment" %>
                <%@page import="com.kh.board.model.vo.Board" %>
                    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
                        <% Board b=(Board)request.getAttribute("b"); Attachment
                            at=(Attachment)request.getAttribute("at"); Used ud=(Used)request.getAttribute("ud");
                            ArrayList<Tag> list= (ArrayList<Tag>)request.getAttribute("tagList");

                                String tradingArea = "";
                                String tradingMethod ="";
                                String modelStatus ="";

                                if(ud!=null){
                                tradingArea = (ud.getTradingArea()==null)? "" : ud.getTradingArea();
                                tradingMethod = (ud.getTradingMethod()==null)? "":ud.getTradingMethod();
                                modelStatus = (ud.getModelStatus()==null)? "": ud.getModelStatus();

                                }

                                %>
                                <!DOCTYPE html>
                                <html lang="en">

                                <head>
                                    <meta charset="UTF-8">
                                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                    <title>Document</title>
                                    <!-- css 초기화 -->
                                    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css"/>  -->

                                    <!-- 메타리얼 아이ㅇ콘 -->
                                    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
                                        rel="stylesheet">

                                    <link href="https://cdn.jsdelivr.net/npm/quill@2.0.2/dist/quill.snow.css"
                                        rel="stylesheet" />


                                    <script
                                        src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>



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


                                                <form action="<%=contextPath%>/updateBoard.bo" method="post"
                                                    enctype="multipart/form-data">
                                                    <input type="hidden" name="userNo" value="<%=u.getUserNo()%>">
                                                    <input type="hidden" name="boardNo" value="<%=b.getBoardNo()%>">


                                                    <div class="input_area_inLine">
                                                        <table class="input_table">

                                                            <tbody>
                                                                <tr>
                                                                    <td>제목</td>
                                                                    <td colspan="3">
                                                                        <input type="text" name="title" required
                                                                            value="<%=b.getBoardTitle()%>">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>게시글 유형</td>
                                                                    <td colspan="3">
                                                                        <select name="tag" id="tag">
                                                                            <%for(Tag t : list){ %>
                                                                                <option value="<%=t.getTagNo()%>">
                                                                                    <%=t.getTagName() %>
                                                                                </option>
                                                                                <%} %>
                                                                        </select>
                                                                    </td>

                                                                </tr>
                                                                <tr class="food used hidden">
                                                                    <td>대표 이미지</td>
                                                                    <td colspan="3">

                                                                        <input type="file" name="Thumbnail" disabled
                                                                            class="disabled food_dis used_dis">
                                                                        <%if(at!=null) {%>
                                                                            <%=at.getOriginName()%>
                                                                                <input type="hidden" name="originFileNo"
                                                                                    value="<%=at.getAtNo()%>">
                                                                                <%} %>

                                                                    </td>
                                                                </tr>
                                                                <tr class="used hidden">
                                                                    <td>모델명</td>
                                                                    <td colspan="3">

                                                                        <%if(ud==null) {%>
                                                                            <input type="text" name="model" disabled
                                                                                required class="disabled used_dis">
                                                                            <%}else{ %>
                                                                                <input type="text" name="model" disabled
                                                                                    required class="disabled used_dis"
                                                                                    value="<%=ud.getModelName()%>">
                                                                                <input type="hidden" name="usedNo"
                                                                                    value="<%=ud.getUsed()%>">
                                                                                <%} %>

                                                                    </td>

                                                                </tr>
                                                                <tr class="used hidden">
                                                                    <td>가격</td>
                                                                    <td>
                                                                        <%if(ud==null) {%>
                                                                            <input type="number" name="price" disabled
                                                                                required class="disabled used_dis">원

                                                                            <%}else{ %>
                                                                                <input type="number" name="price"
                                                                                    disabled required
                                                                                    class="disabled used_dis"
                                                                                    value="<%=ud.getPrice() %>">원
                                                                                <%} %>
                                                                    </td>
                                                                    <td>거래지역</td>
                                                                    <td>
                                                                        <input type="text" id="trading"
                                                                            placeholder="직접 입력" name="trading"
                                                                            value="<%=tradingArea%>">
                                                                        <select id="trading_area">
                                                                            <option value="">직접입력</option>
                                                                            <option value="서울">서울</option>
                                                                            <option value="경기도">경기도</option>
                                                                            <option value="인천">인천</option>
                                                                            <option value="강원도">강원도</option>
                                                                            <option value="충청북도">충청북도</option>
                                                                            <option value="충청남도">충청남도</option>
                                                                            <option value="대전">대전</option>
                                                                            <option value="경상북도">경상북도</option>
                                                                            <option value="경상남도">경상남도</option>
                                                                            <option value="대구">대구</option>
                                                                            <option value="부산">부산</option>
                                                                            <option value="전라북도">전라북도</option>
                                                                            <option value="전라남도">전라남도</option>
                                                                            <option value="광주">광주</option>
                                                                            <option value="제주도">제주도</option>
                                                                            <option value="울릉도">울릉도</option>

                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                <tr class="used hidden">
                                                                    <td>상태</td>
                                                                    <td>
                                                                        <input type="text" style="width: 60px;"
                                                                            name="status" value="<%=modelStatus%>"
                                                                            id="status_input" readonly>
                                                                        <select id="status">
                                                                            <option value="">직접입력</option>
                                                                            <option value="미개봉">미개봉</option>
                                                                            <option value="상">상</option>
                                                                            <option value="중">중</option>
                                                                            <option value="하">하</option>
                                                                        </select>
                                                                    </td>
                                                                    <td>거래방법</td>
                                                                    <td>
                                                                        <input type="checkbox" name="tradingMathod"
                                                                            id="parcel" value="택배">
                                                                        <label for="parcel">택배</label>
                                                                        <input type="checkbox" name="tradingMathod"
                                                                            id="direct_transaction" value="직거래">
                                                                        <label for="direct_transaction">직거래</label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="4">


                                                                        <div id="editor">
                                                                            <%=b.getBoardContent() %>
                                                                        </div>





                                                                    </td>
                                                                </tr>


                                                            </tbody>

                                                        </table>


                                                    </div>










                                                    <input type="hidden" name="content" id="boardContnent">

                                                    <div class="btn_area">
                                                        <button type="submit" onclick="return contnetInput()">글
                                                            올리기</button>
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
                                                        ['bold', 'italic', 'underline', 'strike'],
                                                        [{ 'color': [] }, { 'background': [] }],
                                                        [{ 'list': 'ordered' }, { 'list': 'bullet' }, { 'list': 'check' }],
                                                        [{ 'script': 'sub' }, { 'script': 'super' }],
                                                        ['link', 'image', 'formula', 'code-block', 'blockquote'],
                                                    ],
                                                },
                                                placeholder: 'Compose an epic...',
                                                theme: 'snow', // or 'bubble'
                                            });

                                            quill.getModule('toolbar').addHandler('image', function () {
                                                imageNewName()
                                            })



                                            function imageNewName() {

                                                const fileInput = document.createElement('input');
                                                //input 요소를 만든다. 그 요소를 fileInput에 담는다.
                                                fileInput.setAttribute('type', 'file')
                                                // fileInput에 속성 중에 타입속성을 file를 부여한다.

                                                fileInput.click();
                                                // 만들어진 input type file를 클릭한다.


                                                fileInput.addEventListener('change', function () {


                                                    if ($(this).val() !== "") {

                                                        let ext = $(this).val().split(".").pop().toLowerCase();
                                                        // 현재 변화된 파일의 값을 가져와 .를 기준으로 배열을 담고, 그 담은 배열에서 마지막을 잘라서내고, 소문자로 변화시킨뒤 변수에 담는다.
                                                        // pop() 배열의 마지막 끝의 요소를 제거한다.
                                                        if ($.inArray(ext, ["gif", "jpg", "jpeg", "png", "bmp"]) == -1) {
                                                            alert("gif, jpg, jpeg, png, bmp 파일만 업로드 가능합니다.")
                                                            return;
                                                        }



                                                        let fileSize = this.files[0].size;

                                                        let maxSize = 20 * 1024 * 1024;


                                                        console.log(fileSize)


                                                        if (fileSize > maxSize) {
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
                                                            url: "fileName.bo",
                                                            type: "post",
                                                            enctype: "multipart/form-data",
                                                            data: formData,
                                                            processData: false,
                                                            contentType: false,
                                                            success: function (str) {
                                                                console.log(str)

                                                                if (str !== "") {
                                                                    const newImg = document.createElement('img');
                                                                    newImg.setAttribute('src', '<%=contextPath%>' + str)
                                                                    $('.ql-editor').append(newImg)
                                                                }

                                                            },
                                                            error: function () {
                                                                console.log("파일이름 바꾸기 실패")
                                                            },
                                                            complete: function () {
                                                                console.log("파일이름 바꾸기 실행")
                                                            },
                                                        })





                                                    }



                                                })






                                            }





                                            const trading_select = document.querySelector('#trading_area')
                                            const trading_input = document.querySelector('#trading')



                                            trading_select.addEventListener("change", function () {

                                                if (document.querySelector('#trading_area>option:nth-child(1)').selected) {
                                                    trading_input.value = ""
                                                    trading_input.readOnly = false
                                                }

                                                for (let i = 2; i <= trading_select.childElementCount; i++) {
                                                    if (document.querySelector('#trading_area>option:nth-child(' + i + ')').selected) {
                                                        trading_input.value = document.querySelector('#trading_area>option:nth-child(' + i + ')').value
                                                        trading_input.readOnly = true
                                                    }
                                                }


                                            })


                                            const status = document.querySelector('#status')
                                            const status_input = document.querySelector('#status_input')



                                            status.addEventListener("change", function () {
                                                if (document.querySelector('#status>option:nth-child(1)').selected) {
                                                    status_input.value = ""
                                                    status_input.readOnly = false
                                                }

                                                for (let i = 2; i <= status.childElementCount; i++) {
                                                    if (document.querySelector('#status>option:nth-child(' + i + ')').selected) {
                                                        status_input.value = document.querySelector('#status>option:nth-child(' + i + ')').value
                                                        status_input.readOnly = true
                                                        // console.log(status_input.value)
                                                    }
                                                }


                                            })


                                            const tag_select = document.querySelector('#tag')

                                            document.querySelector('#tag>option:nth-child(2)').selected = true


                                            tag_select.addEventListener('change', function () {

                                                const val = tag_select.value

                                                if (val === '130') {

                                                    $('.used').addClass('hidden')
                                                    $('.disabled.used_dis').attr('disabled', true)
                                                    $('.food').removeClass('hidden')
                                                    $('.food_dis').attr('disabled', false)
                                                } else if (val === '140') {
                                                    $('.food').addClass('hidden')
                                                    $('.disabled.food_dis').attr('disabled', true)

                                                    $('.used').removeClass('hidden')
                                                    $('.disabled.used_dis').attr('disabled', false)
                                                } else {
                                                    $('.used').addClass('hidden')
                                                    $('.food').addClass('hidden')
                                                    $('.disabled').attr('disabled', true)
                                                }


                                            })





                                            function contnetInput() {
                                                let str = $('.ql-editor').html();
                                                console.log(str)
                                                if (str === "") {
                                                    alert("내용을 입력해주세요")
                                                    return false;
                                                }

                                                if (str.length > 4000) {
                                                    alert("내용이 너무 많습니다.")
                                                    return false;
                                                }


                                                $('#boardContnent').val(str)
                                            }

                                        </script>



                                        <script>

                                            $(function () {
                                                // const text = "<%=b.getBoardContent() %>"
                                                // $('.ql-editor').html(text);
                                                // console.log(text)
                                                const boardTag = "<%=b.getTagNo()%>"
                                                $('#tag>option').each(function (index, value) {

                                                    if ($(this).val() == boardTag) {
                                                        $(this).attr('selected', "selected")
                                                    }


                                                })



                                                if (boardTag === '130') {

                                                    $('.used').addClass('hidden')
                                                    $('.disabled.used_dis').attr('disabled', true)
                                                    $('.food').removeClass('hidden')
                                                    $('.food_dis').attr('disabled', false)
                                                } else if (boardTag === '140') {
                                                    $('.food').addClass('hidden')
                                                    $('.disabled.food_dis').attr('disabled', true)

                                                    $('.used').removeClass('hidden')
                                                    $('.disabled.used_dis').attr('disabled', false)
                                                } else {
                                                    $('.used').addClass('hidden')
                                                    $('.food').addClass('hidden')
                                                    $('.disabled').attr('disabled', true)
                                                }

                                            })


                                        </script>


                                        <script>

                                            $(function () {


                                                $('#trading_area>option').each(function (index, value) {

                                                    if ($(this).val() === "<%=tradingArea%>") {
                                                        $(this).attr('selected', "selected")
                                                    }


                                                })
                                                $('#status>option').each(function (index, value) {

                                                    if ($(this).val() === "<%=modelStatus%>") {
                                                        $(this).attr('selected', "selected")
                                                        //    $('#trading').val($(this).val())
                                                    }


                                                })

                                                const tradingMethod = "<%= tradingMethod%>"; // 현재 로그인한 회원의 관심분야들
                                                $("input[type=checkbox]").each(function () {
                                                    //$(this).val() // 해당 체크박스의 value의 값
                                                    //search() : 해당 문자 있으면 해당 문자의 인덱스를 반환 없으면 -1 반환
                                                    if (tradingMethod.search($(this).val()) != -1) {
                                                        $(this).attr("checked", true);
                                                    }

                                                })

                                                console.log($("input[type=checkbox]").val())


                                            })


                                        </script>




                                </body>

                                </html>