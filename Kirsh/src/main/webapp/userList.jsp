<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 모드 : 유저</title>
<link rel="icon" href="images/common/cherry.png">
<link
	href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/userList.css">
</head>

<body>
	<div id="wrap">
		<%@ include file="header.jsp"%>
		<section id="addProduct-inner">
			<div class="inner">
				<h1 class="addProduct-title">유저 목록</h1>
				<div class="addProduct-area">
					<div class="addProduct-area-inner">
						<div class="addProduct-right-contents">
							<div class="product-search-area">
								<form action="userList.do" method="post">
									<div class="product-search-area-inner">
										<label for="searchName">성명</label> <input type="text"
											name="searchName" placeholder="성명을 입력해주세요."> <label
											for="searchEmail">이메일</label> <input type="text"
											name="searchEmail" placeholder="이메일를 입력해주세요."> <input
											type="submit" value="검색" class="search-btn">
									</div>
								</form>
							</div>
							<form action="deleteUser.do" method="post">
								<div class="product-list-area">
									<div class="product-header-area">
										<div class="checkbox-area">
											<input type="checkbox" onclick="selectAll(this)">
										</div>
										<div class="product-code contents-title">이메일</div>
										<div class="product-category contents-title">성명</div>
										<div class="product-name contents-title">닉네임</div>
										<div class="product-modelName contents-title">권한</div>
										<div class="product-RPridce contents-title">연락처</div>
										<div class="product-price contents-title">가입일</div>
									</div>
									<div class="product-list-contents">
										<c:forEach items="${userList}" var="user">
											<div class="product-item">
												<div class="checkbox-area">
													<input type="checkbox" name="user-check"
														value="${user.userID}">
												</div>
												<div class="email">${user.email}</div>
												<div class="userName">${user.userName}</div>
												<div class="userNickname">${user.userNickname}</div>
												<div class="authority">
													<c:if test="${user.authority == 'admin'}">관리자</c:if>
													<c:if test="${user.authority == 'user'}">일반유저</c:if>
												</div>
												<div class="mobile">${user.mobile}</div>
												<div class="joinDay">${user.joinDay}</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="btn-area">
									<a href="productRegister.jsp" class="product-add-btn">수정하기</a>
									<input type="submit" value="삭제하기" class="product-delete-btn">
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