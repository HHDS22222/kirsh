$(function () {

    // 콘텐츠1
    $(".main-contents-video-area").on({
        "mouseover": function () {
            $(".main-contents-bg").fadeIn("fast");
            $(".main-contents-text").fadeIn("fast");
        },
        "mouseleave": function () {
            $(".main-contents-bg").fadeOut("fast");
            $(".main-contents-text").fadeOut("fast");
        },
        "click": function () {
            location.href = 'influencer.jsp';
        }
    })

    // 콘텐츠2

    $(".item-category li").on({
        "mouseover": function () {
            $(this).children().children().eq(0).fadeIn(200);
            $(this).children().children().eq(1).fadeIn(200);
            $(this).children().children().eq(2).css(
                "transform", "scale(1.03)"
            );
        },
        "mouseleave": function () {
            $(this).children().children().eq(0).fadeOut(100);
            $(this).children().children().eq(1).fadeOut(100);
            $(this).children().children().eq(2).css(
                "transform", "scale(1)"
            );
        }
    })

    // 콘텐츠3
    $(".third-contents-left").on({
        "mouseover": function () {
            $(".third-contents-left .lookbookbg").animate({
                opacity: "0.3",

            }, 200);
            $(".third-contents-left .lookbookText").css("color", "#fff");
        },
        "mouseleave": function () {
            $(".third-contents-left .lookbookbg").animate({
                opacity: "0.1"
            }, 100);
            $(".third-contents-left .lookbookText").css("color", "#000");
        }
    });
    $(".third-contents-right").on({
        "mouseover": function () {
            $(".third-contents-right .lookbookbg").animate({
                opacity: "0.3"
            }, 200);
            $(".third-contents-right .lookbookText").css("color", "#fff");
        },
        "mouseleave": function () {
            $(".third-contents-right .lookbookbg").animate({
                opacity: "0.1"
            }, 100);

            $(".third-contents-right .lookbookText").css("color", "#000");
        }
    });

    // 콘텐츠4
    $(".sns-title-text").on("click", function(){
        location.href = 'https://www.instagram.com/kirsh_official/';
    })
});