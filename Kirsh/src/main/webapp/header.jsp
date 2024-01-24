<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@ include file="search.jsp" %>
	<%@ include file="cart.jsp" %>
	<header>
		<section class="header-top">
			<a href="#"></a>
		</section>
		<!-- menu -->
		<div class="inner">
			<nav class="gnb">
				<ul class="gnb-left">
					<li class="dep1">
						<div class="SHOPbtn">SHOP</div>
						<div class="areaHide">
							<div class="dep2-area">
								<ul class="dep2">
									<li><a href="getProductList.do?productCategoryName=ALL&productCategoryNum=0">CLOTHING</a>
										<ul class="dep3">
											<li><a href="getProductList.do?productCategoryName=OUTER&productCategoryNum=9">OUTER</a></li>
											<li><a href="getProductList.do?productCategoryName=SWEATSHIRTS&productCategoryNum=1">SWEATSHIRTS</a></li>
											<li><a href="getProductList.do?productCategoryName=HOODIE&productCategoryNum=2">HOODIE</a></li>
											<li><a href="getProductList.do?productCategoryName=KNITWEAR&productCategoryNum=3">KNITWEAR</a></li>
											<li><a href="getProductList.do?productCategoryName=T-SHIRTS&productCategoryNum=4">T-SHIRTS</a></li>
											<li><a href="getProductList.do?productCategoryName=SHIRT BLOUSE&productCategoryNum=5">SHIRT &amp; BLOUSE</a></li>
											<li><a href="getProductList.do?productCategoryName=DRESS SKIRT&productCategoryNum=6">DRESS &amp; SKIRT</a></li>
											<li><a href="getProductList.do?productCategoryName=PANTS SHOES&productCategoryNum=7">PANTS &amp; SHOES</a></li>
											<li><a href="getProductList.do?productCategoryName=SWIMWEAR&productCategoryNum=8">SWIMWEAR</a></li>
										</ul></li>
									<li><a href="getProductList.do?productCategoryName=POCKET&productCategoryNum=10">POCKET</a></li>
									<li><a href="getProductList.do?productCategoryName=SHOES&productCategoryNum=11">SHOES</a></li>
									<li><a href="getProductList.do?productCategoryName=HEADWEAR&productCategoryNum=12">HEADWEAR</a></li>
									<li><a href="getProductList.do?productCategoryName=KIDS&productCategoryNum=13">KIDS</a></li>
								</ul>
								<div class="gnbBg"></div>
							</div>
						</div>
					</li>
					<li><a href="#">COLLABO</a></li>
					<li><a href="#">BRAND</a></li>
					<li><a href="#">OUTLET</a></li>
				</ul>
				<div id="top-logo">
					<a href="index.jsp"><img src="images/common/logo.gif" alt="로고"></a>
				</div>
				<ul class="gnb-right">
					<c:if test="${userAuthority == 'admin'}">
						<li><a href="userList.do" class="userList">MANAGE</a></li>
					</c:if>
					<li><a href="#none" class="search">SEARCH</a></li>
					<c:choose>
						<c:when test="${userID != null}">
							<li><a href="mypage.do">MY PAGE</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="login.jsp">LOG IN</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="#none" class="cart">CART</a></li>
					<li><a href="#none" class="language">LANGUAGE</a></li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>