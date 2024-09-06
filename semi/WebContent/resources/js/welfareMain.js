const filterSwitch = document.getElementById('main-contents__filter');
const filterActivated = document.getElementById('main-contents__filter-place');

function filterOpen(){
    if(filterActivated.classList.contains('isOpened')){
        filterActivated.style.display = 'none';
        // filterActivated.style.height = '0px';
        // filterActivated.style.opacity = 0;
        filterActivated.classList.remove('isOpened')
    }else{
        filterActivated.style.display = 'flex';
        // filterActivated.style.height = '300px';
        // filterActivated.style.opacity = 1;
        filterActivated.classList.add('isOpened')
    }
}