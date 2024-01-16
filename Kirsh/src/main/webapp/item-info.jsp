<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KIRSH - SHOP</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/item-info.css">

</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<section id="item-info-area">
			<div class="inner">
				<div class="item-info">
					<div class="item-info-img">
						<img src="${product.productImageUrl2}" alt="상품썸네일1">
					</div>
					<div class="item-info-text">
						<div class="title-area">
							<h2 class="kor-name">${product.productName}</h2>
							<p class="eng-name">${product.productEngName}</p>
						</div>
						<div class="price-area">
							<p><strong>${product.productPrice}</strong>원</p>
						</div>
						<div class="size-area">
							<strong class="size-title">SIZE</strong>
							<div class="size-info">
								<c:forEach items="${productSize}" var="size"
									varStatus="loopStatus">
									<div class="size">${size}</div>
								</c:forEach>
							</div>
						</div>
						<div class="item-list-area">
							<div class="item-title"></div>
							<div class="item-count"></div>
							<div class="item-price"></div>
						</div>
						<div class="result-area">
							<p>총 합계</p>
							<p><strong>0</strong>원</p>
						</div>
						<div class="cart-area">
							<button type="button" class="buy">바로 구매하기</button>
							<button type="button" class="add-cart">장바구니 담기</button>
							<button type="button" class="heart">
								<svg xmlns="http://www.w3.org/2000/svg" class="heart-emo"
									height="2em" viewBox="0 0 512 512">
									<!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                    <style>
svg {
	fill: #000000
}
</style>
                                    <path
										d="M47.6 300.4L228.3 469.1c7.5 7 17.4 10.9 27.7 10.9s20.2-3.9 27.7-10.9L464.4 300.4c30.4-28.3 47.6-68 47.6-109.5v-5.8c0-69.9-50.5-129.5-119.4-141C347 36.5 300.6 51.4 268 84L256 96 244 84c-32.6-32.6-79-47.5-124.6-39.9C50.5 55.6 0 115.2 0 185.1v5.8c0 41.5 17.2 81.2 47.6 109.5z" />
                                </svg>
							</button>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="detail-page">
			<div class="inner">
				<div class="detail">
					<img src="images/store-detail/detail-01.jpg" alt="상세페이지01"> <img
						src="images/store-detail/detail-02.jpg" alt="상세페이지02"> <img
						src="images/store-detail/detail-03.jpg" alt="상세페이지03">
				</div>
			</div>
		</section>
		<section id="review-area">
			<div class="inner"></div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
	<div class="gnbbg"></div>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="scripts/common.js"></script>
<script src="scripts/item-info.js"></script>
</body>

</html>