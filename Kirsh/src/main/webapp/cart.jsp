<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="cart-order-area">
		<h3 class="cart-order-title">CART</h3>
		<div class="cart-inner-area">
			<div class="cart-order-info-area">
				<div class="cart-item">
					<c:if test="${userID == null}">
						<h3 class="cart-order-text">장바구니가 비어있습니다.</h3>
					</c:if>
				</div>
			</div>
			<div class="cart-order-btn-area">
				<c:if test="${userID != null}">
					<a href="cartOrderInfo.do" class="cart-order-btn-all">주문하기</a>
				</c:if>
			</div>
		</div>
	</div>
	<div class="cart-bg"></div>
</body>
</html>