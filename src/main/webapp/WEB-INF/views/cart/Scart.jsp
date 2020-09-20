<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<title>bb</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/nanumbarungothicsubset.css">

</head>
<style>
header, nav, section, article, aside, footer {
	box-sizing: border-box;
	display: block;
}

body {
	width: 100%;
	background: white;
	margin: auto;
}

header {
	width: 1500px;
	height: 150px;
}

nav {
	width: 1500px;
	height: 50px;
}

#content {
	/* width: 100%; */
	width: 1500px;
	border: 8px solid red;
	margin: auto;
}

footer {
	width: 1500px;
	height: 150px;
	float: left;
	background: lightgray;
	margin: auto;
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

#stay_footer_inner {
	width: 1500px;
	margin: auto;
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

.sub_section {
	width: 100%;
	padding-top: 20px;
	padding-bottom: 50px;
	border: 5px solid purple;
}

#img1, #img2, #img3 {
	width: 500px !important;
	height: 400px !important;
	margin: auto;
}

.carousel {
	width: 100%;
}

/* 검색 창 */
#search-form {
	height: 50px;
	width: 300px;
	background: #ffffff;
	border: 1px solid;
	margin: auto;
	margin-top: 40px;
}

#search_Text {
	font-size: 16px;
	width: 80%;
	padding: 10px;
	border: 0px;
	outline: none;
	float: left;
	font-family: 'NanumBarunGothic', sans-serif;
}

#search_Btn {
	width: 20%;
	height: 100%;
	border: 0px;
	background: white;
	outline: none;
	float: right;
	color: #ffffff;
	font-family: 'NanumBarunGothic', sans-serif;
}

/* 검색 창 */
#search_img {
	width: 30px;
	height: 30px;
}

/* 로고 */
#logo_img {
	display: block;
	margin: auto;
	margin-top: 20px;
}

/* 로고 */
/* 로그인, 회원가입 */
.login_bar {
	float: right;
	text-decoration: none;
	color: silver;
	font-weight: bold;
	font-size: 21px;
	margin-right: 50px;
	margin-top: 20px;
	font-family: 'NanumBarunGothic', sans-serif;
}

.login_bar:hover {
	text-decoration: none;
	color: gray;
}

/* 로그인, 회원가입 */

/* 네비게이션 바*/
#navi {
	list-style-type: none;
	padding: 0;
	margin: 0;
	height: 100%;
}

#navi>li {
	display: inline-block;
	width: 19%;
	height: 100%;
}

#navi li a {
	height: 100%;
	display: block;
	text-decoration: none;
	text-align: center;
	padding-top: 5px;
	color: black;
	font-weight: bold;
	font-size: 21px;
	line-height: 40px;
}

#navi li a:hover {
	border-bottom: 1px solid rgb(31, 69, 97);
}

/* 네비게이션 바*/

/* 하단 풋터 부분 */
#footer1>a {
	text-decoration: none;
	font-weight: 600;
	line-height: 25px;
	color: black;
	margin: 0 10px;
}

#footer1>a:hover {
	color: white;
}

#footer2>p {
	margin: 0;
	font-size: 12px;
}

#footer_logo {
	float: left;
	margin-right: 30px;
	width: 300px;
	height: 50px;
}

#footer3>* {
	margin-left: 25px;
}

/* 하단 풋터 부분 */

/* 영역 나누기 */
#stay1 {
	width: 100%;
	background: white;
}

#stay2 {
	width: 100%;
	background: white;
	border: 1px solid red;
}

#stay_footer {
	width: 100%;
	height: 150px;
	background-color: lightgray;
}

#wrap_stay {
	width: 1500px;
	margin: auto;
	border: 1px solid green;
}

.movie {
	display: inline-block;
	margin: 0px 50px;
	border: 1px solid yellow;
	width: 250px;
	height: 400px;
}

.poster {
	width: 100%;
	height: 300px;
}

.onScrenn {
	background: rgb(46, 204, 113);
	width: 70px;
	height: 30px;
	color: white;
	font-size: 15px;
	float: left;
	margin-left: 30px;
	margin-top: 30px;
	text-align: center;
	padding-top: 4px
}

