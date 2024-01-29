<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KIRSH - MY PAGE</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/mypage.css">
<link rel="stylesheet" href="css/mypageOrderList.css">
<link rel="stylesheet" href="css/common.css">

</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<section id="mypage-inner">
			<div class="inner">
				<h1 class="mypage-title">주문 내역 조회</h1>
				<div class="right-path">
					<p>마이페이지 > 주문내역조회</p>
				</div>
				<div class="mypage-area">
					<div class="mypage-area-inner">
						<div class="mypage-left-menu">
							<ul>
								<li><a href="getOrderList.do">주문내역조회</a></li>
								<li><a href="#none">쿠폰</a></li>
								<li><a href="#none">1:1문의 내역</a></li>
								<li><a href="#none">회원정보수정</a></li>
								<li><a href="#none">회원탈퇴</a></li>
								<li><a href="logout.do">로그아웃</a></li>
							</ul>
						</div>
						<div class="mypage-right-contents">
							<div class="mypage-order-list-title">
								<div class="orderNum orderTitle">주문 번호</div>
								<div class="order-info-title">
									<div class="orderName orderTitle">주문 상품</div>
									<div class="orderPay orderTitle">사이즈/상품 개수</div>
									<div class="resultPrice orderTitle">결제 금액</div>
								</div>
								<div class="orderDate orderTitle">주문 일자</div>
							</div>
							<div class="mypage-order-list-info">
								<c:forEach items="${orderList}" var="order">
									<div class="order-item">
										<div class="order-item-info">
											<div class="orderNum">${order.orderNum}</div>
											<div class="order-info-list">
												<c:forEach items="${order.orderDetailVO}" var="detail">
													<div class="order-info">
														<div class="orderName orderInfo">
															<div class="orderImg">
																<img src="${detail.productImageUrl2}" alt="">
															</div>
															<p class="orderProductName">${detail.productName}</p>
														</div>
														<div class="orderPay">${detail.productSize} /
															${detail.productCnt}개</div>
														<div class="resultPrice">
															<span>${detail.productCntPrice}</span>원
														</div>
													</div>
												</c:forEach>
											</div>
											<div class="orderDate">
												<span>${order.buyDate}</span> <a href="getOrderInfo.do?orderNum=${order.orderNum}"
													class="orderInfoBtn">상세보기</a>
											</div>
										</div>
										<div class="resultPriceArea">
											총 <span>${order.productPrice}</span>원
										</div>
									</div>
								</c:forEach>
								<c:if test="${empty orderList}">
									<p class="notOrderList">주문 내역이 없습니다.</p>
								</c:if>
							</div>
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
	<script src="scripts/mypage.js"></script>
</body>

</html>