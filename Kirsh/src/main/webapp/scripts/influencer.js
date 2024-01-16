$(function () {
    const videoURL = [
        `https://www.youtube.com/embed/sGtrHmCK-8A?si=zgdiig4tEncoOltp`,
        `https://www.youtube.com/embed/jCEAb2R61eE?si=VLUwk_GjXZ3WxI6b`,
        `https://www.youtube.com/embed/mbF_06eInRc?si=MplOZycHNgdj3WTv`,
        `https://www.youtube.com/embed/HkXiR8DYSas?si=0umTQ26Nzm3Beufa`,
        `https://www.youtube.com/embed/n6OPH8R_PNI?si=PfODK48_5kWxcGTo`,
        `https://www.youtube.com/embed/LJVbIohMU_Q?si=J0EGid_d6bv4xCnV`,
        `https://www.youtube.com/embed/xEZRlQBTNxE?si=Y_tG5TVZTAfQesuj`,
        `https://www.youtube.com/embed/Cwvp71PfVfA?si=yClZndR0XyVCa3Cj`,
        `https://www.youtube.com/embed/ni7-D0khQ8M?si=cz9VGE4DKcfwlPGu`,
        `https://www.youtube.com/embed/03qViiuyvM0?si=ky4oREtwHGb8vRcS`,
        `https://www.youtube.com/embed/vDaryoaKrt8?si=1VIeBkkO1wBYQdoo`,
        `https://www.youtube.com/embed/HJYTDoqEEmc?si=_8_zc7mUNDXPnhZO`];


    $(document).on("ready", function () {
        $(".bg").css("display", "none");
    });


    $(".bg").on("click", function () {
        const iframe = document.querySelector('iframe');
        if (iframe) {
            let iframeSrc = iframe.src;
            iframe.src = iframeSrc;
        }
        $(".video-contents-area").fadeOut("fast");
        $(".bg").fadeOut(500);
    });

    $(".first-contents-thumb").on({
        "click": function () {
            idx = $(this).index();
            $(".video>iframe").attr("src", videoURL[idx]);
            $(".bg").fadeIn(1000);
            $(".video-contents-area").fadeIn(1300);
        }
    });
});