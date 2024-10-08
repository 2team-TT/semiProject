// // ScrollToPlugin을 GSAP에 등록
// // 이 코드는 ScrollToPlugin을 사용하기 위해 반드시 필요.
// gsap.registerPlugin(ScrollToPlugin);

// // '#to-top' ID를 가진 요소를 선택하여 toTopEl 변수에 저장
// // 이 요소는 페이지 상단으로 스크롤할 때 나타나는 버튼.
// const toTopEl = document.querySelector('#to-top');

// // 사용자가 스크롤을 할 때마다 이벤트가 발생하도록 설정
// // _.throttle()은 스크롤 이벤트의 빈도를 제한하여 성능을 최적화하는 역할을 함.
// window.addEventListener('scroll', _.throttle(function() {
//     // 현재 스크롤 위치를 콘솔에 출력하여 확인
//     console.log(window.scrollY);

//     // 스크롤 위치가 500픽셀을 넘으면 toTopEl 요소를 화면에 나타나도록 설정
//     if (window.scrollY > 500) {
//         // GSAP을 사용해 toTopEl 버튼을 x축으로 0 위치로 이동시켜 화면에 나타나게 함.
//         gsap.to(toTopEl, {
//             duration: 0.2, // 애니메이션 지속 시간 (0.2초)
//             x: 0 // x축 위치를 0으로 설정하여 버튼이 화면에 나타남.
//         });
//     } else {
//         // 스크롤 위치가 500픽셀 이하이면 toTopEl 요소를 화면에서 숨김.
//         // x축 위치를 100으로 이동시켜 화면 밖으로 사라지게 함.
//         gsap.to(toTopEl, {
//             duration: 0.2, // 애니메이션 지속 시간 (0.2초)
//             x: 100 // x축 위치를 100으로 설정하여 버튼이 화면 밖으로 이동.
//         });
//     }
// }, 300)); // 300ms(0.3초)마다 스크롤 이벤트를 처리하도록 제한

// // toTopEl 버튼이 클릭되었을 때의 이벤트 처리
// toTopEl.addEventListener('click', function() {
//     // 클릭 이벤트가 발생했음을 콘솔에 출력하여 확인
//     console.log('Button clicked'); 

//     // GSAP을 사용해 페이지를 상단으로 스크롤
//     gsap.to(window, {
//         duration: 0.7, // 애니메이션 지속 시간 (0.7초)
//         scrollTo: { y: 0, autoKill: false } // y축 위치를 0으로 설정하여 페이지 상단으로 스크롤
//         // autoKill: false는 사용자가 중간에 스크롤을 시도해도 애니메이션이 중단되지 않도록 함.
//     });
// });

// 내 정보 셀렉트 박스 체크 상태 유지
document.addEventListener('DOMContentLoaded', () => {
  // 체크박스 요소를 선택
  const checkboxes = document.querySelectorAll('.myinfo--alarm input[type=checkbox]');

  // 페이지 로드 시 저장된 상태를 체크박스에 적용
  checkboxes.forEach(checkbox => {
      const savedState = localStorage.getItem(checkbox.id);
      if (savedState !== null) {
          checkbox.checked = (savedState === 'true');
      }
  });

  // 체크박스 상태가 변경될 때마다 로컬 스토리지에 저장
  checkboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
          localStorage.setItem(checkbox.id, checkbox.checked);
      });
  });
});






// 게시글, 댓글, 좋아요 글 테이블 체크박스 전체 선택 js
// 8월30일 기준 삭제, 취소버튼 js 구현까지
// 모든 테이블을 반복

$(document).on("click", ".selectAll", function() {
  // 현재 클릭된 헤더의 체크박스를 기준으로 해당 테이블 내에서만 적용되도록 범위를 한정.
  var $table = $(this).closest("table"); // 클릭된 체크박스가 속한 테이블 찾기
  var isChecked = $(this).is(":checked"); // 헤더의 체크박스 상태를 확인
  
  // 해당 테이블 내에 있는 모든 .rowCheckbox 체크박스의 상태를 헤더 체크박스와 동일하게 설정
  $table.find(".rowCheckbox").prop("checked", isChecked);
});


//  선택된 행을 삭제하는 함수(내 게시글, 내 댓글)
//  좋아요 한 글의 경우 userNo와 boardNo를 비교해서 실제 삭제를 해야하므로 함수 재활용 불가
//  9월 4일 기준 내가 찜한 상품에 대한 삭제 코드 추가

