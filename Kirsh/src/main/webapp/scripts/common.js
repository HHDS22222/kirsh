$(function () {
    // headerTop
    $(".header-top a").text("RESEARCH AND CREATIVITY🔥");
    // search
    $(".search-input-btn").on("click", function(){
    	if($(".search-input").val() === ""){
            alert("검색어를 입력해주세요.");
            return false;
        } 
        
        return true;
    });
	// cart
	$.ajax({
       	type: 'POST',
        url: "getCartList.do",
        dataType: "json",
        contentType: "application/json",
        success: function(data) {
        	$(".cart-item").append("<h3 class=\"cart-order-text\">장바구니가 비어있습니다.</h3>");
            // 성공적인 응답을 처리하는 부분
            var cartListDiv = $(".cart-item"); // 카트 아이템을 출력할 div의 ID나 클래스를 적절히 지정
            cartListDiv.empty(); // 기존 내용을 비움
			if (data.length === 0) {
            cartListDiv.empty(); // 기존 내용을 비움
            cartListDiv.append("<h3 class='cart-order-text'>장바구니가 비어있습니다.</h3>");
        	} else{
        	let total = 0;
        	$(data).each(function(index, cart) {
                // 각 카트 아이템을 출력하는 로직
                var cartItemInfo = $("<div class='cart-item-info'></div>");



                // 카트 아이템 이미지 영역
                var imgArea = $("<div class='cart-item-img-area'></div>");
                var img = $("<img src='" + cart.productImageUrl2 + "' alt=''>");
                imgArea.append(img);
                cartItemInfo.append(imgArea);

                // 카트 아이템 텍스트 영역
                var textArea = $("<div class='cart-item-text-area'></div>");
                var itemName = $("<p class='item-name'><a href='getProduct.do?productCode=" + cart.productCode + "&productModel=" + cart.productModel +"'>" + cart.productName + "</a></p>");
                var itemSize = $("<p class='item-size'>사이즈 " + cart.productSize + "</p>");
                textArea.append(itemName).append(itemSize);
                cartItemInfo.append(textArea);

                // 카트 아이템 수량 영역
                var cntArea = $("<div class='cart-item-cnt-area'></div>");
                var itemCnt = $("<p>" + cart.productCnt + "개</p>");
                cntArea.append(itemCnt);
                cartItemInfo.append(cntArea);

                // 카트 아이템 가격 영역
                var priceArea = $("<div class='cart-item-price-area'></div>");
                var itemPrice = $("<p>" + priceToString(cart.productPrice) + "원</p>");
                priceArea.append(itemPrice);
                cartItemInfo.append(priceArea);
                
                
         		// 카트 아이템 체크박스 영역
//                var checkboxArea = $("<div class='cart-item-checkbox-area'></div>");
//                var checkbox = $("<input type='checkbox' name='cartItem' value=" + cart.cartNum +">");
//                checkboxArea.append(checkbox);
//                cartItemInfo.append(checkboxArea);


                var deleteBtnArea = $("<div class='cart-delete-btn'></div>");
                var deleteBtn = $("<a href='deleteCart.do?productCode=" + cart.productCode+ "&productSize=" + cart.productSize + "'>X</a>");
				deleteBtnArea.append(deleteBtn);
				cartItemInfo.append(deleteBtnArea);
				
                // 완성된 카트 아이템을 cartListDiv에 추가
                cartListDiv.append(cartItemInfo);
                
                total += cart.productPrice;
                
                console.log(total);
            });
            $(".cart-order-info-area").append("<div class='totalPrice'>총 " + priceToString(total) + "원</div>");
        	}
        },
        error: function(error) {
            // 실패 시 처리
            console.error("Error: " + JSON.stringify(error));
        }
    });

    
    // gnb
    let tmp;
    let cur = false;
    $(".gnbbg").on({
        "click": function () {
            $(".areaHide").slideUp(200);
            tmp = $(".gnbbg").detach();
        }
    });

    let gnbbg = $(".gnbbg").detach();

    $(".SHOPbtn").on({
        "click": function () {
            if (!cur) {
                $(".areaHide").slideDown(200);
                $("#wrap").after().append(gnbbg);
            } else {
                $(".areaHide").slideDown(200);
                $("#wrap").after().append(tmp);
            }
        }
    });

    $(".gnb>ul>li>a").on({
        "mouseover": function () {
            $(this).css("color", "#db0032");
        },
        "mouseleave": function () {
            $(this).css("color", "#000");
        }
    })

    $(".dep3>li>a").on({
        "mouseover": function () {
            $(this).css("color", "#000");
        },
        "mouseleave": function () {
            $(this).css("color", "#666");
        }
    });


    // 페이지
    $(".paging a").on({
        "click": function () {
            let idx = $(this).index();
            let len = $(".paging a").length;
            for (let i = 0; i < len; i++) {
                $(".paging a").eq(i).removeClass("onPage");
            }
            $(".paging a").eq(idx).addClass("onPage");
        }
    });

    // 검색
    $(".search").on("click", function () {
        $(".search-area").animate({
            right: '0'
        }, 300);
        $(".search-bg").fadeIn();

    })

    $(".search-bg").on("click", function () {
        $(".search-area").animate({
            right: '-100%'
        }, 300);
        console.log("bg클릭")
        $(".search-bg").fadeOut();
    });

    // 장바구니

    $(".cart").on("click", function () {
       	$(".cart-order-area").animate({
            right: '0'
        }, 300);
        $(".cart-bg").fadeIn();

    })

    $(".cart-bg").on("click", function () {
        $(".cart-order-area").animate({
            right: '-100%'
        }, 300);
        console.log("bg클릭")
        $(".cart-bg").fadeOut();
    });

    function priceToString(price) {
        return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
    }
});
