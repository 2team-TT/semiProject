// 마이페이지 내 게시글 체크박스 전체 선택 js
// document.querySelector('.selectAll').addEventListener('change', function() {
//     const checkboxes = document.querySelectorAll('.rowCheckbox');
//     const isChecked = this.checked;  // selectAll 체크박스의 상태를 변수에 저장.
//     checkboxes.forEach(function(checkbox) {
//         checkbox.checked = isChecked;  // 변수 isChecked를 사용하여 체크 상태를 설정.
//     });
// });

// 게시글, 댓글, 좋아요 글 테이블 체크박스 전체 선택 js
// 8월19일 기준 삭제, 취소버튼 js 구현까지
    // 모든 테이블을 반복
document.querySelectorAll('.mytable').forEach(function(table) {
    // 'selectAll' 클래스가 있는 체크박스 가져오기
    const selectAllCheckbox = table.querySelector('thead .selectAll');
    // 'rowCheckbox' 클래스가 있는 모든 체크박스 가져오기
    const rowCheckboxes = table.querySelectorAll('tbody .rowCheckbox');

    // 'selectAll' 체크박스를 클릭했을 때의 동작
    selectAllCheckbox.addEventListener('change', function() {
        rowCheckboxes.forEach(function(checkbox) {
            checkbox.checked = selectAllCheckbox.checked;
        });
    });

    
});

    // 삭제 버튼 클릭 이벤트
    // 삭제 버튼 이벤트는 onclick이벤트로 빼서 함수로 만들 예정
    // 공통적으로 선택된 행을 삭제하는 함수 사용하여 코드 줄일 생각
    // btn 버튼에 공통적인 onclick 이벤트를 수행할 class가 필요해서 commonBtn으로 만들 생각
    // 결론적으로 commonBtn 클래스는 필요 없다 생각하여 삭제
    /*
    table.closest('.myinfo--page').querySelectorAll('.btn1').forEach(function(btn) {
        btn.addEventListener('click', function() {
            // 체크된 row들을 가져와 삭제
            rowCheckboxes.forEach(function(checkbox) {
                if (checkbox.checked) {
                    checkbox.closest('tr').remove();
                }
            });
        });
    });
    */


// 선택된 행을 삭제하는 함수
function deleteSelectedRows(){
    // event 매개변수를 통해 기본동작 방지
   

    // 클릭된 버튼과 가장 가까운 테이블 찾기
    //const table = target.closest('.myinfo--page').querySelector('mytable');

    // 해당 테이블 내에서 체크된 모든 체크박스 선택
    const checkboxes = document.querySelectorAll('tbody .rowCheckbox:checked');

    // 각 체크된 체크박스를 반복하고 해당 행을 삭제
    checkboxes.forEach(function(checkbox){
        checkbox.closest('tr').remove();
    })
}


/*
// 모든 selectAll 체크박스를 우선 선택.
document.querySelectorAll('.selectAll').forEach(function(selectAllCheckbox) {
    // quearySelectorAll을 사용하여 selectAll클래스를 모두 선택하여 forEach를 돌림
    selectAllCheckbox.addEventListener('change', function() {
        // 각 selectAll 체크박스에 change 이벤트 리스너를 추가.
        const checkboxes = this.closest('table').querySelectorAll('.rowCheckbox');
        // this.closest('table')는 현재 내가 선택한 이 테이블을 말함.
        // 현재 내가 선택한 이 테이블에 속한 테이블 내의 rowCheckbox들을 선택.
        const isChecked = this.checked;  // selectAll 체크박스의 상태를 저장.
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = isChecked;  // 모든 rowCheckbox의 상태를 selectAll과 동일하게 설정합니다.
        });
    });
});
*/
// 고객센터 섹션 자주 하는 질문, 처음 사용자 가이드 리스트 클릭시 구현되는 스크립트
$(".slide--div").click(function() {
    // 클릭된 .slide--div 다음에 있는 .slide--p 요소를 가져옴
    const $p = $(this).next(".slide--p");

    // 모든 .slide--p 요소를 닫음
    $(".slide--p").slideUp();

    // 만약 현재 클릭된 요소의 다음 .slide--p가 열려있지 않으면 열기
    if ($p.css("display") == "none") {
        $p.slideDown();
    }
});

