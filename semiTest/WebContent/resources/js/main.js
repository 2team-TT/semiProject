new Swiper('.swiper-container',{
    direction: 'vertical',
    autoplay:{
        delay:3000,
    },
    loop:true,
    

});


const big = document.querySelector('header .big');
const small = document.querySelector('header .small__main');
const menu__click = document.querySelector('.menu__click')

window.addEventListener('scroll',_.throttle(function(){
    if(window.scrollY<=50){
        gsap.to(big,.2,{
            height:'100%',
            display:"block",
        })
        gsap.to(small,.2,{
            height:0,
            display:"none",
        })
        gsap.to('.side_menu',.5,{
            width:0,
            display:"none",
        })
    }else{
        gsap.to(big,.2,{
            height:0,
            display:"none",
        })
        gsap.to(small,.2,{
            height:"100px",
            display:"flex",
        })
    }
}))


let side_menu_out = document.querySelector('.out')


const out_btn_function = function(){
    gsap.to('.side_menu',.5,{
        width:0,
        display:"none",
    })
}



menu__click.addEventListener('click',function(){
    gsap.to('.side_menu',.5,{
        width:'300px',
        display:"block",
    })
})

side_menu_out.addEventListener('click',out_btn_function)


const side__btn__community = document.querySelector('.side__navi__main .side__btn__community');
const side__btn__shopping = document.querySelector('.side__navi__main .side__btn__shopping');
const side__btn__house = document.querySelector('.side__navi__main .side__btn__house');

const side__navi__community = document.querySelector('.side__navi__main .side__navi__community');
const side__navi__shopping = document.querySelector('.side__navi__main .side__navi__shopping');
const side__navi__house = document.querySelector('.side__navi__main .side__navi__house');

const side__btn = document.querySelector('.side_menu .side__btn');

const out__category =function(){
    gsap.to('.side__navi__main',.1,{
        display:"block",
    });
    gsap.to('.side__navi__community',0,{
        display:"none",
    });
    gsap.to('.side__navi__shopping',0,{
        display:"none",
    });
    gsap.to('.side__navi__house',0,{
        display:"none",
    });
    side__btn.removeEventListener('click',out__category)
    side__btn.addEventListener('click',out_btn_function)
}

side__btn__community.addEventListener('click',function(){
    gsap.to('.side__navi__community',.1,{
        display:"block",
    });
    gsap.to('.side__navi__main',0,{
        display:"none",
    });
    side__btn.removeEventListener('click',out_btn_function)
    side__btn.addEventListener('click',out__category)
    
})


side__btn__shopping.addEventListener('click',function(){
    gsap.to('.side__navi__shopping',.1,{
        display:"block",
    });
    gsap.to('.side__navi__main',0,{
        display:"none",
    });
    side__btn.removeEventListener('click',out_btn_function)
    side__btn.addEventListener('click',out__category)
    
})

side__btn__house.addEventListener('click',function(){
    gsap.to('.side__navi__house',.1,{
        display:"block",
    });
    gsap.to('.side__navi__main',0,{
        display:"none",
    });
    side__btn.removeEventListener('click',out_btn_function)
    side__btn.addEventListener('click',out__category)
    
})