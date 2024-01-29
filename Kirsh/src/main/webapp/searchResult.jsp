<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>KIRSH - SEARCH</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/searchResult.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<div id="contents">
			<section class="margin">
				<div class="inner">
					<div class="first-contents-title">
						<h1>SEARCH</h1>
					</div>
					<form action="searchProduct.do">
						<div class="searchResult-input-area">
							<input type="text" name="searchName"
								class="searchResult-input" value="${searchName}">
							<button class="searchResult-input-btn"></button>
						</div>

					</form>
					<div class="result-comments-area">
						<p class="result-comments">
							총 <strong>${searchCount}</strong>건의 상품이 검색되었습니다.
						</p>
					</div>
					<div class="first-contents">
						<div class="first-contents-info">
							<div class="item-list">
								<c:forEach items="${searchProduct}" var="product">
									<div class="item">
										<a
											href="getProduct.do?productCode=${product.productCode}&productModel=${product.productModel}">
											<div class="item-thumb">
												<img src="${product.productImageUrl1}" alt="상품이미지1">
											</div>
											<div class="item-name">${product.productName}</div>
											<div class="item-price">
												<span>${product.productPrice}</span>원</div>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</section>
<!-- 		추후 추가..	
			<section id="page-area">
				<div class="paging">
					<a href="#" class="onPage">1</a> <a href="#">2</a>
				</div>
			</section> -->
		</div>
		<%@ include file="footer.jsp"%>
		<div class="gnbbg"></div>
	</div>
	<script src="scripts/common.js"></script>
	<script src="scripts/searchResult.js"></script>
</body>

</html>