<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<title>KASS CINEMA</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
        crossorigin="anonymous"> -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<style>
header, nav, section, article, aside, footer {
	box-sizing: border-box;
	display: block;
}

body {
	width: 100%;
	margin: auto;
}

header {
	width: 100%;
	height: 150px;
}

nav {
	width: 100%;
	height: 50px;
}

.content {
	width: 100%;
	heigt: 100%;
	margin: auto;
	border: 1px solid red;
	overflow: hidden;
}

footer {
	width: 100%;
	height: 150px;
	float: left;
	background: lightgray;
}

header>section {
	float: left;
}

#header-1 {
	width: 25%;
	height: 100%;
	position: relative;
}

#header-2 {
	width: 50%;
	height: 100%;
	position: relative;
}

#header-3 {
	width: 25%;
	height: 100%;
}

#footer1 {
	width: 80%;
	height: 30%;
	padding: 1px;
	width: 80%;
	float: left;
}

#footer2 {
	width: 80%;
	height: 70%;
	width: 80%;
	float: left;
}

#footer3 {
	width: 20%;
	height: 70%;
	float: left;
}

#stay_footer {
	width: 100%;
	height: 150px;
	background: lightgray;
}

#stay_footer_inner {
	width: 1500px;
	height: 150px;
	display: block;
	margin: auto;
}

#wrap_stay {
	width: 1500px;
	margin: auto;
}
/* 영역 나누기 */

/* sidemenu */
.listArrange {
	font-size: 12px;
}

.myMenu {
	margin-top: 50px;
	margin-right: 60px;
	margin-left: 20px;
	float: left;
}

.list {
	list-style-image: url("../../images/list4.PNG");
	margin-bottom: 40px;
	margin-top: 10px;
}

a {
	color: rgb(114, 114, 114);
	text-decoration: none;
}

a:hover {
	color: rgb(31, 67, 97);
}

.menuTitle {
	border-top: 1px solid rgb(201, 201, 201);
	padding-bottom: 0px;
}

h4 {
	margin-bottom: 0px;
}

ul>li {
	font-size: 14px;
}

* {
	box-sizing: border-box;
}

div {
	display: block;
}

ul {
	list-style: none;
}

.store-list {
	overflow: hidden;
	margin: 30px 30px;
	border: 1px solid red;
}

.store-list .list li .info {
	padding: 0 19px;
	border-top: 1px solid #e4e4e4;
	line-height: 1.3;
}

.store-list .list li {
	position: relative;
	float: left;
	width: 245px;
	margin: 0 0 0 120px;
	border-radius: 10px;
}

.store-list .list li .info .price .sale em {
	font-family: Roboto;
	font-size: 1.6em;
	font-weight: 400;
	vertical-align: middle;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

h3.tit {
	margin: 0;
	font-size: 1.6em;
	font-weight: 400;
	color: #503396;
}

body {
	letter-spacing: 0;
	line-height: 1.5;
	font-size: 15px;
	color: #444;
	font-weight: 400;
}

/* 상단 미니 메뉴바 */
.page-util {
	display: block;
	position: static;
	width: 100%;
	height: 42px;
	background-color: #f8f8fa;
}

.inner-wrap {
	width: 1100px;
	margin: 0 auto;
}

.page-util .location {
	float: left;
	height: 42px;
}

.page-util .location span {
	overflow: hidden;
	display: block;
	float: left;
	width: 60px;
	line-height: 46px;
	margin: 0;
	padding: 0;
}

.page-util .location a {
	display: block;
	position: relative;
	float: left;
	height: 42px;
	margin: 0 0 0 15px;
	padding: 0;
	line-height: 46px;
	color: #666;
}

a:visited {
	/*방문후 링크 상태*/
	text-decoration: none;
	outline: 1px dotted #000;
}

/* 서브 메뉴바 */
.content1 {
	width: 1500px;
	min-height: 200px;
}

.tab_List {
	margin-top: 20px;
	width: 100%;
	height: 50px;
}

.top_Menu {
	margin: 0px;
	padding: 0px;
	margin-left: 1px;
	width: 100%;
	height: 100%;
}

.top_Menu li {
	margin: 0px;
	padding: 0px;
	width: 430px;
	height: 100%;
	list-style: none;
	float: left;
	border-bottom: 1px solid rgb(31, 69, 97);
}

.on {
	border-left: 1px solid rgb(31, 69, 97) !important;
	border-right: 1px solid rgb(31, 69, 97) !important;
	border-top: 1px solid rgb(31, 69, 97) !important;
	border-bottom: none !important;
}

.top_Menu li a {
	display: block;
	margin-top: 5px;
	font-style: none;
	text-decoration: none;
	color: black;
	text-align: center;
	font-size: 18px;
	font-family: 'NanumBarunGothic', sans-serif;
	width: 100%;
	height: 100%;
}

.top_Menu li a:focus {
	outline: none;
}

.snackImg {
	width: 208px;
	height: 240px;
}


/* 내가 쓴 코드 */
#content {
	width: 1500px;
	border: 1px solid red;
	disply: block;
	margin: auto;
}

.img2 {
	display: block;
	width: 100%;
	height: 100%;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	/* border: 1px solid aqua; */
}

.product {
	width: 230px;
	border-radius: 10px;
	display: block;
	height: 435px;
	margin-bottom: 40px;
	text-decoration: none;
	border: 1px solid #e4e4e4;
}
</style>
</head>
<body>
<div id="wrap_stay">
		<jsp:include page="../../views/common/manager.jsp" />
	</div>
	<jsp:include page="../../views/common/productMenu.jsp" />

	<section id="content">
		<div class="container">
			<div class="page-util">
				<div class="location">
					<span>HOME > </span> <a href="#" onclick="" title="스토어">스낵</a>
				</div>
			</div>
		</div>

			<div id="divNewPrdtArea">
				<div class="store-list">
					<ul class="list">
						<c:if test="${ empty list }">
							<div>
								<h1 width="100%" align="center">상품 준비중 입니다.</h1>
							</div>
						</c:if>
						<c:if test="${ list ne null }">
							<c:forEach var="Snack" items="${ list }">
								<c:url var="supdate" value="supdateSnack.do">
									<c:param name="snackNo" value="${ Snack.snackNo }" />
								</c:url>
								<li class>
									<a href="${ supdate }" title="스낵" class="product">
										<div class="img">
											<img class="snackImg" src="${ contextPath }/${Snack.attachment.filePath}/${ Snack.attachment.renameFileName }" class="img img2">
										</div>
										<div class="info">
											<div class="tit">
												<p class="name">${ Snack.snackName }</p>
												<p class="bundle">${ Snack.snackMemo }</p>
											</div>
											<div class="price">
												<p class="original">${ Snack.snackPrice }원</p>
												<p class="sale">
													<em>${ Snack.snackPrice }</em> <span>원</span>
												</p>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:if>
					</ul>
					
				</div>

					<div class="pagination" align="center">
						<a class="pageOne" href="#">&lt;</a> <a class="pageOne" href="#">1</a>
						<a class="pageOne" href="#">2</a> <a class="pageOne" href="#">3</a>
						<a class="pageOne" href="#">4</a> <a class="pageOne" href="#">5</a>
						<a class="pageOne" href="#">&gt;</a>

						<!-- 버튼 비활성화 일 때 -->
						<!-- <a class="pageNone">&lt;&lt;</a> -->
					</div>

			</div>
		</div>

	</section>
	<script>
		$('.top_Menu li').click(function() {
			$('.top_Menu li').removeClass('on');
			var menu = $(this);

			menu.addClass('on');
		})
	</script>


	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>
</html>