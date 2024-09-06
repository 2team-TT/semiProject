$(function(){
    $(".building-type").click(function(){
        if($(this).hasClass("isNotSelected") && !$(this).hasClass("isSelected")){
            $(".building-type").removeClass("isSelected")
            $(".building-type").addClass("isNotSelected")
            $(this).removeClass("isNotSelected")
            $(this).addClass("isSelected")
        }
    })
})

// popup-trigger 클래스를 눌렀을 때
// 해당하는 칸의 팝업 뜨게 하기 (disabled 토글)
// 해당하는 칸을 제외한 모든 팝업 제거
$(function(){
    $(".popup-trigger").click(function(){
        if($(this).next().hasClass("disabled")){
            $(".filter_popup").addClass("disabled")
            $(this).next().removeClass("disabled")
        }else{
            $(this).next().addClass("disabled")
        }
    })
})
$(function(){
    $(".popup-trigger").click(function(){
        if(!$(this).hasClass("isSelected")){
            $(".popup-trigger").addClass("isNotSelected")
            $(".popup-trigger").removeClass("isSelected")
            $(this).removeClass("isNotSelected")
            $(this).addClass("isSelected")
        }else{
            $(this).addClass("isNotSelected")
            $(this).removeClass("isSelected")
        }
    })
})
$(function(){
    $(".price-spanBtn").click(function(){
        if(!$(this).hasClass("isPressedBtn")){
            $(this).addClass("isPressedBtn")
        }else{
            $(this).removeClass("isPressedBtn")
        }
    })
})

// X버튼 눌렀을 때 필터창에 클래스로 disabled 추가
$(function(){
    $(".filter_popup__exitBtn").click(function(){
        // $(".building-type").addClass("isNotSelected")
        // $(".building-type").removeClass("isSelected")
        $(".popup-trigger").addClass("isNotSelected")
        $(".popup-trigger").removeClass("isSelected")
        if(!$(this).parents(".filter_popup").hasClass("disabled")){
            $(this).parents(".filter_popup").addClass("disabled");
        }
    })
})

// 추가필터 안에 접기 열기
$(function(){
    $(".detail-divBtn").click(function(){
        if($(this).next().hasClass("filter-area-activated") && $(this).hasClass("filter-divBtn-activated")){
            $(this).next().removeClass("filter-area-activated")
            $(this).removeClass("filter-divBtn-activated")
        }else{
            $(this).next().addClass("filter-area-activated")
            $(this).addClass("filter-divBtn-activated")
        }
    })
})

$(function(){
    $("#propertyListCloseBtn").click(function(){
        if(!$(this).hasClass("fold")){
            $("#propertyMainRoot").addClass("isFolded")
            $(this).addClass("fold")
            $(this).html("▶")
        }else{
            $("#propertyMainRoot").removeClass("isFolded")
            $(this).removeClass("fold")
            $(this).html("◀")
        }
    })
})

$(function(){
    $("button").click(function(){
        if($(this).hasClass("isNotSelected") && !$(this).hasClass("isSelected")){
            $(this).removeClass("isNotSelected")
            $(this).addClass("isSelected")
        }else if(!$(this).hasClass("isNotSelected") && $(this).hasClass("isSelected")){
            $(this).removeClass("isSelected")
            $(this).addClass("isNotSelected")
        }
    })
})