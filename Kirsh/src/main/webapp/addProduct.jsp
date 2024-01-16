<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KIRSH - ��ǰ ���</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/addProduct.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<section id="addProduct-inner">
			<div class="inner">
				<h1 class="addProduct-title">��ǰ ���</h1>
				<div class="addProduct-area">
					<div class="addProduct-area-inner">
						<div class="addProduct-left-menu">
							<ul>
								<li><a href="getProductItemList.do?productCategoryNum=0" class="categoryClick">ALL</a></li>
								<c:forEach items="${categoryList}" var="category">
									<li><a
										href="getProductItemList.do?productCategoryNum=${category.productCategoryNum}" class="categoryClick">${category.productCategoryName}</a>
									</li>
								</c:forEach>
							</ul>
						</div>
						<div class="addProduct-right-contents">
							<div class="product-search-area">
								<form action="getProductItemList.do" method="post">
									<div class="product-search-area-inner">
										<label for="productName">��ǰ��</label> <input type="text"
											name="searchName" placeholder="��ǰ���� �Է����ּ���."> <label
											for="productCode">��ǰ �ڵ�</label> <input type="text"
											name="searchCode" placeholder="��ǰ �ڵ带 �Է����ּ���."> <input
											type="submit" value="�˻�" class="search-btn">
											<input type="hidden" name="productCategoryNum" value="${productCategoryNum}">
									</div>
								</form>
							</div>
							<form action="deleteProduct.do" method="post">
								<div class="product-list-area">
									<div class="product-header-area">
										<div class="checkbox-area">
											<input type="checkbox" onclick="selectAll(this)">
										</div>
										<div class="product-code contents-title">��ǰ�ڵ�</div>
										<div class="product-category contents-title">ī�װ�</div>
										<div class="product-name contents-title">��ǰ��</div>
										<div class="product-modelName contents-title">��ǰ �𵨸�</div>
										<div class="product-RPridce contents-title">��ǰ ����</div>
										<div class="product-price contents-title">�Һ��� ����</div>
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
												<div class="product-name"><a href="getProductInfo.do?productCode=${product.productCode}">${product.productName}</a></div>
												<div class="product-modelName">${product.productModel}</div>
												<div class="product-RPridce">${product.productRPrice}��</div>
												<div class="product-price">${product.productPrice}��</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="btn-area">
									<a href="productRegister.jsp" class="product-add-btn">����ϱ�</a>
									<input type="submit" value="�����ϱ�" class="product-delete-btn">
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
	<script src="scripts/addProduct.js"></script>
</body>

</html>