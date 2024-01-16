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
									<li><a href="getProductList.do">CLOTHING</a>
										<ul class="dep3">
											<li><a href="getProductList.do">OUTER</a></li>
											<li><a href="getProductList.do">SWEATSHIRTS</a></li>
											<li><a href="getProductList.do">HOODIE</a></li>
											<li><a href="getProductList.do">KNITWEAR</a></li>
											<li><a href="getProductList.do">T-SHIRTS</a></li>
											<li><a href="getProductList.do">SHIRT &amp; BLOUSE</a></li>
											<li><a href="getProductList.do">DRESS &amp; SKIRT</a></li>
											<li><a href="getProductList.do">PANTS &amp; SHOES</a></li>
											<li><a href="getProductList.do">SWIMWEAR</a></li>
										</ul></li>
									<li><a href="getProductList.do">POCKET</a></li>
									<li><a href="getProductList.do">SHOES</a></li>
									<li><a href="getProductList.do">HEADWEAR</a></li>
									<li><a href="getProductList.do">KIDS</a></li>
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
					<c:if test="${user.authority == 'admin'}">
						<li><a href="userList.do" class="userList">MANAGE</a></li>
					</c:if>
					<li><a href="#none" class="search">SEARCH</a></li>
					<c:choose>
						<c:when test="${user != null}">
							<li><a href="mypage.jsp">MY PAGE</a></li>
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