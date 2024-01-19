$(function(){
    $(".resultPrice>span").each(function () {
        var productPrice = $(this).text();
        $(this).text(priceToString(productPrice));
    });
    $(".resultPriceArea>span").each(function () {
        var productPrice = $(this).text();
        $(this).text(priceToString(productPrice));
    });
})

function priceToString(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}