.resevation {
	background: rgb(231, 76, 60);
	width: 100px;
	height: 40px;
	border-radius: 40px;
	color: white;
	border: 1px solid rgb(231, 76, 60);
	margin-left: 30px;
	margin-top: 25px;
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
	width: 70px;
	line-height: 46px;
	margin: 0 0 50px 60px;
	padding: 0;
	/* text-indent: -9999x;
            들여쓰기 */
}

.page-util .location a {
	display: block;
	position: relative;
	float: left;
	height: 42px;
	margin: 0 0 0 10px;
	padding: 0;
	line-height: 46px;
	color: #666;
}

a:visited {
	/*방문후 링크 상태*/
	text-decoration: none;
	outline: 1px dotted #000;
}

/* ------------------------------------------------------- */
/* 상품 장바구니 */
#contents {
	width: 100%;
	margin: 0;
	padding: 40px 0 0 0;
}

.inner-wrap {
	width: 1100px;
	margin: 0 auto 0 auto;
}

.inner-wrap, .inner-wrap:before {
	content: '';
	display: table;
}

* {
	box-sizing: border-box;
}

h2.tit {
	padding: 0 0 26px 0;
	font-size: 1.8666em;
	font-weight: 400;
	letter-spacing: -1px;
	line-height: 1.1;
	color: #222;
}

h3.tit {
	margin: 0;
	padding: 0 0 16px 0;
	font-size: 1.6em;
	font-weight: 400;
	line-height: 1.1;
	color: #503396;
}

.table-wrap {
	position: relative;
	border-top: 1px solid #555;
}

table {
	width: 100%;
	margin: 0;
	border: 0;
	table-layout: fixed;
	border-collapse: collapse;
	empty-cells: show;
}

table caption {
	overflow: hidden;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	opacity: 0;
}

thead {
	display: table-header-group;
	vertical-align: middle;
	border-color: inherit;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

.board-list {
	line-height: 1.3;
}

.board-list>thead>tr>th {
	height: 45px;
	padding: 3px 10px;
	color: #222;
	border: 1px solid #eaeaea;
	border-width: 0 0 1px 0;
	background-color: #f2f3f5;
}

.board-list>thead>tr>td {
	height: 45px;
	padding: 10px;
	border: 1px solid #eaeaea;
	border-width: 0 0 1px 0;
}

/* .board-list>tbody>tr>th {
            text-align: left;
            font-weight: 400;
        } */
tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: inherit;
}

colgroup {
	display: table-column-group;
}

col {
	display: table-column;
}

.a-c {
	text-align: center !important;
}

p {
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-block-end: 0px;
}

.store-payment .goods-info .img {
	display: block;
	width: 100px;
	height: 100px;
	margin: 0 auto;
	font-size: 0;
	line-height: 0;
}

.store-payment .goods-info .name {
	font-size: 1.2em;
}

a:-webkit-any-link {
	cursor: pointer;
}
/* 상품 장바구니 */

/* 배송 정보 입력*/
/* body {
            letter-spacing: 0;
            line-height: 1.5;
            font-size: 15px;
            color: #444;
            font-weight: 400;
            font-family: NanumBarunGothic, Dotum,'돋음', sans-serif;
        } */
div {
	display: block;
}

.board-list>thead>tr>th {
	height: 45px;
	padding: 3px 10px;
	color: #222;
	border: 1px solid #eaeaea;
	border-width: 0 0 1px 0;
	background-color: #f2f3f5;
}

h3.tit {
	margin: 0;
	padding: 0 0 16px 0;
	font-size: 1.6em;
	font-weight: 400;
	color: #503396;
	line-height: 1.1;
}

.mt40 {
	margin-top: 40px !important;
}

.table-wrap {
	position: relative;
	border-top: 1px solid #555;
}

label {
	display: inline-block;
	vertical-align: middle;
	cursor: pointer;
}

.inputui01 {
	widows: 100%;
}

ol, ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

