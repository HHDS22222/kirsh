$(function () {
    $(document).on("ready", function () {

        $(".register>form>div>div>label").addClass("add");
    });
    $(".submit-btn button").on({
        "click": function () {
            let id = $(".user-id").val();
            let pw = $(".user-pw").val();
            let pwCheck = $(".user-pw-check").val();
            let email = $(".user-email").val();
            let nickname = $(".user-nickname").val();
            let message = $(".message");
            let birth_year = $(".year").val();
            let birth_month = $(".month").val();
            let birth_day = $(".day").val();
            let firstTel = $(".first-tel").val();
            let secondTel = $(".second-tel").val();
            let thirdTel = $(".third-tel").val();

            if (id.length < 4 || id.length > 16) {
                message.text("아이디는 4~16자로 입력해주세요.")
                return;
            }

            if (pw.length < 8) {
                message.text("비밀번호는 8자리 이상 입력해주세요.");
                return;
            }

            if (pw !== pwCheck) {
                message.text("비밀번호가 일치하지 않습니다.");
                return;
            }
            let idx = email.indexOf("@");

            if (idx == -1 || email.indexOf(".") <= idx) {
                message.text("이메일 형식이 유효하지 않습니다.");
                return;
            }
            if (nickname.length < 2) {
                message.text("닉네임은 2글자 이상으로 입력해주세요.")
                return;
            }
            
            // 생년월일
            // if (birth_year == "" || birth_month == "" || birth_day == "") {
            //     message.text("생년월일을 입력해주세요.")
            //     return;
            // }

            if (firstTel == "" || secondTel == "" || thirdTel == "") {
                message.text("연락처를 입력해주세요.")
                return;
            }

        }
    });

});