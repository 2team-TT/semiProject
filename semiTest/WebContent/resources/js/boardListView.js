const board_search = document.querySelector('.btn_area .board_search');


board_search.addEventListener('click',function(){
    document.querySelector('.btn_area .board_search div').style.display='none';
    document.querySelector('.btn_area .board_search input').style.display='inline';
    document.querySelector('.btn_area .board_search button').style.display='inline';
})



const free_choose_board = document.querySelector('.board_navi .navi_content>.free_choose_board');

const honey_choose_board = document.querySelector('.board_navi .navi_content .honey_choose_board');
const cook_choose_board = document.querySelector('.board_navi .navi_content .cook_choose_board');
const used_choose_board = document.querySelector('.board_navi .navi_content .used_choose_board');


const free_board = document.querySelector('.Board_list .list_area .free_board');
const honey_board = document.querySelector('.Board_list .list_area .honey_board');
const cook_board = document.querySelector('.Board_list .list_area .cook_board');
const used_board = document.querySelector('.Board_list .list_area .used_board');






free_choose_board.addEventListener('click',function(){
 
    free_board.style.display='table'
    honey_board.style.display='none'
    cook_board.style.display='none'
    used_board.style.display='none'



})


honey_choose_board.addEventListener('click',function(){
 
    free_board.style.display='none'
    honey_board.style.display='table'
    cook_board.style.display='none'
    used_board.style.display='none'



})

cook_choose_board.addEventListener('click',function(){
 
    free_board.style.display='none'
    honey_board.style.display='none'
    cook_board.style.display='table'
    used_board.style.display='none'



})

used_choose_board.addEventListener('click',function(){
 
    free_board.style.display='none'
    honey_board.style.display='none'
    cook_board.style.display='none'
    used_board.style.display='table'



})