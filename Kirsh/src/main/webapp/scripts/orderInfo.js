$(function(){
    $(document).ready(function () {
        $('.payment-method div').click(function () {
            // 모든 div에서 paymentsOn 클래스 제거
            $('.payment-method div').removeClass('paymentsOn');

            // 클릭된 div에만 paymentsOn 클래스 추가
            $(this).addClass('paymentsOn');
        });

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
        $(".order-result-all-price>strong").text(priceToString(totalResultPrice));
        
    });
});

function copyOrdererInfoToShippingInfo() {
    var ordererName = $('input[name="orderer-name"]').val();
    var ordererEmail = $('input[name="orderer-email"]').val();
    var ordererTelFirst = $('input[name="orderer-first-tel"]').val();
    var ordererTelSecond = $('input[name="orderer-second-tel"]').val();
    var ordererTelThird = $('input[name="orderer-third-tel"]').val();
    var ordererPostcpde = $('input[name="ordererPostcode"]').val();
    var ordererRoadAddress = $('input[name="ordererRoadAddress"]').val();
    var ordererJibunAddress = $('input[name="ordererJibunAddress"]').val();
    var ordererDetailAddress = $('input[name="ordererDetailAddress"]').val();
    var ordererExtraAddress = $('input[name="ordererExtraAddress"]').val();


    // 받는 이 정보에 주문자 정보 복사
    $('input[name="shipping-name"]').val(ordererName);
    $('input[name="shipping-email"]').val(ordererEmail);
    $('input[name="shipping-first-tel"]').val(ordererTelFirst);
    $('input[name="shipping-second-tel"]').val(ordererTelSecond);
    $('input[name="shipping-third-tel"]').val(ordererTelThird);

    $('input[name="shipPostcode"]').val(ordererPostcpde);
    $('input[name="shipRoadAddress"]').val(ordererRoadAddress);
    $('input[name="shipJibunAddress"]').val(ordererJibunAddress);
    $('input[name="shipDetailAddress"]').val(ordererDetailAddress);
    $('input[name="shipExtraAddress"]').val(ordererExtraAddress);
}

// 받는 이 정보 초기화하는 함수
function resetShippingInfo() {
    $('input[name="shipping-name"]').val('');
    $('input[name="shipping-email"]').val('');
    $('input[name="shipping-first-tel"]').val('');
    $('input[name="shipping-second-tel"]').val('');
    $('input[name="shipping-third-tel"]').val('');

    $('input[name="shipPostcode"]').val('');
    $('input[name="shipRoadAddress"]').val('');
    $('input[name="shipJibunAddress"]').val('');
    $('input[name="shipDetailAddress"]').val('');
    $('input[name="shipExtraAddress"]').val('');
}


function priceToString(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}