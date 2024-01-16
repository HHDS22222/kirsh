<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>KIRSH - 회원가입</title>
    <link rel="icon" href="images/common/cherry.png">
    <link href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css" rel="stylesheet">
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/common.css">
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <div id="wrap">
    <%@ include file="header.jsp" %>
        <section id="register-area">
            <div class="inner">
                <div class="register">
                    <form name="register" action="register.do" method="post">
                        <p class="requiredText">* 표시는 필수 입력 사항입니다.</p>
                        <div class="first-area">
                            <div class="id-area">
                                <label for="user_id" class="required">아이디</label>
                                <input type="text" placeholder="아이디" class="user-id" name="userID" required>
                            </div>
                            <div class="pw-area">
                                <label for="user_pw" class="required">비밀번호</label>
                                <input type="password" placeholder="비밀번호" class="user-pw" name="userPW" required>
                            </div>
                            <div class="pw-check-area">
                                <label for="pw-check" class="required">비밀번호 확인</label>	
                                <input type="password" placeholder="비밀번호 확인" class="user-pw-check" name="user_pw_check" required>
                            </div>
                        </div>
                        <div class="second-area">
                            <div class="email-area">
                                <label for="user_email" class="required">이메일</label>
                                <input type="email" placeholder="이메일" class="user-email" name="email" required>
                            </div>
                            <div class="name-area">
                                <label for="user_name">성명</label>
                                <input type="text" placeholder="성명" class="user-name" name="userName" required>
                            </div>
                            <div class="nickname-area">
                                <label for="user_nickname" class="required">닉네임</label>
                                <input type="text" placeholder="닉네임" class="user-nickname" name="userNickname" required>
                            </div>
                        </div>
                        <div class="third-area">
                            <div class="birth-area">
                                <label for="birth">생년월일</label>
                                <div class="birth-info">
                                    <input type="text" class="year" maxlength="6" name="birth" placeholder="ex 961023">
                                </div>
                            </div>
                            <div class="tel-area">
                                <label for="tel" class="required">연락처</label>
                                <div class="tel-info">
                                    <input type="text" class="tel first-tel" name="first_tel" maxlength="3" required>
                                    <p>-</p>
                                    <input type="text" class="tel second-tel" name="second_tel" maxlength="4" required>
                                    <p>-</p>
                                    <input type="text" class="tel third-tel" name="third_tel" maxlength="4" required>
                                </div>
                            </div>
                        </div>
                        <div class="four-area">
                            <div class="address-area">
                                <label for="address" class="required">주소</label>
                                <div class="address-info">
                                    <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
                                    <input type="text" id="sample4_postcode" placeholder="우편번호" name="postcode" readonly>
                                    <input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="roadAddress" readonly>
                                    <input type="text" id="sample4_jibunAddress" placeholder="지번주소" name="jibunAddress" readonly>
                                    <span id="guide" style="color:#999;display:none"></span>
                                    <input type="text" id="sample4_detailAddress" placeholder="상세주소를 입력해주세요." name="detailAddress">
                                    <input type="text" id="sample4_extraAddress" placeholder="참고항목" name="extraAddress">
                                </div>
                            </div>
                        </div>
                        <div class="message"></div>
                        <div class="submit-btn">
							<input type="submit" value="회원가입" class="submitBtn">
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
    <%@ include file="footer.jsp" %>
    <div class="gnbbg"></div>
    <script src="scripts/common.js"></script>
    <script src="scripts/register.js"></script>
    <script src="scripts/address.js"></script>
</body>

</html>