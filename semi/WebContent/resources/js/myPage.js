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
// document.querySelectorAll(".mytable").forEach(function (table) {
//   // 'selectAll' 클래스가 있는 체크박스 가져오기
//   const selectAllCheckbox = table.querySelector("thead .selectAll");
//   if (selectAllCheckbox) {
//     // selectAll 클래스가 존재하는지 확인
//     // 'rowCheckbox' 클래스가 있는 모든 체크박스 가져오기
//     const rowCheckboxes = table.querySelectorAll("tbody .rowCheckbox");

//     // 'selectAll' 체크박스를 클릭했을 때의 동작
//     selectAllCheckbox.addEventListener("change", function () {
//       rowCheckboxes.forEach(function (checkbox) {
//         checkbox.checked = selectAllCheckbox.checked;        
//       });
//     });
//   }
// });
$(document).on("click", ".selectAll", function() {
  // 현재 클릭된 헤더의 체크박스를 기준으로 해당 테이블 내에서만 적용되도록 범위를 한정합니다.
  var $table = $(this).closest("table"); // 클릭된 체크박스가 속한 테이블 찾기
  var isChecked = $(this).is(":checked"); // 헤더의 체크박스 상태를 확인
  
  // 해당 테이블 내에 있는 모든 .rowCheckbox 체크박스의 상태를 헤더 체크박스와 동일하게 설정
  $table.find(".rowCheckbox").prop("checked", isChecked);
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


  // 클릭된 버튼과 가장 가까운 테이블 찾기
  //const table = target.closest('.myinfo--page').querySelector('mytable');

  // 해당 테이블 내에서 체크된 모든 체크박스 선택
  // const checkboxes = document.querySelectorAll("tbody .rowCheckbox:checked");

  // 각 체크된 체크박스를 반복하고 해당 행을 삭제
  // checkboxes.forEach(function (checkbox) {
    // checkbox.closest("tr").remove();
  // });


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
$(".slide--div").click(function () {
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
// 8월 27일 ajax로 페이징 처리 한 후 바인딩 처리한 코드

$(document).on("click", ".p--question", function () {
  // 클릭된 질문의 다음에 있는 답변 요소 찾기.
  const $p = $(this).next(".p--answer");

  // 모든 답변을 슬라이드 업.
  $(".p--answer").slideUp();

  // 클릭된 질문의 다음에 있는 답변이 숨겨져 있으면 슬라이드 다운.
  if ($p.css("display") == "none") {
    $p.slideDown();
  }
});

// $(".p--question").click(function(){

//     // 클릭된 질문 다음에 있는 답변 요소 찾기.
//     const $p = $(this).next(".p--answer");

//     // 모든 답변을 슬라이드 업.
//     $(".p--answer").slideUp();

//     // 클릭된 질문의 다음에 있는 답변이 숨겨져 있으면 슬라이드 다운.
//     if($p.css("display") == "none") {
//        $p.slideDown();
//     }
// });

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
const basicBaskets = document.querySelectorAll(".basicbasket");

// 모든 basicbasket 요소에 이벤트 리스너를 추가.
basicBaskets.forEach((basket) => {
  basket.addEventListener("mouseenter", () => {
    // 현재 호버된 basicbasket의 데이터 속성을 가져오기.
    const name = basket.getAttribute("data-name"); // 임시로 만든 데이터임! 나중에 수정 할 것!
    const seller = basket.getAttribute("data-seller");
    const price = basket.getAttribute("data-price");
    const discount = basket.getAttribute("data-discount");
    const rating = basket.getAttribute("data-rating");
    const description = basket.getAttribute("data-description");
    const deliveryFee = basket.getAttribute("data-deliveryFee");
    const prCount = basket.getAttribute("data-prCount");
    const chooseCount = basket.getAttribute("data-chooseCount");
    const viewCount = basket.getAttribute("data-viewCount");

    // detail--group의 내용 업데이트
    document.getElementById("detail-name").textContent = name;
    document.getElementById("detail-seller").textContent = seller;
    document.getElementById("detail-price").textContent = price;
    document.getElementById("detail-discount").textContent = discount;
    document.getElementById("detail-rating").textContent = rating;
    document.getElementById("detail-description").textContent = description;
    document.getElementById("detail-deliveryFee").textContent = deliveryFee;
    document.getElementById("detail-prCount").textContent = prCount;
    document.getElementById("detail-chooseCount").textContent = chooseCount;
    document.getElementById("detail-viewCount").textContent = viewCount;

    // detail--group 요소를 보이도록 설정
    const detailGroup = document.querySelector(".detail--group");
    detailGroup.style.display = "block";
  });

  basket.addEventListener("mouseleave", () => {
    // 마우스가 basicbasket을 벗어나면 detail--group 요소를 숨김.
    const detailGroup = document.querySelector(".detail--group");
    detailGroup.style.display = "none";
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
$(".rvp--span").click(function () {
  // rvp내에 span태그를 클릭시 발생할 이벤트
  const $span = $(this).closest(".rvp--item"); //선택한 span 태그에서 가장 가까운 rvp--item div를 선택
  $span.remove(); // 해당 div를 삭제
});

/*
    마이페이지 각 테이블 페이징 처리 스크립트
*/

// 마이 페이지에서 게시글 페이징
function loadBoardPage(page) {
  loadPage(page, "board", "/myPageBoard.me", "boardTable");
}

// 댓글 페이징
function loadReplyPage(page) {
  loadPage(page, "reply", "/myPageBoard.me", "replyTable");
}

// 좋아요 한 글 페이징
function loadLikesPage(page) {
  loadPage(page, "likes", "/myPageBoard.me", "likesTable");
}

// 문의 내역 페이징
function loadQuestionPage(page) {
  loadPage(page, "question", "/myPageCS.me", "questionTable");
  console.log(page);
}

// 마이페이지 게시글 정보 페이징처리 ajax
function loadPage(page, type, url, targetId) {
  //const url = contextPath + '/myPageBoard.me'; // 요청을 보낼 URL
  let data = {}; // 서버로 보낼 데이터를 담을 객체

  // type에 따라 서버에 보낼 데이터 설정
  if (type === "board") {
    data = { cBoardPage: page };
  } else if (type === "reply") {
    data = { cReplyPage: page };
  } else if (type === "likes") {
    data = { cLikesPage: page };
  } else if (type === "question") {
    data = { cQuestionPage: page };
  }

  // Ajax 요청을 보내는 부분
  $.ajax({
    type: "GET", // HTTP 요청 메소드: 'GET'을 사용하여 데이터를 가져옴
    url: contextPath + url, // 요청을 보낼 서버의 URL
    data: data, // 서버로 보낼 데이터 (페이지 번호 정보)
    success: function (response) {
      //console.log('Server response:', response); // 서버로부터 받은 전체 응답을 출력
      //console.log('Selected element in response:', $(response).find('#' + targetId)); // 서버 응답에서 선택된 요소 출력
      //console.log('HTML to be inserted:', $(response).find('#' + targetId).html()); // 삽입할 HTML 내용 출력
      // 요청이 성공적으로 완료되면 실행되는 함수
      $("#" + targetId).html(
        $(response)
          .find("#" + targetId)
          .html()
      );
    },
    error: function () {
      // 요청이 실패하면 실행되는 함수
      alert("페이지 로딩 중 오류가 발생했습니다.");
    },
  });
}

/* 마이페이지에서 게시글 '행' 클릭시 해당 게시글 페이지로 넘어가도록 */

// 셀렉트 박스 클릭시 페이지가 넘어가는 문제가 발생함 이를 해결하기 위한 코드
// 셀렉트 박스나 체크박스에서 이벤트 전파 중단
// 페이징바 처리나 슬라이드 업 다운 스크립트와 마찬가지로 ajax 코드는 바인딩 처리를 해줘야 하므로
// $(document).on()을 이용해서 화면 전체에 대한 이벤트를 지정해줌
$(document).on("click", "input[type='checkbox'], select", function (event) {
  //문서 전체에 대해서 클릭 이벤트 발생시 셀렉트 박스를 셀렉트 할 경우 다음과 같은 함수 실행
  event.stopPropagation();
  // 이벤트 인터페이스의 stopPropagation()메서드를 실행 -> 현재 이벤트가 캡쳐링/버블링 단계에서 더 이상 전파되지 않도록 방지
});

// 셀렉트 박스가 너무 작아서 그 주변을 클릭하게 될 경우 페이지가 넘어감 이를 방지 할 필요가 있음
// 셀렉트 박스가 포함된 테이블 셀을 클릭했을 때 페이지 이동 방지
// 8/27일 기준 정상작동은 안함.
$(document).on("click", "td:has(select)", function (event) {
    // 셀렉트 박스가 있는 셀을 클릭했을 때, 셀렉트 박스에 포커스를 이동
    $(this).find("select").focus();
    event.stopPropagation(); // 이벤트 전파 중지
});

// jQuery의 document.ready 함수
$(document).on("click", ".clickable-row", function (event) {
  // window.location은 브라우저의 현재 URL을 변경하는 객체
  // $(this)는 현재 클릭된 .clickable-row 요소를 가리킴
  // data("href")는 .clickable-row 요소의 data-href 속성 값을 가져옵니다.
  // 이 값은 페이지를 이동할 URL로 사용.
  if ($(event.target).is("select") || $(event.target).closest("td:has(select)").length) {
    // 셀렉트 박스 또는 셀렉트 박스가 포함된 셀이 클릭된 경우
    console.log("Select box clicked, page will not navigate.");
    return; // 페이지 이동 중지
}
    // 셀렉트 박스가 아닌 경우에만 페이지 이동
    window.location = $(this).data("href");
    console.log("Row clicked, navigating to:", $(this).data("href"));
});
