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
<link rel="stylesheet" href="css/shop.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<div id="contents">
			<section class="main-banner-area">
				<div class="main-banner"></div>
			</section>
			<section id="first-contents-area">
				<div class="inner">
					<div class="first-contents-title">
						<h1>${categoryName}</h1>
						<div class="sortList">
							<p class="dropDownBtn">정렬 기준</p>
							<div class="dropDown">
								<div>추천순</div>
								<div>최신순</div>
								<div>낮은 가격순</div>
								<div>높은 가격순</div>
							</div>
						</div>
					</div>
					<div class="item-list">
						<c:forEach items="${productList}" var="product">
							<div class="item">
								<a href="getProduct.do?productCode=${product.productCode}&productModel=${product.productModel}">
									<div class="item-thumb">
										<img src="${product.productImageUrl1}" alt="상품이미지1">
									</div>
									<div class="item-name">${product.productName}</div>
									<div class="item-price"><span>${product.productPrice}</span>원</div>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</section>
			<section id="page-area">
				<div class="paging">
					<a href="#" class="onPage">1</a> 
					<a href="#">2</a> 
					<a href="#">3</a>
				</div>
			</section>
		</div>

	</div>
	<%@ include file="footer.jsp"%>
	<div class="gnbbg"></div>
	<script src="scripts/common.js"></script>
<script src="scripts/shop.js"></script>
</body>

</html>