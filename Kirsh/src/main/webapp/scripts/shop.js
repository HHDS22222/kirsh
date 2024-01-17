$(function () {
    let down = false;
    $(".dropDownBtn").on({
        "click": function () {
            if (!down) {
                $(".dropDown").css("display", "block");
                down = true;
            } else {
                $(".dropDown").css("display", "none");
                down = false;
            }
        }
    });

    $(".dropDown div").on({
        "click": function () {
            $(".dropDownBtn").text($(this).text());
            $(".dropDown").css("display", "none");
            down = false;
        }
    })

    $(".item").on({
        "click": function () {
            location.href = 'item-info.jsp';
        }
    });


    // 스토어 메인 배너
    $(document).ready(function () {
        let url = "images/store/store-banner.jpg"
        $(".main-banner").html(`<img src=${url}>`);
    })
    
    $(".item-price>span").each(function () {
        var productPrice = $(this).text();
        $(this).text(priceToString(productPrice));
        });
});

    function priceToString(price) {
        return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }