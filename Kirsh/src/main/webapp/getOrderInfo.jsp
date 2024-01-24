<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>KIRSH - ORDER</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/orderInfo.css">
<link rel="stylesheet" href="css/common.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<section id="orderInfo-inner">
			<form action="addOrder.do" method="post">
				<div class="inner">
					<h1 class="order-title">주문 내역</h1>
					<div class="order-area">
						<div class="order-info">

							<div class="order-info-area">
								<h3 class="order-result-title">주문 정보</h3>
								<div class="product-info-title">
									<div class="product-info-name-area product-info-title-area">
										<p class="product-info-title-name bold">상품명</p>
									</div>
									<div class="product-info-cnt bold">수량</div>
									<div class="product-info-price bold">결제 금액</div>
								</div>
								<div class="product-info">
									<c:forEach items="${orderInfo.orderDetailVO}" var="cart">
										<div class="product-info-item">
											<div class="product-info-name-area">
												<div class="product-info-img-area">
													<img src="${cart.productImageUrl2}" alt="">
												</div>
												<div class="product-info-name-size-area">
													<p class="product-info-name">${cart.productName}</p>
													<p class="product-info-size">
														사이즈 <strong>${cart.productSize}</strong>
													</p>
												</div>
											</div>
											<div class="product-info-cnt">
												<strong>${cart.productCnt}</strong>개
											</div>
											<div class="product-info-price">
												<strong>${cart.productCntPrice}</strong>원
											</div>
										</div>
									</c:forEach>
								</div>
							</div>

							<div class="orderer-info-area">
								<h3 class="order-result-title">주문자 정보</h3>
								<div class="orderer-info">
									<div class="orderer-name-area">
										<label for="orderer-name">아이디</label> <input type="text"
											name="ordererName" value="${orderInfo.userID}" readonly>
									</div>
								</div>
							</div>
							<div class="shipping-info-area">
								<h3 class="order-result-title">배송 정보</h3>
								<div class="shipping-info">
									<div class="shipping-name-area">
										<label for="shipping-name">받는 분</label> <input type="text"
											name="payee" value="${orderInfo.payee}" readonly>
									</div>
									<div class="shipping-email-area">
										<label for="shipping-email">이메일</label> <input type="email"
											name="shipEmail" value="${orderInfo.shipEmail}" readonly>
									</div>
									<div class="shipping-mobile-area">
										<label for="shipping-mobile" class="required">연락처</label>
										<div class="tel-info">
											<input type="text" class="tel first-tel" name="shipFirstTel"
												maxlength="3" value="${orderInfo.shipFirstTel}" readonly>
											<p>-</p>
											<input type="text" class="tel second-tel"
												name="shipSecondTel" maxlength="4"
												value="${orderInfo.shipSecondTel}" readonly>
											<p>-</p>
											<input type="text" class="tel third-tel" name="shipThirdTel"
												maxlength="4" value="${orderInfo.shipThirdTel}" readonly>
										</div>
									</div>

									<div class="orderer-address-area">
										<div class="four-area">
											<div class="address-area">
												<label for="address" class="required">주소</label>
												<div class="address-info">
													<input type="button" onclick="sample4_execDaumPostcode()"
														value="우편번호 찾기"> <input type="text"
														id="sample4_postcode" placeholder="우편번호"
														name="shipPostCode" readonly value="${orderInfo.shipPostCode}"> 
														<input type="text"
														id="sample4_roadAddress" placeholder="도로명주소"
														name="shipRoadAddress" readonly value="${orderInfo.shipRoadAddress}"> 
														<input
														type="text" id="sample4_jibunAddress" placeholder="지번주소"
														name="shipAddress" readonly value="${orderInfo.shipAddress}"> 
														<span id="guide"
														style="color: #999; display: none"></span> 
														<input
														type="text" id="sample4_detailAddress"
														placeholder="상세주소를 입력해주세요." name="shipDetailAddress" value="${orderInfo.shipDetailAddress}" readonly>
														<input type="text" id="sample4_extraAddress"
														placeholder="참고항목" name="shipExtraAddress" value="${orderInfo.shipExtraAddress}" readonly>
												</div>
											</div>
										</div>
									</div>
									<div class="shipping-order-request-area">
										<label for="shipOrderRequest">배송 시 요청사항</label> 
										<select
											name="shipOrderRequest">
											<option value="${orderInfo.shipOrderRequest}" selected>${orderInfo.shipOrderRequest}</option>
										</select>
									</div>
								</div>
							</div>
							<div class="payment-method-area">
								<h3 class="order-result-title">주문 방법</h3>
								<div class="payment-method">
									<div>

										<input type="radio" name="payments" 
											class="payments-creditCard" value="신용카드" ${orderInfo.payments eq '신용카드' ? "checked" : ""}><span>신용카드</span>
									</div>
									<div>
										<input type="radio" name="payments"
											class="payments-creditCard" value="가상계좌" ${orderInfo.payments eq '가상계좌' ? "checked" : ""}><span>가상계좌</span>
									</div>
									<div>
										<input type="radio" name="payments"
											class="payments-creditCard" value="계좌이체" ${orderInfo.payments eq '계좌이체' ? "checked" : ""}><span>계좌이체</span>
									</div>
								</div>
							</div>
							<div class="order-result-area">
								<h3 class="order-result-title">총 주문 금액</h3>
								<div class="order-result">
									<div class="order-result-price-area">
										<label for="order-result-price">주문 금액</label>
										<div class="order-result-price">
											<strong>0</strong>원
										</div>
									</div>
									<div class="order-discount-price-area">
										<label for="order-discount-price">할인 금액</label>
										<div class="order-discount-price">
											<strong>0</strong>원
										</div>
									</div>
									<div class="order-shipping-price-area">
										<label for="order-shipping-price">배송비</label>
										<div class="order-shipping-price">
											<strong>0</strong>원
										</div>
									</div>
									<div class="order-result-all-price-area">
										<label for="order-result-all-price">최종 결제 금액</label>
										<div class="order-result-all-price">
											<strong>${orderInfo.productPrice}</strong>원
										</div>
									</div>
								</div>
							</div>
							<div class="result-btn-area">
								<div class="order-no-btn">
									<a href="goPrev.do">이전</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</section>
		<%@ include file="footer.jsp"%>
	</div>
	<div class="gnbbg"></div>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script src="scripts/common.js"></script>
	<script src="scripts/address.js"></script>
	<script src="scripts/orderInfo.js"></script>
</body>

</html>