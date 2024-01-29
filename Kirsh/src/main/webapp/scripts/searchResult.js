$(function(){
    $(".searchResult-input-btn").on("click", function(){
        if($(".searchResult-input").val() == ""){
            alert("검색어를 입력해주세요.");
            return false;
        }
        
        return true;
    });
    $(".item-price>span").each(function () {
        var productPrice = $(this).text();
        $(this).text(priceToString(productPrice));
    });
});

    function priceToString(price) {
        return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }