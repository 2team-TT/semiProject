const board_search = document.querySelector('.btn_area .board_search');


board_search.addEventListener('click',function(){
    document.querySelector('.btn_area .board_search div').style.display='none';
    document.querySelector('.btn_area .board_search #search_input').style.display='inline';
    document.querySelector('.btn_area .board_search button').style.display='inline';
})







const lately_board_choose = document.querySelector('.Board_list .list_area .list_choose .lately_board_choose');
const best_board_choose = document.querySelector('.Board_list .list_area .list_choose .best_board_choose');




const lately_board = document.querySelector('.Board_list .list_area .lately_board');
const best_board = document.querySelector('.Board_list .list_area .best_board');







lately_board_choose.addEventListener('click',function(){
    best_board_choose.style.color='#858585'
    lately_board_choose.style.color='#333'
    lately_board.style.display='table'
    best_board.style.display='none'



})


best_board_choose.addEventListener('click',function(){
   best_board_choose.style.color='#333'
    lately_board_choose.style.color='#858585'
    lately_board.style.display='none'
    best_board.style.display='table'
   



})

