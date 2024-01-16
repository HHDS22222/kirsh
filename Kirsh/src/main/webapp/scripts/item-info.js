$(function () {
    let sum = 0;
    
	$(".price-area>p>strong").text(priceToString($(".price-area>p>strong").text()));
    let price = $(".price-area p>strong").text();
    let resultPrice = price.replace(',', '');
    let priceNum = Number(resultPrice);

    let firstBtn = false;
    let secondBtn = false;
    let thirdBtn = false;

    $(".size-area .size").on({
        "click": function () {
            let idx = $(this).index();
            $(this).css({
                "backgroundColor": "#f0244d",
                "color": "#fff",
                "border": "3px solid #f0244d"
            });
            if (idx == 0) {
                if (!firstBtn) {
                    addItem(idx)
                    firstBtn = true;
                }

            } else if (idx == 1) {
                if (!secondBtn) {
                    addItem(idx)
                    secondBtn = true;
                }
            } else if (idx == 2) {
                if (!thirdBtn) {
                    addItem(idx);
                    thirdBtn = true;
                } else {

                }
            }
        }
    })
        $(".add-cart").on("click", function(){
        let price = $(".price-area p>strong").text();
    	let resultPrice = price.replace(',', '');
        var productCodeFromURL = getParameterByName("productCode");
        var items = [];

        $(".item-title .plus").each(function () {
            var text = $(".kor-name").text();
            var size = $(this).find(".add-item-size").text();
            var quantity = $(this).find(".quantity_opt").val();
			console.log(priceNum);
            // 각 상품 정보를 객체로 만들어 배열에 추가
            items.push({
                productCode: productCodeFromURL,
                productName: text,
                productPrice: resultPrice,
                productCnt: quantity,
                productSize: size
            });
        });
       console.log(`items: ${JSON.stringify(items)}`);
       console.log(typeof(JSON.stringify(items)));
       console.log(typeof(items));
        $.ajax({
            type: "POST",
            url : "insertCart.do",
            dataType : "text",
           	contentType: "application/json",
           	data: JSON.stringify(items),
            success: function(){
                alert("장바구니 상품 등록 완료");
                location.reload()
            },
    error: function (request, status, error) {
        console.log("code: " + request.status)
        console.log("message: " + request.responseText)
        console.log("error: " + error);
    }
        })
    });
    
    
    $(".item-title").on("click", ".btn-area .up", function () {
        let idx = $(this).parent().parent().index();
        console.log(idx + " UP");
        let quantityInput = $(".item-title .plus:eq(" + idx + ") .quantity_opt");
        let value = parseInt(quantityInput.val(), 10);
        value++;
        quantityInput.val(value);
        updateTotalPrice();
    });

    $(".item-title").on("click", ".btn-area .down", function () {
        let idx = $(this).parent().parent().index();
        console.log(idx + " DOWN");
        let quantityInput = $(".item-title .plus:eq(" + idx + ") .quantity_opt");
        let value = parseInt(quantityInput.val(), 10);
        if (value > 1) {
            value--;
            quantityInput.val(value);
            updateTotalPrice();
        }
    });


    function updateTotalPrice() {
        let total = 0;
        $(".item-title .plus").each(function () {
            let quantity = parseInt($(this).find(".quantity_opt").val(), 10);
            total += priceNum * quantity;
        });
        $(".result-area strong").text(priceToString(total));
    }

    function addItem(idx) {
        let text = $(".kor-name").text();
        let size = $(".size-area .size").eq(idx).text();
        $(".item-title").append(`<div class="plus">
            <strong><span class="add-item-title">${text}</span> - <span class="add-item-size">${size}<span></strong>
            <input type="text" class="quantity_opt" value="1">
            <div class="btn-area">
                <a href="#none" class="up">UP</a>
                <a href="#none" class="down">DOWN</a>
            </div>
        </div>`);

        sum += priceNum;
        $(".result-area strong").text(priceToString(sum));

    }


    function priceToString(price) {
        return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }
    
    function getParameterByName(name) {
  	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
  var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
  results = regex.exec(location.search);
  return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
});

