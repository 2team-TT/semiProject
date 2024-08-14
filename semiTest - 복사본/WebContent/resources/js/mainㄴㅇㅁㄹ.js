const header__smallEl =document.querySelector('.header__small')
const header__upEl = document.querySelector('.header__up')
const searchEl = document.querySelector('.search')
const menu__click = document.querySelector('.menu__click')


window.addEventListener('scroll',_.throttle(function(){
    if(window.scrollY<=20){
        console.log('asdfas')
        gsap.to(header__smallEl,.3,{
            opacity:0,
            display:'none',
        })
        gsap.to(header__upEl,.3,{
            opacity:1,
            display:'flex',
        })
       
        gsap.to(searchEl,.3,{
            opacity:1,
            display:'flex',
        })
    }else if(window.scrollY>20){
        console.log('22222')
        
        gsap.to(header__smallEl,.3,{
            opacity:1,
            display:'flex',
        })
        gsap.to(header__upEl,.3,{
            opacity:0,
            display:'none',
        })
        gsap.to(searchEl,.3,{
            opacity:0,
            display:'none',
        })
    }
}))


menu__click.addEventListener('click',function(){
    gsap.to('.small__menu__list',.5,{
        width:'200px'
    })
})