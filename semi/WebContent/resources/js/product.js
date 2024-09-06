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
            alert("찜하기는 로그인 후 가능합니다");
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

