<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIRSH - ��ǰ ���</title>
    <link rel="icon" href="images/common/cherry.png">
    <link href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css" rel="stylesheet">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/productRegister.css">
</head>
<body>
    <div id="wrap">
    	<%@ include file="header.jsp" %>
        <section id="addProduct-inner">
            <div class="inner">
                <h1 class="addProduct-title">
                    ��ǰ ���
                </h1>
                <div class="addProduct-area">
                    <div class="addProduct-area-inner">
                        <div class="addProduct-right-contents">
                            <form action="insertProduct.do" method="post" enctype="multipart/form-data">
                                <div class="register-product-contents">
                                    <div class="register-product-contents-header">
                                        �⺻����
                                    </div>
                                    <div class="register-product-contents-inner">
                                        <div class="product-code-area">
                                            <label for="productCode">��ǰ �ڵ�</label>
                                            <input type="text" disabled placeholder="�ڵ� ����">
                                        </div>
                                        <div class="product-name-area">
                                            <label for="productName">��ǰ��</label>
                                            <input type="text" name="productName">
                                        </div>
                                        <div class="product-engname-area">
                                            <label for="productEngName">��ǰ ������</label>
                                            <input type="text" name="productEngName">
                                        </div>
                                        <div class="product-category-name">
                                            <label for="productCategoryName">ī�װ�</label>
                                            <select name="productCategoryNum">
                                            	<c:forEach items="${categoryList}" var="category">
                                            		<option value="${category.productCategoryNum}">${category.productCategoryName}</option>
                                            	</c:forEach>
                                            </select>
                                            <a href="addCategory.do" class="addCategoryBtn">ī�װ� �߰�</a>
                                        </div>
                                        <div class="product-RPrice-area">
                                            <label for="productRPrice">��ǰ �Һ��� ����</label>
                                            <input type="text" name="productRPrice">
                                        </div>
                                        <div class="product-price-area">
                                            <label for="productPrice">��ǰ ����</label>
                                            <input type="text" name="productPrice">
                                        </div>
                                        <div class="product-model-name">
                                            <label for="productModelName">��ǰ �𵨸�</label>
                                            <input type="text" name="productModel">
                                        </div>
                                        <div class="product-size-area">
                                            <label for="productOption">�ɼ�</label>
                                            <div class="productOptionList">
                                                <div class="productOption">
                                                    <input type="text" name="productSize" placeholder="������">
                                                    <input type="text" name="productInvntCnt" placeholder="����">
                                                    <div class="productOptionAdd" onclick="addOption()">�߰�</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-image-area">
                                            <label for="productImage" class="productImage">��ǰ �̹���
                                                <span>* 1. 600 X 800 ������ ����</span>
                                                <span>* 2. 800 X 800 ������ ����</span>
                                            </label>
                                            <div class="upload-area">
                                                <input type="file" class="upload-name" name="productImage1">
                                                <input type="file" class="upload-name" name="productImage2">
                                            </div>
                                        </div>
                                        <div class="product-info-area">
                                            <label for="productInfo">��ǰ ������</label>
                                            <textarea name="productInfo" id="productInfo" cols="80" rows="10"></textarea>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="btn-area">
                                    <input type="submit" class="product-add-btn" value="����ϱ�"></input>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
		<%@ include file="footer.jsp" %>
    </div>
    <div class="gnbbg"></div>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="scripts/common.js"></script>
    <script src="scripts/productRegister.js"></script>
</body>
</html>