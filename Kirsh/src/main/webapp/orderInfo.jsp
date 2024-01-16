<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>orderInfo</h1>
	<c:forEach items="${cartList}" var="cart">
		<p>${cart.productName}</p>
		<p>${cart.productCode}</p>
		<p>${cart.productPrice}</p>
		<p>${cart.productCnt}</p>
		<p>${cart.productSize}</p>
	</c:forEach>
	<p>${userInfo.userName}</p>
	<p>${userInfo.userNickname}</p>
	<p>${userInfo.email}</p>
	<p>${userInfo.postcode}</p>
	<p>${userInfo.roadAddress}</p>
	<p>${userInfo.jibunAddress}</p>
	<p>${userInfo.detailAddress}</p>
	<p>${userInfo.extraAddress}</p>
	<p>${userInfo.mobile}</p>
</body>
</html>