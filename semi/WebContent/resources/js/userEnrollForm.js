

// 체크 
const enroll_pages = document.querySelector('.enroll_content .enroll_pages');

const btn_next = document.querySelector('.enroll_content .btn_next')
const btn_back = document.querySelector('.enroll_content .btn_back')

const all_check = document.querySelector('.enroll_content #all_check')
const use_check = document.querySelector('.enroll_content #use_check')
const personal_check = document.querySelector('.enroll_content #personal_check')
const location_check = document.querySelector('.enroll_content #location_check')



all_check.addEventListener('change',function(){
    use_check.checked=true
    personal_check.checked=true
    location_check.checked=true
})



btn_next.addEventListener('click', function(){

    
    if(use_check.checked && personal_check.checked){

        
        enroll_pages.style.transform = `translateX(-700px)`;

        window.scrollTo(0,0);

    }else{

            alert("필수 항목에 동의해야합니다.")

    }



})




btn_back.addEventListener('click', function(){

    enroll_pages.style.transform = `translateX(0px)`;
    all_check.checked=false
    use_check.checked=false
    personal_check.checked=false
    location_check.checked=false

})


// 이메일 입력
const select_email = document.querySelector('.email select')

const select_email_direct = document.querySelector('.email select option:nth-child(1)')
const select_email_naver = document.querySelector('.email select option:nth-child(2)')
const select_email_google = document.querySelector('.email select option:nth-child(3)')
const email_2 = document.querySelector('.email #email_2')
const email_1 = document.querySelector('.email #email_1')


select_email.addEventListener('change',function(){

    if(select_email_direct.selected){
        email_2.value = ""

        email_2.disabled=false;
    }else if(select_email_naver.selected){
        email_2.value = select_email_naver.value
        email_2.disabled=true;
    }else if(select_email_google.selected){
        email_2.value = select_email_google.value
        
        email_2.disabled=true;
    }
    
})


// 비번하고 비밀번호 확인 
const userPwd = document.querySelector('.form_area #userPwd')
const check_pwd = document.querySelector('.form_area #check_pwd')
const pwd_check_div = document.querySelector('.form_area .pwd_check_div')


check_pwd.addEventListener('keyup',function(){
   

    if(userPwd.value==check_pwd.value){
        pwd_check_div.innerHTML="일치합니다."
    }else{
        pwd_check_div.innerHTML="불일치합니다."

    }
})



const userId = document.querySelector('.form_area #userId')
const phone = document.querySelector('.form_area #phone')
const userName = document.querySelector('.form_area #userName')




//아이디 정규식
const regExp_id= /^[a-zA-Z][0-9a-zA-Z]{7,16}$/g


// 비밀번호 정규식
const regExp_pwd= /^[a-zA-Z\\d`~!@#$%^&*()-_=+]{7,15}$/;

//이름 정규식
const regExp_name=/^[가-힣]{2,}$/;

//전화번호 정규식
const regExp_phone=/\d{3}-\d{4}-\d{4}/g

function enroll(){

    if(userId.value==""){

        alert('아이디는 필수 입력입니다.')
        userId.select();
        
        return false;
    }

    if(!regExp_pwd.test(userPwd.value)){

        alert('비밀번호 형식에 맞지 않습니다. 다시 입력해주세요')
        userPwd.select();
        
        return false;
    }

    if(userPwd.value!=check_pwd.value){
        alert('비밀번호가 일치하지 않습니다. 다시 입력해주세요')
        check_pwd.select();
        return false;
    }

    if(!regExp_name.test(userName.value)){

        alert('올바른 이름이 아닙니다. 다시 입력해주세요')
        userName.select();
        
        return false;
    }

    if(!regExp_phone.test(phone.value)){

        alert('전화번호 형식에 맞지 않습니다. 다시 입력해주세요')
        phone.select();
        
        return false;
    }

    if(email_1.value!="" && email_2.value==""){
        alert('도메인을 입력해주시기 바랍니다.')
        email_2.select();
        return false;
    }

}





