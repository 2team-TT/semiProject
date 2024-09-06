
let num = 0
new Swiper('.slide__view .swiper-container', {
    autoplay: {
        delay: 3000,
        disableOnInteraction: false, // 버튼 클릭시 자동멈춤 없애준다
    },
    loop: true,
    pagination: {
        el: '.slide__view .swiper-pagination', //페이지 번호 요소 선택자
        clickable: true, //사용자의 페이지 번호 요소 제어 가능 여부
    },
    navigation: {
        prevEl: '.slide__view .swiper-prev',
        nextEl: '.slide__view .swiper-next',
    },
    on: {
        slideChange: function () {
            //이벤트 또는 조건문으로 이용하면 된다.
            num = num + 1

        },
    }

});


console.log(num)
// 요리와 중고 영역 스크립트
const cook_choose = document.querySelector('.board_content .cook_choose');
const used_choose = document.querySelector('.board_content .used_choose');

cook_choose.style.color = '#333'

const cook_used_title = document.querySelector('.board_content .cook_used_title');

const cook_box = document.querySelectorAll('.board_content .cook_box');
const used_box = document.querySelectorAll('.board_content .used_box');


cook_choose.addEventListener('click', function () {

    cook_used_title.innerHTML = "<a href='<%=contextPath%>/foodBoardList.bo?cpage=1'>요리</a>"

    used_choose.style.color = '#858585'
    cook_choose.style.color = '#333'


})


used_choose.addEventListener('click', function () {

    cook_used_title.innerHTML = "<a href='<%=contextPath%>/usedBoardList.bo?cpage=1'>중고</a>"

    cook_choose.style.color = '#858585'
    used_choose.style.color = '#333'



})

// 게시글
const honeytip = document.querySelector('.community_area .honeytip');
const best_community = document.querySelector('.community_area .best_community');


const community_area_title = document.querySelector('.community_area .community_area_title');
const honeytip_table = document.querySelector('.community_area .honeytip_table');
const best_community_table = document.querySelector('.community_area .best_community_table');

honeytip.style.color = '#333'


best_community.addEventListener("click", function () {
    community_area_title.innerHTML = "인기게시글"

    best_community.style.color = '#333'
    honeytip.style.color = '#858585'

    honeytip_table.style.display = "none"
    best_community_table.style.display = "table"

})

honeytip.addEventListener("click", function () {
    community_area_title.innerHTML = "꿀팁"

    best_community.style.color = '#858585'
    honeytip.style.color = '#333'

    honeytip_table.style.display = "table"
    best_community_table.style.display = "none"

})


// 이벤트 영역 슬라이드
new Swiper('.event_area_cook .swiper-container', {
    autoplay: {
        delay: 4000,
        disableOnInteraction: false, // 버튼 클릭시 자동멈춤 없애준다

    },
    loop: true,
    observer: true,
    observer: true,
    observeParents: true,

});


new Swiper('.event_area_house .swiper-container', {
    autoplay: {
        delay: 4000,
        disableOnInteraction: false, // 버튼 클릭시 자동멈춤 없애준다

    },
    loop: true,

    observer: true,
    observer: true,
    observeParents: true,//이렇게 세개 추가해주면 활성화시 멈춤이 없어진다.

});


// 이벤트영역
const choose_house = document.querySelector('.event_area .choose_house');
const choose_cook = document.querySelector('.event_area .choose_cook');
const choose_notice = document.querySelector('.event_area .choose_notice');

const event_area_title = document.querySelector('.event_area .event_area_title');
const notice_table = document.querySelector('.event_area .notice_table');
const event_area_house = document.querySelector('.event_area .event_area_house');
const event_area_cook = document.querySelector('.event_area .event_area_cook');

choose_house.style.color = '#333'

choose_house.addEventListener("click", function () {

    event_area_title.innerHTML = "<a href=''>이달의 집</a>"

    choose_cook.style.color = '#858585'
    choose_notice.style.color = '#858585'
    choose_house.style.color = '#333'

    event_area_house.style.display = "block"
    notice_table.style.display = "none"
    event_area_cook.style.display = "none"


})


choose_notice.addEventListener("click", function () {

    event_area_title.innerHTML = "<a href=''>공지사항</a>"

    choose_cook.style.color = '#858585'
    choose_notice.style.color = '#333'
    choose_house.style.color = '#858585'

    event_area_house.style.display = "none"
    notice_table.style.display = "table"
    event_area_cook.style.display = "none"


})



