$(function(){
    $(document).ready(function () {

        $('.order-shipping-chk').change(function () {
            if ($(this).is(':checked')) {
                // 체크되었을 때 주문자 정보를 받는 이 정보에 복사
                copyOrdererInfoToShippingInfo();
            } else {
                // 체크 해제되었을 때 받는 이 정보 초기화
                resetShippingInfo();
            }
        });
        
        // 주문 금액
        let orderPrice = 0;
        $(".product-info-price>strong").each(function () {
            var productPrice = $(this).text();
            orderPrice += Number(productPrice);
            $(this).text(priceToString(productPrice));
        });
        $(".order-result-price>strong").text(priceToString(orderPrice));
        
        // 할인 금액
        let discountPrice = 0;
        discountPrice = Number($(".order-discount-price>strong").text());
        $(".order-discount-price>strong").text(priceToString(discountPrice));
        
        // 배송비
        let delivPrice = 0;
        delivPrice = Number($(".order-shipping-price>strong").text());
        $(".order-shipping-price>strong").text(priceToString(delivPrice));
        
        // 최종 결제 금액
        let totalResultPrice = 0;
        totalResultPrice = orderPrice + discountPrice + delivPrice;
        $(".order-result-all-price").append("<input type='hidden' name='productPrice' value=" + totalResultPrice + ">")
        $(".order-result-all-price>strong").text(priceToString(totalResultPrice));
        
    });
});

function copyOrdererInfoToShippingInfo() {
    var ordererName = $('input[name="ordererName"]').val();
    var ordererEmail = $('input[name="ordererEmail"]').val();
    var ordererTelFirst = $('input[name="ordererFirstTel"]').val();
    var ordererTelSecond = $('input[name="ordererSecondTel"]').val();
    var ordererTelThird = $('input[name="ordererThirdTel"]').val();
    var ordererPostcpde = $('input[name="ordererPostcode"]').val();
    var ordererRoadAddress = $('input[name="ordererRoadAddress"]').val();
    var ordererJibunAddress = $('input[name="ordererJibunAddress"]').val();
    var ordererDetailAddress = $('input[name="ordererDetailAddress"]').val();
    var ordererExtraAddress = $('input[name="ordererExtraAddress"]').val();


    // 받는 이 정보에 주문자 정보 복사
    $('input[name="payee"]').val(ordererName);
    $('input[name="shipEmail"]').val(ordererEmail);
    $('input[name="shipFirstTel"]').val(ordererTelFirst);
    $('input[name="shipSecondTel"]').val(ordererTelSecond);
    $('input[name="shipThirdTel"]').val(ordererTelThird);

    $('input[name="shipPostCode"]').val(ordererPostcpde);
    $('input[name="shipRoadAddress"]').val(ordererRoadAddress);
    $('input[name="shipAddress"]').val(ordererJibunAddress);
    $('input[name="shipDetailAddress"]').val(ordererDetailAddress);
    $('input[name="shipExtraAddress"]').val(ordererExtraAddress);
}

// 받는 이 정보 초기화하는 함수
function resetShippingInfo() {
    $('input[name="payee"]').val('');
    $('input[name="shipEmail"]').val('');
    $('input[name="shipFirstTel"]').val('');
    $('input[name="shipSecondTel"]').val('');
    $('input[name="shipThirdTel"]').val('');

    $('input[name="shipPostCode"]').val('');
    $('input[name="shipRoadAddress"]').val('');
    $('input[name="shipAddress"]').val('');
    $('input[name="shipDetailAddress"]').val('');
    $('input[name="shipExtraAddress"]').val('');
}


function priceToString(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}