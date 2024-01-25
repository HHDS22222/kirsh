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
<link rel="stylesheet" href="css/management.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/userList.css">
<link rel="stylesheet" href="css/orderAllList.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<div id="wrap">
		<div class="management-title">
			<div class="title-mode">������ ���</div>
			<div class="title-name">Kirsh</div>
		</div>
		<div class="userList-contents">
			<div class="left-list-area">
				<ul>
					<li><a href="userList.do">���� ���</a></li>
					<li><a href="getProductItemList.do">��ǰ ����</a></li>
					<li><a href="getOrderAllList.do" class="active">�ֹ� ����</a></li>
				</ul>
				<a href="index.jsp" class="outManage">������</a>
			</div>
			<section id="addProduct-inner">
				<div class="inner">
					<div class="addProduct-area">
						<div class="addProduct-area-inner">
							<div class="addProduct-right-contents">
								<div class="product-search-area">
									<form action="getOrderAllList.do" method="post">
										<div class="product-search-area-inner">
											<label for="searchNum">�ֹ���ȣ</label> <input type="text"
												name="searchNum" placeholder="�ֹ� ��ȣ�� �Է����ּ���."> <label
												for="searchID">�ֹ���</label> <input type="text"
												name="searchID" placeholder="�ֹ��� ���̵� �Է����ּ���."> <input
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
											<div class="user-email contents-title">�ֹ���ȣ</div>
											<div class="user-name contents-title">�ֹ���</div>
											<div class="user-nickname contents-title">�޴� ��</div>
											<div class="user-authority contents-title">���� ���</div>
											<div class="user-mobile contents-title">����ó</div>
											<div class="user-Rdate contents-title">�ֹ�����</div>
										</div>
										<div class="product-list-contents">
											<c:forEach items="${orderAllList}" var="order">
												<div class="product-item">
													<div class="checkbox-area">
														<input type="checkbox" name="user-check"
															value="${order.orderNum}">
													</div>
													<div class="email user-email orderNum">
														<a href="getOrderInfo.do?orderNum=${order.orderNum}">${order.orderNum}</a>
													</div>
													<div class="userName user-name">${order.userID}</div>
													<div class="userNickname user-nickname">${order.payee}</div>
													<div class="authority user-authority">
														${order.payments} - ${order.productPrice}��</div>
													<div class="mobile user-mobile">${order.shipFirstTel}-${order.shipSecondTel}-${order.shipThirdTel}</div>
													<div class="joinDay user-Rdate">${order.buyDate}</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<div class="btn-area">
										<input type="submit" value="�ֹ� ���" class="product-delete-btn">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

	</div>
	<script src="scripts/addProduct.js"></script>
</body>

</html>