function deleteSelectedRows(type) {
  var selectedNos = []; // 선택된 항목의 번호들을 저장할 배열
  var currentPageId; // 현재 페이지 번호를 저장할 변수

  // 타입에 따라 삭제할 항목 설정
  if (type === 'board') {
    selectedNos = getSelectedNos('bnos'); // 게시글 번호들을 배열에 저장
    currentPageId = '#currentPage'; // 게시글에 해당하는 현제 페이지 번호
    //console.log("bnos: ", selectedNos); // 게시글 번호가 잘 나오는지 확인
    //console.log("currentPage: ", currentPageId); // 페이지 번호가 잘 나오는지 확인
  } else if (type === 'reply') {
    selectedNos = getSelectedNos('rnos'); // 댓글 번호들을 배열에 저장
    currentPageId = '#replyCurrentPage'; // 댓글에 해당하는 현재 페이지 번호
    //console.log("rnos: ", selectedNos); // 댓글 번호가 잘 나오는지 확인
    //console.log("currentPage: ", currentPageId); // 댓글 페이지가 잘 나오는지 확인
  } else if (type === 'wishlist') {
    selectedNos = getSelectedNos('pnos'); // 찜한 상품 번호들을 배열에 저장
    currentPageId = null; // 찜한 상품의 경우 페이징 처리를 하지 않으므로 널 값을 줌
  }

  // selectedNos가 정의되지 않았거나 빈 배열인 경우를 처리 falsy를 이용
  if (!selectedNos || selectedNos.length === 0) {
      alert("삭제할 항목을 선택하세요.");
      return; // 함수를 종료하여 더 이상 진행하지 않음
  }
  
  var currentPage = currentPageId ? parseInt($(currentPageId).val()) : null;

  //console.log("bnos: ", selectedNos);
  //console.log("currentPage: ", currentPageId);

  // 서버에 Ajax 요청을 보내 각 테이블에 존재하는 nos에 해당하는 각종 글을 삭제
  $.ajax({
      type: "POST", // HTTP 메소드 POST 사용
      url: contextPath + "/deleteMy" + capitalizeFirstLetter(type) + ".me", // 요청을 보낼 서버의 URL
      data: {
          nos: selectedNos, // 서버로 보낼 선택된 항목 번호들
          currentPage: currentPage ? currentPage : undefined // 페이지 번호가 필요하면 전송
      },
      traditional: true, // 배열 형태의 데이터를 전송하기 위한 옵션
      success: function(response) { // 요청이 성공하면 실행되는 함수
          alert("삭제가 완료되었습니다."); // 삭제 성공 시 사용자에게 알림

          // 삭제 후 페이지 처리 로직
          var remainingRows = $(".rowCheckbox").length - selectedNos.length; //남은 행의 수 계산

          if (remainingRows > 0) { 
              location.reload(); // 행이 남아있으면 페이지 새로고침
          } else {
              if (currentPage > 1) {
                  loadBoardPage(currentPage - 1); // 이전 페이지로 이동
              } else {
                  location.reload(); // 첫 페이지라면 페이지 새로고침
              }
          }
      },
      error: function(xhr, status, error) {
    	    console.error("Error:", status, error); // 오류를 콘솔에 출력
    	    console.log("Response:", xhr.responseText); // 서버 응답 텍스트를 출력
    	    alert("삭제 중 오류가 발생했습니다."); // 오류 발생 시 사용자에게 알림
    	}

  });
}

// **8월 30일 추가 코드
// 내 게시글 페이지의 3가지 테이블에 대한 삭제, 취소 관련 함수
// 체크된 항목의 번호를 배열로 반환하는 함수
function getSelectedNos(name) {
  var selectedNos = [];
  $("input[name='" + name + "']:checked").each(function() { // 체크된 항목들을 반복 처리
    selectedNos.push($(this).val()); // 체크된 항목의 값을 배열에 추가
  
  })
  return selectedNos; // 수집한 행 번호 배열 반환
}

// 첫 글자를 대문자로 변환하는 함수
function capitalizeFirstLetter(string){
  return string.charAt(0).toUpperCase() + string.slice(1);
}

// 페이지 로딩 함수
function loadPage(page, type) {
  if (type === 'board') {
    loadBoardPage(page); // 게시글 페이지 로드
  } else if( type === 'reply') {
    loadReplyPage(page); // 댓글 페이지 로드
  }
}


// 최근 본 상품을 삭제하는 함수
function deleteRecentProduct(pno) {

  $.ajax({
      type: "POST",
      url: contextPath + "/deleteRecentProduct.me", // 서버의 삭제 요청 URL
      data: {
          pno: pno // 삭제할 상품 번호
      },
      success: function(response) {
          alert("상품이 성공적으로 삭제되었습니다.");
          // 삭제 후 페이지 새로고침 또는 업데이트
          location.reload(); // 페이지 새로고침
      },
      error: function(xhr, status, error) {
          console.error("Error:", status, error);
          alert("삭제 중 오류가 발생했습니다.");
      }
  });
}


// 좋아요 취소 함수
function cancelLikes(){
  var selectedNos = getSelectedNos('lnos'); 
  // 내 게시글, 내 댓글 삭제에 쓰였던 getSelectedNos함수 재활용
  var userNo = parseInt($('#myPageUserNo').val());

  if(selectedNos.length === 0){
    alert("좋아요 취소 할 글목록을 선택하세요.");
    return;
  }
  $.ajax({
    type: "POST",
    url: contextPath + "/cancelLikes.me",
    data: {
      boardNos: selectedNos,
      userNo: userNo
    },
    traditional: true,
    success: function(response) {
      alert("좋아요가 취소되었습니다.");
      location.reload(); // 페이지 새로고침
    },
    error: function(xhr, status, error){
      console.error("Error:", status, error);
      alert("좋아요 취소 중 오류가 발생하였습니다.")
      
    }
  });

}





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
