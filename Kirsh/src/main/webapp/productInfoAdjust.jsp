<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KIRSH - 상품 수정</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/productRegister.css">
</head>
<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<section id="addProduct-inner">
			<div class="inner">
				<h1 class="addProduct-title">상품 수정</h1>
				<div class="addProduct-area">
					<div class="addProduct-area-inner">
						<div class="addProduct-right-contents">
							<form action="updateProduct.do" method="post"
								enctype="multipart/form-data">
								<div class="register-product-contents">
									<div class="register-product-contents-header">기본정보</div>
									<div class="register-product-contents-inner">
										<div class="product-code-area">
											<label for="productCode">상품 코드</label> <input type="text"
												disabled placeholder="${product.productCode}">
										</div>
										<div class="product-name-area">
											<label for="productName">상품명</label> <input type="text"
												name="productName" value="${product.productName}">
										</div>
										<div class="product-engname-area">
											<label for="productEngName">상품 영문명</label> <input type="text"
												name="productEngName" value="${product.productEngName}">
										</div>
										<div class="product-category-name">
											<label for="productCategoryName">카테고리</label> 
											<select name="productCategoryNum">
													<c:forEach items="${categoryList}" var="category">
														<c:if test="${category.productCategoryNum == product.productCategoryNum}">
															<option value="${category.productCategoryNum}" selected>${category.productCategoryName}</option>
														</c:if>
														<c:if test="${category.productCategoryNum != product.productCategoryNum}">
															<option value="${category.productCategoryNum}">${category.productCategoryName}</option>
														</c:if>
													</c:forEach>
													<!-- 												<option value="1">SWEATSHIRTS</option>
												<option value="2">HOODIE</option>
												<option value="3">KNITWEAR</option>
												<option value="4">T-SHIRTS</option>
												<option value="5">SHIRT &amp; BLOUSE</option>
												<option value="6">DRESS &amp; SKIRT</option>
												<option value="7">PANTS &amp; SHOES</option>
												<option value="8">SWIMWEAR</option> -->
											</select>
												<a href="addCategory.do" class="addCategoryBtn">카테고리 추가</a>
										</div>
										<div class="product-RPrice-area">
											<label for="productRPrice">상품 소비자 가격</label> <input
												type="text" name="productRPrice"
												value="${product.productRPrice}">
										</div>
										<div class="product-price-area">
											<label for="productPrice">상품 가격</label> <input type="text"
												name="productPrice" value="${product.productPrice}">
										</div>
										<div class="product-model-name">
											<label for="productModelName">상품 모델명</label> <input
												type="text" name="productModel"
												value="${product.productModel}">
										</div>
										<div class="product-size-area">
											<label for="productOption">옵션</label>
											<div class="productOptionList">
												<c:forEach items="${options}" var="option">
													<div class="productOption">
														<input type="text" name="productSize" placeholder="사이즈"
															value="${option.productSize}"> <input type="text"
															name="productInvntCnt" placeholder="재고수"
															value="${option.productInvntCnt}">
														<div class="productOptionAdd" onclick="addOption()">추가</div>
													</div>
												</c:forEach>

											</div>
										</div>
										<div class="product-image-area">
											<label for="productImage" class="productImage">상품 이미지
												<span>* 1. 600 X 800 사이즈 권장</span> <span>* 2. 800 X
													800 사이즈 권장</span>
											</label>
											<div class="upload-area">
												<input type="file" class="upload-name" name="productImage1">
												<input type="file" class="upload-name" name="productImage2">
											</div>
										</div>
										<div class="product-info-area">
											<label for="productInfo">상품 상세정보</label>
											<textarea name="productInfo" id="productInfo" cols="80"
												rows="10"></textarea>
										</div>

									</div>
								</div>
								<div class="btn-area">
									<input type="submit" class="product-add-btn" value="등록하기"></input>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
	<div class="gnbbg"></div>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script src="scripts/common.js"></script>
	<script src="scripts/productRegister.js"></script>
</body>
</html>