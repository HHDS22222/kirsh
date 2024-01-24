<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 : 상품 목록</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/management.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/userList.css">
<link rel="stylesheet" href="css/addProduct.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<div id="wrap">
		<div class="management-title">
			<div class="title-mode">관리자 모드</div>
			<div class="title-name">Kirsh</div>
		</div>
		<div class="userList-contents">
			<div class="left-list-area">
				<ul>
					<li><a href="userList.do">유저 목록</a></li>
					<li><a href="getProductItemList.do" class="active">상품 관리</a></li>
					<li><a href="getOrderAllList.do">주문 관리</a></li>
				</ul>
				<a href="index.jsp" class="outManage">나가기</a>
			</div>
			<section id="addProduct-inner">
				<div class="inner">
					<div class="addProduct-area">
						<div class="addProduct-area-inner">

							<div class="addProduct-right-contents">
								<div class="addProduct-left-menu">
									<ul>
										<li><a href="getProductItemList.do?productCategoryNum=0"
											class="categoryClick">ALL</a></li>
										<c:forEach items="${categoryList}" var="category">
											<li><a
												href="getProductItemList.do?productCategoryNum=${category.productCategoryNum}"
												class="categoryClick">${category.productCategoryName}</a></li>
										</c:forEach>
									</ul>
								</div>
								<div class="product-search-area">
									<form action="getProductItemList.do" method="post">
										<div class="product-search-area-inner">
											<label for="productName">상품명</label> <input type="text"
												name="searchName" placeholder="상품명을 입력해주세요."> <label
												for="productCode">상품 코드</label> <input type="text"
												name="searchCode" placeholder="상품 코드를 입력해주세요."> <input
												type="submit" value="검색" class="search-btn"> <input
												type="hidden" name="productCategoryNum"
												value="${productCategoryNum}">
										</div>
									</form>
								</div>
								<form action="deleteProduct.do" method="post">
									<div class="product-list-area">
										<div class="product-header-area">
											<div class="checkbox-area">
												<input type="checkbox" onclick="selectAll(this)">
											</div>
											<div class="product-code contents-title">상품코드</div>
											<div class="product-category contents-title">카테고리</div>
											<div class="product-name contents-title">상품명</div>
											<div class="product-modelName contents-title">상품 모델명</div>
											<div class="product-RPridce contents-title">상품 가격</div>
											<div class="product-price contents-title">소비자 가격</div>
										</div>
										<div class="product-list-contents">
											<c:forEach items="${productItemList}" var="product">
												<div class="product-item">
													<div class="checkbox-area">
														<input type="checkbox" name="product-check"
															value="${product.productCode}">
													</div>
													<div class="product-code">${product.productCode}</div>
													<div class="product-category">${product.productCategoryName}</div>
													<div class="product-name">
														<a
															href="getProductInfo.do?productCode=${product.productCode}">${product.productName}</a>
													</div>
													<div class="product-modelName">${product.productModel}</div>
													<div class="product-RPridce">${product.productRPrice}원</div>
													<div class="product-price">${product.productPrice}원</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<div class="btn-area">
										<a href="productRegister.jsp" class="product-add-btn">등록하기</a>
										<input type="submit" value="삭제하기" class="product-delete-btn">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

	</div>
</body>

</html>
