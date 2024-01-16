$(function(){
    $(".searchResult-input-btn").on("click", function(){
        if($(".searchResult-input").val() == ""){
            alert("검색어를 입력해주세요.");
            return false;
        }
        
        return true;
    });
});