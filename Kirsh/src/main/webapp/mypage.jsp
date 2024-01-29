<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KIRSH - MY PAGE</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/mypage.css">
<link rel="stylesheet" href="css/common.css">

</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<section id="mypage-inner">
			<div class="inner">
				<h1 class="mypage-title">MY PAGE</h1>
				<div class="right-path">
					<p>home > 마이페이지</p>
				</div>
				<div class="mypage-area">
					<div class="mypage-area-inner">
						<div class="mypage-left-menu">
							<ul>
								<li><a href="getOrderList.do">주문내역조회</a></li>
								<li><a href="#none">쿠폰</a></li>
								<li><a href="#none">1:1문의 내역</a></li>
								<li><a href="#none">회원정보수정</a></li>
								<li><a href="#none">회원탈퇴</a></li>
								<li><a href="logout.do">로그아웃</a></li>
							</ul>
						</div>
						<div class="mypage-right-contents">
							<div class="profile-area">
								<div class="profile-img-area">
									<img src="images/mypage/profile.jpg" class="profile-img">
								</div>
								<p class="user-name">
									<span>${user.userNickname}님</span>
								</p>
							</div>
							<div class="user-info">
								<div class="user-info-list">
									<p>주문내역</p>
									<h3>
										<span>${user.orderCnt}</span>건
									</h3>
								</div>
								<div class="user-info-list">
									<p>쿠폰</p>
									<h3>
										<span>0</span>개
									</h3>
								</div>
								<div class="user-info-list">
									<p>포인트</p>
									<h3>
										<span>0</span>원
									</h3>
								</div>
								<div class="user-info-list">
									<p>1:1문의</p>
									<h3>
										<span>0</span>건
									</h3>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="footer.jsp"%>
	<div class="gnbbg"></div>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="scripts/common.js"></script>
<script src="scripts/mypage.js"></script>
</body>

</html>