ul {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	scroll-margin-inline-end: 0px;
	padding-inline-start: 40px;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.board-form tbody th {
	background: #f7f8f9;
}

.board-form tbody td .board-form tbody th {
	position: relative;
	height: 50px;
	padding: 7px 15px;
	text-align: left;
	border-bottom: 1px solid #d1d5dd;
}

th {
	display: table-cell;
	vertical-align: inherit;
	font-weight: bold;
}

.board-form tbody th {
	background: #f7f8f9;
}

textarea {
	resize: vertical;
	overflow: auto;
}

button, input, optgroup, select, textarea {
	margin: 0;
	font-size: 1em;
	line-height: 1.15;
}

select.small {
	height: 32px;
}

.w100p {
	width: 100% !important;
}

table select {
	border-radius: 0;
}

select {
	padding-left: 4px;
	border-color: #ccc;
	font-family: NanumBarunGothic, Dotum, '돋움', sans-serif;
}

.inputui01 li.li01 {
	width: 72px;
	padding-right: 10px;
}

.inputui01 li {
	float: left;
}

.font-gblue {
	color: #01738b !important;
}

em {
	font-style: normal;
}

.input-textarea {
	display: inline-block;
	width: 100%;
	/* height: 200px; */
	padding: 10px;
	line-height: 16px;
	color: #333;
	border-radius: 0 !important;
	border: 1px solid #d8d9db;
	vertical-align: middle;
	font-family: NanumBarunGothic, Dotum, '돋움', sans-serif;
}

textarea {
	/* -webkit-writing-mode: horizontal-tb !important; */
	text-rendering: auto;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	text-align: start;
	appearance: textarea;
	background-color: -internal-light-dark(rgb(255, 255, 255),
		rgb(59, 59, 59));
	-webkit-rtl-ordering: logical;
	flex-direction: column;
	cursor: text;
	white-space: pre-wrap;
	overflow: break-word;
	font: 400 13.3333px Arial;
}

/* 영역 나누기 */
</style>

<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />

		<div class="container">
			<div class="page-util">
				<div class="location">
					<span>HOME > </span> <a href="#" onclick="" title="스토어">스토어 > </a>
					<a href="#" onclick="" title="장바구니">장바구니</a>
				</div>
			</div>
		</div>

		<div id="contents">
			<div class="inner-wrap">
				<div class="store-payment">
					<h2 class="tit">장바구니</h2>
					<h3 class="tit">주문 상품 정보</h3>
					<div class="table-wrap">
						<table class="board-list">
							<caption>장바구니</caption>
							<colgroup>
								<col style="width: 120px;">
								<col>
								<col style="width: 150px;">
								<col style="width: 100px;">
								<col style="width: 200px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="colgroup" colspan="2">주문 상품</th>
									<th scope="col">사용가능처</th>
									<th scope="col">구매수량</th>
									<th scope="col">총 상품금액</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${ empty list }">
									<tr>
										<td colspan="4" class="noneTd">
											<div class="emptyList">장바구니에 상품을 담아주세요.</div>
										</td>
									</tr>
								</c:if>
								<c:if test="${ list ne null }">
									<c:forEach var="spl" items="${ list }">

										<c:url var="sdetail" value="snackPurchaseDetail.do">
											<c:param name="orderNum" value="${ spl.orderNum }" />
											<c:param name="page" value="${ pi.currentPage }" />
										</c:url>
										<tr>
											<td class="a-c">
												<div class="goods-info">
													<p class="img">
														<a href="${ sdetail }" title=""> 
														<img src="${ contextPath }/${Snack.attachment.filePath}/${ Snack.attachment.renameFileName }"
															alt onerror="noImg(this);" width="100px" height="100px">
														</a>
													</p>
												</div>
											</td>
											<th scope="row">
												<div class="goods-info">
													<p class="name">
														<a href="${ sdetail }" title="스낵">${ Snack.snackName }</a>
													<p class="bundle">${ Snack.snackMemo }</p>
													</p>
												</div>
												<div class="mt10">
													<span id="acptBrchView" class="font-gblue"></span> <em
														id="acptBrchChiValView"></em>
												</div>
											</th>
											<td><a href="#" class="a-link" name="brchList"
												title="사용가능극장 확인">전 영화관 가능</a></td>
											<td><em id="purcQtyView">${ proCount }</em></td>
											<td>
												<div class="goods-info">
													<em id="prdtSumAmtView" class="price">${ price }</em><span>원</span>
												</div>
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>
</html>