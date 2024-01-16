<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>KIRSH - LOGIN</title>
    <link rel="icon" href="images/common/cherry.png">
    <link href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css" rel="stylesheet">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/common.css">

</head>

<body>
    <div id="wrap">
    <%@ include file="header.jsp" %>
        <section id="login-inner">
            <div class="inner">
                <h1 class="login-title">LOG IN</h1>
                <div class="login-area">
                    <form name="login" action="login.do" method="post">
                        <div class="input-area">
                            <input type="text" placeholder="아이디" name="userID">
                            <input type="password" placeholder="비밀번호" name="userPW">
                        </div>
                        <div class="submit-area">
                            <input type="submit" class="login-btn" value="로그인"></input>
                            <button type="button" class="regist">회원가입</button>
                        </div>
                        <div class="find-info">
                            <a href="#">아이디 찾기</a>
                            <a href="#">비밀번호 찾기</a>
                        </div>
                        <div class="login-connect-area">
                            <a href="#" class="google">구글 계정으로 로그인</a>
                            <a href="#" class="naver">네이버 계정으로 로그인</a>
                            <a href="#" class="kakao">카카오 계정으로 로그인</a>
                        </div>
                        <div class="login-other">
                            <a href="#" class="other">비회원 주문조회</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
    <%@ include file="footer.jsp" %>
    <div class="gnbbg"></div>
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="scripts/common.js"></script>
    <script src="scripts/login.js"></script>
</body>

</html>