


const big = document.querySelector('header .big');
const small = document.querySelector('header .small__main');
const menu__click = document.querySelector('.menu__click')

window.addEventListener('scroll', _.throttle(function () {
    if (window.innerWidth > 1160) {
        if (window.scrollY <= 5) {
            gsap.to(big, 0, {
                height: '100%',
                display: "block",
            })
            gsap.to(small, 0, {
                height: 0,
                display: "none",
            })
            gsap.to('.side_content', .5, {
                width: 0,
                display: "none",
            })
            gsap.to('.first', .5, {
                marginTop: "370px",
            })

            // console.log(window.innerWidth)
        } else {
            gsap.to(big, 0, {
                height: 0,
                display: "none",
            })
            gsap.to(small, 0, {
                height: "100px",
                display: "flex",
            })
            gsap.to('.first', .5, {
                marginTop: "230px",
            })
        }
    }

}))

const search__click = document.querySelector('.search__click');

const side__menu__btn = document.querySelector('.side_menu .side__btn')
const side__search__btn = document.querySelector('.side__search .side__btn')
const width = window.innerWidth;


const out_btn_function = function () {
    gsap.to('.side_content', .5, {
        width: 0,
        display: "none",
    })
}
side__search__btn.addEventListener("click", function () {
    gsap.to('.side_content', .5, {
        width: 0,
        display: "none",
    })
})


menu__click.addEventListener('click', function () {
    gsap.to('.side_menu', .5, {
        width: '300px',
        display: "block",
    })
    gsap.to('.side__search', .5, {
        width: 0,
        display: "none",
    })
})

search__click.addEventListener('click', function () {
    gsap.to('.side__search', .5, {
        width: '400px',
        display: "block",
    })
    gsap.to('.side_menu', .5, {
        width: 0,
        display: "blononeck",
    })
})




side__menu__btn.addEventListener('click', out_btn_function)


// const side__btn__community = document.querySelector('.side__navi__main .side__btn__community');
// const side__btn__shopping = document.querySelector('.side__navi__main .side__btn__shopping');
// const side__btn__house = document.querySelector('.side__navi__main .side__btn__house');

// const side__navi__community = document.querySelector('.side__navi__main .side__navi__community');
// const side__navi__shopping = document.querySelector('.side__navi__main .side__navi__shopping');
// const side__navi__house = document.querySelector('.side__navi__main .side__navi__house');


// const out__category =function(){
//     gsap.to('.side__navi__main',.1,{
//         display:"block",
//     });
//     gsap.to('.side__navi__community',0,{
//         display:"none",
//     });
//     gsap.to('.side__navi__shopping',0,{
//         display:"none",
//     });
//     gsap.to('.side__navi__house',0,{
//         display:"none",
//     });
//     side__menu__btn.removeEventListener('click',out__category)
//     side__menu__btn.addEventListener('click',out_btn_function)
// }

// side__btn__community.addEventListener('click',function(){
//     gsap.to('.side__navi__community',0,{
//         display:"block",
//     });
//     gsap.to('.side__navi__main',0,{
//         display:"none",
//     });
//     side__menu__btn.removeEventListener('click',out_btn_function)
//     side__menu__btn.addEventListener('click',out__category)

// })


// side__btn__shopping.addEventListener('click',function(){
//     gsap.to('.side__navi__shopping',0,{
//         display:"block",
//     });
//     gsap.to('.side__navi__main',0,{
//         display:"none",
//     });
//     side__menu__btn.removeEventListener('click',out_btn_function)
//     side__menu__btn.addEventListener('click',out__category)

// })

// side__btn__house.addEventListener('click',function(){
//     gsap.to('.side__navi__house',0,{
//         display:"block",
//     });
//     gsap.to('.side__navi__main',0,{
//         display:"none",
//     });
//     side__menu__btn.removeEventListener('click',out_btn_function)
//     side__menu__btn.addEventListener('click',out__category)

// })





// 사이드 검색창 스크립트

const side_best = document.querySelector('.side_best');
const side_hot = document.querySelector('.side_hot');

const side_best_list = document.querySelector('.side_best_list');
const side_hot_list = document.querySelector('.side_hot_list');


// side_hot.addEventListener('click', function () {
//     gsap.to('.side_best_list', 0, {
//         display: "none",
//     });
//     gsap.to('.side_hot_list', 0, {
//         display: "flex",
//     });
//     side_best.style.color = '#6d6863'
//     side_hot.style.color = '#333'

// })


// side_best.addEventListener('click', function () {
//     gsap.to('.side_best_list', 0, {
//         display: "flex",
//     });
//     gsap.to('.side_hot_list', 0, {
//         display: "none",
//     });
//     side_hot.style.color = '#6d6863'
//     side_best.style.color = '#333'

// })




const search__input = document.querySelector('.search input');
const auto__search = document.querySelector('.search .auto__search')

search__input.addEventListener("focus", function () {
    gsap.to('.auto__search', .2, {
        display: "block",

    });
})

search__input.addEventListener("blur", function () {
    gsap.to('.auto__search', .2, {
        display: "none",

    });
})


const side__search__input = document.querySelector('.side__search input')

side__search__input.addEventListener("focus", function () {
    gsap.to('.auto__search', .2, {
        display: "block",

    });
})

side__search__input.addEventListener("blur", function () {
    gsap.to('.auto__search', .2, {
        display: "none",

    });
})




$('.auto_searchList>li').click(function () {
    $('#search').val($(this).text())
    console.log($(this).text())

})
