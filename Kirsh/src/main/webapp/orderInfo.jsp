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
					<h1 class="order-title">주문하기</h1>
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
									<c:forEach items="${cartList}" var="cart">
										<div class="product-info-item">
											<div class="product-info-name-area">
												<div class="product-info-img-area">
													<img src="${cart.productImageUrl2}" alt="">
												</div>
												<div class="product-info-name-size-area">
													<p class="product-info-name">${cart.productName}</p>
													<p class="product-info-size">사이즈 <strong>${cart.productSize}</strong></p>
												</div>
											</div>
											<div class="product-info-cnt"><strong>${cart.productCnt}</strong>개</div>
											<div class="product-info-price"><strong>${cart.productPrice}</strong>원</div>
										</div>
									</c:forEach>
								</div>
							</div>

							<div class="orderer-info-area">
								<h3 class="order-result-title">주문자 정보</h3>
								<div class="orderer-info">
									<div class="orderer-name-area">
										<label for="orderer-name">이름</label> <input type="text"
											name="orderer-name" value="${userInfo.userName}" readonly>
									</div>
									<div class="orderer-email-area">
										<label for="orderer-email">이메일</label> <input type="email"
											name="orderer-email" value="${userInfo.email}" readonly>
									</div>
									<div class="orderer-tel-area">
										<label for="orderer-tel" class="required">연락처</label>
										<div class="tel-info">
											<input type="text" class="tel first-tel"
												name="orderer-first-tel" maxlength="3" value="${userInfo.firstTel}" readonly required>
											<p>-</p>
											<input type="text" class="tel second-tel"
												name="orderer-second-tel" maxlength="4" value="${userInfo.secondTel}" readonly required>
											<p>-</p>
											<input type="text" class="tel third-tel"
												name="orderer-third-tel" maxlength="4" value="${userInfo.thirdTel}" readonly required>
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
														name="ordererPostcode" value="${userInfo.postcode}" readonly> <input
														type="text" id="sample4_roadAddress" placeholder="도로명주소"
														name="ordererRoadAddress" value="${userInfo.roadAddress}" readonly> <input
														type="text" id="sample4_jibunAddress" placeholder="지번주소"
														name="ordererJibunAddress" value="${userInfo.jibunAddress}" readonly> <span
														id="guide" style="color: #999; display: none"></span> <input
														type="text" id="sample4_detailAddress"
														placeholder="상세주소를 입력해주세요." value="${userInfo.detailAddress}" name="ordererDetailAddress" readonly>
													<input type="text" id="sample4_extraAddress"
														placeholder="참고항목" name="ordererExtraAddress" value="${userInfo.extraAddress}" readonly>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="shipping-info-area">
								<h3 class="order-result-title">배송 정보</h3>
								<div class="shipping-info">
									<input type="checkbox" class="order-shipping-chk">주문자와
									받는 이가 동일합니다.
									<div class="shipping-name-area">
										<label for="shipping-name">받는 분</label> <input type="text"
											name="shipping-name">
									</div>
									<div class="shipping-email-area">
										<label for="shipping-email">이메일</label> <input type="email"
											name="shipping-email">
									</div>
									<div class="shipping-mobile-area">
										<label for="shipping-mobile" class="required">연락처</label>
										<div class="tel-info">
											<input type="text" class="tel first-tel"
												name="shipping-first-tel" maxlength="3" required>
											<p>-</p>
											<input type="text" class="tel second-tel"
												name="shipping-second-tel" maxlength="4" required>
											<p>-</p>
											<input type="text" class="tel third-tel"
												name="shipping-third-tel" maxlength="4" required>
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
														name="shipPostcode" readonly> <input type="text"
														id="sample4_roadAddress" placeholder="도로명주소"
														name="shipRoadAddress" readonly> <input
														type="text" id="sample4_jibunAddress" placeholder="지번주소"
														name="shipJibunAddress" readonly> <span id="guide"
														style="color: #999; display: none"></span> <input
														type="text" id="sample4_detailAddress"
														placeholder="상세주소를 입력해주세요." name="shipDetailAddress">
													<input type="text" id="sample4_extraAddress"
														placeholder="참고항목" name="shipExtraAddress">
												</div>
											</div>
										</div>
									</div>
									<div class="shipping-order-request-area">
										<label for="shipping-order-request">배송 시 요청사항</label> <select
											name="shipping-order-request">
											<option value="빠른 배송 부탁드립니다." selected>빠른 배송 부탁드립니다.</option>
											<option value="배송 전, 연락주세요.">배송 전, 연락주세요.</option>
											<option value="부재 시, 휴대폰으로 연락주세요.">부재 시, 휴대폰으로
												연락주세요.</option>
											<option value="부재 시, 경비실에 맡겨주세요.">부재 시, 경비실에 맡겨주세요.</option>
											<option value="경비실이 없습니다. 배송 전, 연락주세요.">경비실이 없습니다.
												배송 전, 연락주세요.</option>
											<option value="요청 사항 없음">요청 사항 없음</option>
										</select>
									</div>
								</div>
							</div>
							<div class="payment-method-area">
								<h3 class="order-result-title">주문 방법</h3>
								<div class="payment-method">
									<div class="payments-creditCard paymentsOn">신용카드</div>
									<div class="payments-virtualAcount">가상계좌</div>
									<div class="payments-acount-transfer">계좌이체</div>
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
											<strong>0</strong>원
										</div>
									</div>
								</div>
							</div>
							<div class="result-btn-area">
								<div class="order-okay-btn">
									<input type="submit" value="주문하기">
								</div>
								<div class="order-no-btn">
									<a href="goPrev.do">취소</a>
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