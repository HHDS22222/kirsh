<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>KIRSH</title>
    <link rel="icon" href="images/common/cherry.png">
    <link href="https://cdn.jsdelivr.net/gh/sun-typeface/SUITE/fonts/static/woff2/SUITE.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/common.css">
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<div id="wrap">
		<!-- Top -->
		<%@ include file="header.jsp" %>
		<!-- 컨텐츠 1 -->
		<section id="first-contents-area">
			<div class="main-contents-area">
				<div class="main-contents-video-area">
					<div class="main-contents-bg"></div>
					<div class="main-contents-text">
						<p>MORE</p>
					</div>
					<video src="video/videoplayback.webm" autoplay muted loop
						id="main-video">
					</video>
				</div>
			</div>
		</section>
		<!-- 컨텐츠 2 -->
		<section id="second-contents-area">
			<div class="inner">
				<div class="second-contents">
					<div class="second-contents-title">
						<h1 class="second-title">BEST ITEM</h1>
					</div>
					<ul class="item-category">
						<li><a href="getProductList.do?productCategoryName=SWEATSHIRTS&productCategoryNum=1">
								<div class="categoryBg"></div>
								<div class="categoryText">
									<p>SWEATSHIRTS</p>
								</div> <img src="images/index/mainbanner-01.jpg" alt="여성카테고리">
						</a></li>
						<li><a href="getProductList.do?productCategoryName=OUTER&productCategoryNum=9">
								<div class="categoryBg"></div>
								<div class="categoryText">
									<p>OUTER</p>
								</div> <img src="images/index/mainbanner-02.jpg" alt="남성카테고리">
						</a></li>
						<li><a href="getProductList.do?productCategoryName=PANTS SHOES&productCategoryNum=7">
								<div class="categoryBg"></div>
								<div class="categoryText">
									<p>PANTS</p>
								</div> <img src="images/index/mainbanner-03.jpg" alt="키즈카테고리">
						</a></li>
					</ul>
				</div>
			</div>
		</section>
		<!-- 컨텐츠3 -->
		<section id="third-contents-area">
			<div class="third-contents">
				<div class="third-contents-left">
					<div class="lookbookText">
						23AW<br>LOOKBOOK
					</div>
					<div class="lookbookbg"></div>
					<a href="#"><img src="images/index/main-lookbook1.jpg"
						alt="왼쪽룩북이미지"></a>
				</div>
				<div class="third-contents-right">
					<div class="lookbookText">
						23SS<br>LOOKBOOK
					</div>
					<div class="lookbookbg"></div>
					<a href="#"><img src="images/index/main-lookbook2.jpg"
						alt="오른쪽룩북이미지"></a>
				</div>
			</div>
		</section>
		<!-- 컨텐츠4 -->
		<section id="fourth-contents-area">
			<div class="inner">
				<div class="sns-title">
					<h2 class="sns-title-text">@kirsh_official</h2>
				</div>
				<div class="sns-contents">
					<div>
						<a href="#"><img src="images/index/sns-1.jpg" alt="SNS이미지01"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-2.jpg" alt="SNS이미지02"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-3.jpg" alt="SNS이미지03"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-4.jpg" alt="SNS이미지04"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-5.jpg" alt="SNS이미지05"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-6.jpg" alt="SNS이미지06"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-7.jpg" alt="SNS이미지07"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-8.jpg" alt="SNS이미지08"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-9.jpg" alt="SNS이미지09"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-10.jpg" alt="SNS이미지10"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-11.jpg" alt="SNS이미지11"></a>
					</div>
					<div>
						<a href="#"><img src="images/index/sns-12.jpg" alt="SNS이미지12"></a>
					</div>
				</div>
			</div>
		</section>
		<!-- footer -->
		<%@ include file="footer.jsp" %>
	</div>
	<div class="gnbbg"></div>
    <script src="scripts/common.js"></script>
    <script src="scripts/index.js"></script>
</body>
</html>