choose_cook.addEventListener("click", function () {

    event_area_title.innerHTML = "<a href=''>이달의 요리</a>"

    choose_cook.style.color = '#333'
    choose_notice.style.color = '#858585'
    choose_house.style.color = '#858585'

    event_area_house.style.display = "none"
    notice_table.style.display = "none"
    event_area_cook.style.display = "block"


})

console.log(event_area_cook);
console.log(event_area_house);














// const choose_new = document.querySelector('.shopping_content .choose_new');
// const choose_refur = document.querySelector('.shopping_content .choose_refur');
// const choose_group = document.querySelector('.shopping_content .choose_group');
// const choose_discount = document.querySelector('.shopping_content .choose_discount');

// choose_new.style.color = '#333'

// const shopping_title = document.querySelector('.shopping_content .shopping_title');

// const shopping_new_slide = document.querySelector('.shopping_content .shopping_area .shopping_silde.shopping_new_slide');
// const shopping_refur_slide = document.querySelector('.shopping_content .shopping_area .shopping_silde.shopping_refur_slide');
// const shopping_group_slide = document.querySelector('.shopping_content .shopping_area .shopping_silde.shopping_group_slide');
// const shopping_discount_slide = document.querySelector('.shopping_content .shopping_area .shopping_silde.shopping_discount_slide');






// choose_new.addEventListener("click", function () {

//     shopping_title.innerHTML = "<a href=''>상품</a>"

//     choose_new.style.color = '#333'
//     choose_refur.style.color = '#858585'
//     choose_group.style.color = '#858585'
//     choose_discount.style.color = '#858585'

//     shopping_new_slide.style.display = 'block'
//     shopping_refur_slide.style.display = 'none'
//     shopping_group_slide.style.display = 'none'
//     shopping_discount_slide.style.display = 'none'

// })


// choose_refur.addEventListener("click", function () {

//     shopping_title.innerHTML = "<a href=''>리퍼상품</a>"

//     choose_new.style.color = '#858585'
//     choose_refur.style.color = '#333'
//     choose_group.style.color = '#858585'
//     choose_discount.style.color = '#858585'

//     shopping_new_slide.style.display = 'none'
//     shopping_refur_slide.style.display = 'block'
//     shopping_group_slide.style.display = 'none'
//     shopping_discount_slide.style.display = 'none'

// })

// choose_group.addEventListener("click", function () {

//     shopping_title.innerHTML = "<a href=''>공동구매</a>"

//     choose_new.style.color = '#858585'
//     choose_refur.style.color = '#858585'
//     choose_group.style.color = '#333'
//     choose_discount.style.color = '#858585'

//     shopping_new_slide.style.display = 'none'
//     shopping_refur_slide.style.display = 'none'
//     shopping_group_slide.style.display = 'block'
//     shopping_discount_slide.style.display = 'none'

// })

// choose_discount.addEventListener("click", function () {

//     shopping_title.innerHTML = "<a href=''>초특가할인</a>"

//     choose_new.style.color = '#858585'
//     choose_refur.style.color = '#858585'
//     choose_group.style.color = '#858585'
//     choose_discount.style.color = '#333'

//     shopping_new_slide.style.display = 'none'
//     shopping_refur_slide.style.display = 'none'
//     shopping_group_slide.style.display = 'none'
//     shopping_discount_slide.style.display = 'block'


// })











// const property_choose = document.querySelector('.brokerage_area .property_choose');
// const move_choose = document.querySelector('.brokerage_area .move_choose');


// property_choose.style.color = '#333'

// const brokerage_title = document.querySelector('.brokerage_area .brokerage_title');

// const property_slide = document.querySelector('.brokerage_area .brokerage_slide_area .swiper-container.property_slide');
// const move_slide = document.querySelector('.brokerage_area .brokerage_slide_area .swiper-container.move_slide');




// property_choose.addEventListener("click", function () {

//     brokerage_title.innerHTML = "<a href=''>부동산 중개소</a>"


//     move_choose.style.color = '#858585'
//     property_choose.style.color = '#333'

//     move_slide.style.display = 'none'
//     property_slide.style.display = 'block'



// })


// move_choose.addEventListener("click", function () {

//     brokerage_title.innerHTML = "<a href=''>이사 중개소</a>"


//     move_choose.style.color = '#333'
//     property_choose.style.color = '#858585'

//     move_slide.style.display = 'block';
//     property_slide.style.display = 'none'


// })