// 고객센터 섹션 문의내역 테이블 클릭시 답변 나타나도록 하는 스크립트
$(".p--question").click(function(){

    // 클릭된 질문 다음에 있는 답변 요소 찾기.
    const $p = $(this).next(".p--answer");

    // 모든 답변을 슬라이드 업.
    $(".p--answer").slideUp();

    // 클릭된 질문의 다음에 있는 답변이 숨겨져 있으면 슬라이드 다운.
    if($p.css("display") == "none") {
       $p.slideDown();
    }
});

/* 기본 정보 호버시 디테일한 내용 보여주기 basic
// 모든 basicbasket 요소들을 가져오기.
const basicBaskets = document.querySelectorAll('.basicbasket');

// 모든 basicbasket 요소에 이벤트 리스너를 추가.
basicBaskets.forEach(basket => {
    basket.addEventListener('mouseenter', () => {
        // detail--group 요소를 찾아서 display 속성을 block으로 변경.
        const detailGroup = document.querySelector('.detail--group');
        detailGroup.style.display = 'block';
    });

    basket.addEventListener('mouseleave', () => {
        // 마우스가 빠져나갔을 때 detail--group 요소를 숨김.
        const detailGroup = document.querySelector('.detail--group');
        detailGroup.style.display = 'none';
    });
});
*/


// 장바구니 섹션 기본 상품 호버시 실행될 상품 상세정보 나타나는 스크립트
// 모든 basicbasket 요소들을 가져오기.
const basicBaskets = document.querySelectorAll('.basicbasket');

// 모든 basicbasket 요소에 이벤트 리스너를 추가.
basicBaskets.forEach(basket => {
    basket.addEventListener('mouseenter', () => {
        // 현재 호버된 basicbasket의 데이터 속성을 가져오기.
        const name = basket.getAttribute('data-name'); // 임시로 만든 데이터임! 나중에 수정 할 것!
        const seller = basket.getAttribute('data-seller');
        const price = basket.getAttribute('data-price');
        const discount = basket.getAttribute('data-discount');
        const rating = basket.getAttribute('data-rating');
        const description = basket.getAttribute('data-description');
        const deliveryFee = basket.getAttribute('data-deliveryFee');
        const prCount = basket.getAttribute('data-prCount');
        const chooseCount = basket.getAttribute('data-chooseCount');
        const viewCount = basket.getAttribute('data-viewCount');

        // detail--group의 내용 업데이트
        document.getElementById('detail-name').textContent = name;
        document.getElementById('detail-seller').textContent = seller;
        document.getElementById('detail-price').textContent = price;
        document.getElementById('detail-discount').textContent = discount;
        document.getElementById('detail-rating').textContent = rating;
        document.getElementById('detail-description').textContent = description;
        document.getElementById('detail-deliveryFee').textContent = deliveryFee;
        document.getElementById('detail-prCount').textContent = prCount;
        document.getElementById('detail-chooseCount').textContent = chooseCount;
        document.getElementById('detail-viewCount').textContent = viewCount;

        // detail--group 요소를 보이도록 설정
        const detailGroup = document.querySelector('.detail--group');
        detailGroup.style.display = 'block';
    });

    basket.addEventListener('mouseleave', () => {
        // 마우스가 basicbasket을 벗어나면 detail--group 요소를 숨김.
        const detailGroup = document.querySelector('.detail--group');
        detailGroup.style.display = 'none';
    });
});

// 찜하기 테이블 리스트 선택 및 삭제 기능
// 내 게시글 테이블과 비슷하므로 삭제/통합 할 가능성 있음

// select-all에 change 이벤트 추가

/* 일단 전체 주석처리 함

document.getElementById('select--all').addEventListener('change', function() {
    const checkboxes = document.querySelectorAll('.delete--checkbox');
    checkboxes.forEach((checkbox) => {
        checkbox.checked = this.checked;
    });
});

function deleteSelectedRows() {
    // 체크된 모든 체크박스 선택
    const checkboxes = document.querySelectorAll('.delete--checkbox:checked');
    
    // 선택된 체크박스에 대해서 반복
    checkboxes.forEach((checkbox) => {
        // 가장 가까운 tr 선택해서 삭제
        const row = checkbox.closest('tr');
        row.remove();
    });
}

*/

// 최근 본 상품내 이미지의 x표시를 클릭시 실행할 이벤트
$('.rvp--span').click(function(){ // rvp내에 span태그를 클릭시 발생할 이벤트
    const $span = $(this).closest('.rvp--item'); //선택한 span 태그에서 가장 가까운 rvp--item div를 선택
    $span.remove(); // 해당 div를 삭제
})