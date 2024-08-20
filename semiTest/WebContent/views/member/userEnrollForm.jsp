
<%@page import="com.kh.member.model.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



    <!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>



    <!-- css 파일 -->
    <link rel="stylesheet" href="./resources/css/userEnrollForm.css">
    <script src="./resources/js/userEnrollForm.js" defer></script>
</head>
<body>
    
	<%@include file="../common/menubar.jsp" %>


    <section class="enroll_content first">

        <div class="enroll_silde_area">

            <div class="enroll_pages">

                <!-- 첫번째 페이지 -->
                <div class="enroll_page_1 enroll_page">
                    <div class="enroll_area check_area">
                       <table class="check_table">
                            <tr>
                                <td>
                                    <input type="radio" id="all_check">
                                </td>
                                <td>
                                    <label for="all_check">전체 동의하기</label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <textarea >이용약관, 개인정보 수집 및 이용. 위치기반 서비스 이용약관 동의를 포함합니다.</textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" id="use_check">
                                </td>
                                <td>
                                    <label for="use_check"><span>[필수]</span>이용약관</label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><textarea name="" id="">이용약관입니다.ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅁㄴㄹㅇㅁㄴ</textarea></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" id="personal_check">
                                </td>
                                <td>
                                    <label for="personal_check"><span>[필수]</span>개인정보 수집 및 이용</label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><textarea name="" id="">개인정보 수집 및 이용입니다. ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹ</textarea></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" id="location_check">
                                </td>
                                <td>
                                    <label for="location_check"><span>[선택]</span>위치기반 서비스 이용약관 </label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><textarea name="" id="">위치기반 서비스 이용약관ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹㄴㅁㅇㄻㄴㅇㄹ</textarea></td>
                            </tr>
                           
                       </table>
        
                    </div>
                    <div class="enroll_btn_area">
        
                        <button class="btn_next">다음</button>
        
        
                    </div>
                </div>
        
                <!-- 두번째 페이지 -->
                <div class="enroll_page_2 enroll_page">
                    <form action="insertUser.mo" method="post">
                        <div class="enroll_area form_area">
                            
                            <table class="form_table">
                                <tr>
                                    <td>아이디 <span class="material-icons star">star</span></td>
                                    <td>
                                        <input type="text" name="userId"  placeholder="영문자+숫자 8~15자" id="userId"> <button type="button" onclick="idcheck()">중복확인</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>비밀번호 <span class="material-icons star">star</span></td>
                                    <td><input type="password" name="userPwd" id="userPwd"  placeholder="영문자,숫자,특수문자 8~15자"></td>
                                </tr>
                                <tr>
                                    <td>비밀번호 확인 <span class="material-icons star">star</span></td>
                                    <td><input type="password" id="check_pwd">
                                    <div class="pwd_check_div"></div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>이름 <span class="material-icons star">star</span></td>
                                    <td><input type="text" name="userName" id="userName"  ></td>
                                </tr>
                                <tr>
                                    <td>닉네임</td>
                                    <td><input type="text" name="nickName" maxlength="10"></td>
                                </tr>
                                <tr>
                                    <td>주소</td>
                                    <td>
                                        <input type="text" id="sample6_postcode" placeholder="우편번호">
                                        <button type="button" onclick="search_address()">우편번호 찾기</button> <br> <br>
                                        <input type="text" id="sample6_address" placeholder="주소" name="address1"><br><br>
                                        <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="address2">
                                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" name="address3">
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>핸드폰번호 <span class="material-icons star">star</span></td>
                                    <td>
                                        
                                        <input type="text" name="phone" id="phone" placeholder="-를 붙여주세요">
                                    </td>
                                </tr>
                                <tr class="email">
                                    <td>이메일</td>
                                    <td><input type="text" name="email1" id="email_1">@<input type="text" name="email2" id="email_2">
                                    <select >
                                        <option >직접입력</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="google.com">google.com</option>
                                    </select></td>
                                </tr>
                               
        
                            </table>
        
        
        
        
                        </div>
        
                        
                        <div class="enroll_btn_area">
        
        
                            <button type="button" class="btn_back">이전</button>
        
                            <button type="submit" class="btn_submit" onclick="return enroll()">회원가입</button>
                        </div>
                    </form>
                </div>
            </div>
        




        </div>



    </section>





    <script>

        function idcheck(){
     
            const regExp_id= /^[a-zA-Z][0-9a-zA-Z]{7,16}$/g
            
            if(!regExp_id.test(userId.value)){

                alert('아이디 형식에 맞지 않습니다. 다시 입력해주세요')
                userId.select();

                return false;
            }else{
                $.ajax({
                url:"searchId.mo",
                data:{
                    checkId:$('#userId').val()
                },
                type:"post",
                success:function(result){
                    
                    if(result==='nnnnY'){
                        if(confirm("사용가능한 아이디입니다. 사용하시겠습니까?")){
                            $('#userId').attr('readonly','true')
                            $('#userPwd').focus()
                        }else{
                            $('#userId').val("").focus()
                        }

                    }else if(result==='nnnnN'){
                        alert('사용불가능한 아이디입니다. 다시 입력해주세요')
                        $('#userId').val("").focus()
                    }


                  
                },
                error:function(){
                    console.log("아이디 실패")
                },

            })

            }
            
            

        }







    </script>

<script>
    function search_address() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>







</body>
</html>