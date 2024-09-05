// ScrollToPlugin을 GSAP에 등록
// 이 코드는 ScrollToPlugin을 사용하기 위해 반드시 필요.
gsap.registerPlugin(ScrollToPlugin);

// '#to-top' ID를 가진 요소를 선택하여 toTopEl 변수에 저장
// 이 요소는 페이지 상단으로 스크롤할 때 나타나는 버튼.
const toTopEl = document.querySelector('#to-top');

// 사용자가 스크롤을 할 때마다 이벤트가 발생하도록 설정
// _.throttle()은 스크롤 이벤트의 빈도를 제한하여 성능을 최적화하는 역할을 함.
window.addEventListener('scroll', _.throttle(function() {
    // 현재 스크롤 위치를 콘솔에 출력하여 확인
    console.log(window.scrollY);

    // 스크롤 위치가 500픽셀을 넘으면 toTopEl 요소를 화면에 나타나도록 설정
    if (window.scrollY > 500) {
        // GSAP을 사용해 toTopEl 버튼을 x축으로 0 위치로 이동시켜 화면에 나타나게 함.
        gsap.to(toTopEl, {
            duration: 0.2, // 애니메이션 지속 시간 (0.2초)
            x: 0 // x축 위치를 0으로 설정하여 버튼이 화면에 나타남.
        });
    } else {
        // 스크롤 위치가 500픽셀 이하이면 toTopEl 요소를 화면에서 숨김.
        // x축 위치를 100으로 이동시켜 화면 밖으로 사라지게 함.
        gsap.to(toTopEl, {
            duration: 0.2, // 애니메이션 지속 시간 (0.2초)
            x: 100 // x축 위치를 100으로 설정하여 버튼이 화면 밖으로 이동.
        });
    }
}, 300)); // 300ms(0.3초)마다 스크롤 이벤트를 처리하도록 제한

// toTopEl 버튼이 클릭되었을 때의 이벤트 처리
toTopEl.addEventListener('click', function() {
    // 클릭 이벤트가 발생했음을 콘솔에 출력하여 확인
    console.log('Button clicked'); 

    // GSAP을 사용해 페이지를 상단으로 스크롤
    gsap.to(window, {
        duration: 0.5, // 애니메이션 지속 시간 (0.7초)
        scrollTo: { y: 0, autoKill: false } // y축 위치를 0으로 설정하여 페이지 상단으로 스크롤
        // autoKill: false는 사용자가 중간에 스크롤을 시도해도 애니메이션이 중단되지 않도록 함.
    });
});

// 찜하기 버튼의 상태 변경 코드
// 부트 스트랩 버전5의 토스트 기능을 추가 찜하기 할 경우 관련 텍스트 띄우기
document.addEventListener('DOMContentLoaded', function() {
    // 로그인 유저 아이디 가져오기
    const loginUserId = document.getElementById('loginUserId').value;

    function createToast(message, iconElement) {
        // 기존의 toast-container가 존재하면 제거
        const existingToastContainers = document.querySelectorAll('.toast-container');
        existingToastContainers.forEach(container => container.remove());

        const toastContainer = document.createElement('div');
        toastContainer.className = 'toast-container';
        document.body.appendChild(toastContainer); // 문서의 body에 추가

        const toastEl = document.createElement('div');
        toastEl.className = 'toast';
        toastEl.role = 'alert';
        toastEl.ariaLive = 'assertive';
        toastEl.ariaAtomic = 'true';

        const toastBody = document.createElement('div');
        toastBody.className = 'toast-body';
        toastBody.textContent = message;

        toastEl.appendChild(toastBody);
        toastContainer.appendChild(toastEl);

        const toast = new bootstrap.Toast(toastEl, {
            autohide: true,
            delay: 2000 // 2초 후에 토스트가 자동으로 사라지도록 설정
        });

        // 아이콘의 위치를 가져옴
        const rect = iconElement.getBoundingClientRect();
        // 토스트 컨테이너를 아이콘 바로 아래로 위치시킴
        toastContainer.style.position = 'absolute';
        toastContainer.style.top = `${rect.bottom + window.scrollY}px`;
        toastContainer.style.left = `${rect.left}px`;
        toastContainer.style.display = 'block'; // 토스트 컨테이너를 보이도록 설정

        toast.show();
        
        // 토스트가 사라지면 컨테이너도 제거
        toastEl.addEventListener('hidden.bs.toast', () => {
            toastContainer.remove();
        });
    }

    function toggleFavorite(iconElement) {
        const icon = iconElement.querySelector('i');
        
        if (loginUserId === '') {
            // 로그인 상태가 아닌 경우
            $('#loginModal').modal('show');
            return; // 모달을 열고 함수 종료
        }

        if (icon.textContent === 'favorite_border') {
            icon.textContent = 'favorite';
            icon.classList.remove('favorite_border');
            icon.classList.add('favorite');

            // 새 토스트 생성 및 표시
            createToast('관심 상품에 등록하였습니다', iconElement);
        } else {
            icon.textContent = 'favorite_border';
            icon.classList.remove('favorite');
            icon.classList.add('favorite_border');

            // 기존 토스트 숨기기 (비워둘 필요 없음, 토스트는 자동으로 사라짐)
        }
    }

    document.querySelectorAll('.product-item__icon').forEach(iconElement => {
        iconElement.addEventListener('click', () => toggleFavorite(iconElement));
    });
});




// 각각 베스트 상품 섹션에서 기본적으로 6개의 상품을 보여주고 그 이후는 더보기 버튼 클릭시 나타내는 코드
document.addEventListener("DOMContentLoaded", function() {
    // 각 섹션마다 hidden-item 클래스를 적용하는 함수
    function toggleItems(section) {
        const allProductItems = section.querySelectorAll('.product-item');
        const moreButton = section.querySelector('.best-products__more-button');

        // 더보기 버튼 클릭 시 이벤트 처리
        moreButton.addEventListener('click', function(event) {
            event.preventDefault();

            // 숨겨진 아이템이 있는지 확인 (최초에는 6개를 보여줌)
            const hiddenItems = Array.from(allProductItems).filter(item => item.classList.contains('hidden-item'));

            if (hiddenItems.length > 0) {
                // hidden-item이 있으면 리스트를 펼침
                allProductItems.forEach(item => {
                    item.classList.remove('hidden-item');
                });
                moreButton.textContent = '접기'; // 버튼 텍스트를 '접기'로 변경

                // 6번째 아이템 바로 아래로 스크롤 이동
                const lastVisibleItem = allProductItems[6];
                lastVisibleItem.scrollIntoView({
                    behavior: 'smooth',
                    block: 'end'
                });
            } else {
                // 모든 아이템이 노출된 상태이면 다시 숨김
                allProductItems.forEach((item, index) => {
                    if (index >= 6) {
                        item.classList.add('hidden-item');
                    }
                });
                moreButton.textContent = '더보기'; // 버튼 텍스트를 '더보기'로 변경
            }
        });
    }

    // 각 섹션에 대해 hidden-item 적용 및 toggle 기능 활성화
    const sections = document.querySelectorAll('.best-products');
    sections.forEach((section) => {
        const allProductItems = section.querySelectorAll('.product-item');

        // 처음 6개를 제외한 나머지 상품에 hidden-item 클래스를 추가
        allProductItems.forEach((item, index) => {
            if (index >= 6) {
                item.classList.add('hidden-item');
            }
        });

        // 각 섹션에 대해 toggleItems 함수 호출
        toggleItems(section);
    });
});

