<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>������ ��� : ����</title>
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
				<h1 class="addProduct-title">���� ���</h1>
				<div class="addProduct-area">
					<div class="addProduct-area-inner">
						<div class="addProduct-right-contents">
							<div class="product-search-area">
								<form action="userList.do" method="post">
									<div class="product-search-area-inner">
										<label for="searchName">����</label> <input type="text"
											name="searchName" placeholder="������ �Է����ּ���."> <label
											for="searchEmail">�̸���</label> <input type="text"
											name="searchEmail" placeholder="�̸��ϸ� �Է����ּ���."> <input
											type="submit" value="�˻�" class="search-btn">
									</div>
								</form>
							</div>
							<form action="deleteUser.do" method="post">
								<div class="product-list-area">
									<div class="product-header-area">
										<div class="checkbox-area">
											<input type="checkbox" onclick="selectAll(this)">
										</div>
										<div class="product-code contents-title">�̸���</div>
										<div class="product-category contents-title">����</div>
										<div class="product-name contents-title">�г���</div>
										<div class="product-modelName contents-title">����</div>
										<div class="product-RPridce contents-title">����ó</div>
										<div class="product-price contents-title">������</div>
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
													<c:if test="${user.authority == 'admin'}">������</c:if>
													<c:if test="${user.authority == 'user'}">�Ϲ�����</c:if>
												</div>
												<div class="mobile">${user.mobile}</div>
												<div class="joinDay">${user.joinDay}</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<div class="btn-area">
									<a href="productRegister.jsp" class="product-add-btn">�����ϱ�</a>
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