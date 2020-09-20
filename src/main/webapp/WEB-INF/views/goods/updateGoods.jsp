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

.content1 {
	width: 100%;
	min-height: 1000px;
	border: 3px solid blueviolet;
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

.store-list {
	width: 1000px;
	height: 600px;
	overflow: hidden;
	margin: 50px 300px;
	border: 1px solid red;
	background-color: rgb(224, 224, 224);
}

/* form 영역 */
div.left {
	width: 50%;
	height: 600px;
	float: left;
	box-sizing: border-box;
	border: 1px solid yellow;
}

div.right {
	width: 50%;
	height: 600px;
	float: right;
	box-sizing: border-box;
	border: 1px solid yellowgreen;
}

table {
	/* table-layout: fixed; */
	width: 100%;
	box-sizing: border-box;
	margin: auto;
}

tr, th, td, form, table {
	/* margin-left: 50px;
            margin-top: 50px; */
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

table th {
	background-color: #eee;
	font-weight: normal;
	width: 120px;
	text-align: left;
	color: #666;
}

table th, table td {
	padding: 12px 10px;
	height: 48px;
}

label {
	margin-left: 50px;
}

input {
	padding: 6px 12px;
	width: 200px;
	height: 100%;
	background: #fff;
	border: 1px solid
}

#img-file {
	width: 80%;
	height: 60%;
	border: 1px solid black;
	margin-left: 50px;
	margin-top: 25px;
	font-size: 20px;
}

input[type=file] {
	display: block;
}

.btn_col1.ty7, .btn_col2.ty7 {
	height: 52px;
	line-height: 50px;
	padding: 0 24px;
}

.btn_wrap {
	padding: 20px 0 30px 0;
	margin: 0;
	text-align: center;
}

.btn_wrap .button {
	margin: 0 3px;
}

.button.cancel {
	height: 46px;
	padding: 0 30px;
	line-height: 44px;
}

.button.insert {
	height: 46px;
	padding: 0 30px;
	line-height: 46px;
	color: #fff;
	border: 0;
	background: rgb(31, 69, 97);
}

.button.img {
	height: 40px;
	padding: 0 30px;
	line-height: 40px;
	color: #fff;
	border: 0;
	background: #503396;
	margin-top: 20px;
}

.button.delete {
	height: 46px;
	padding: 0 30px;
	line-height: 46px;
	color: #fff;
	border: 0;
	background: rgb(231, 76, 60);
	margin-right: 100px;
	float: right;
}

.button {
	display: inline-block;
	text-align: center;
	font-weight: 400;
	border-radius: 4px;
	font-family: NanumBarunGothic, Dotum, '돋움', sans-serif;
	text-decoration: none;
	vertical-align: middle;
	cursor: pointer;
}

button {
	text-transform: none;
	overflow: visible;
	font-size: 1em;
}

/*----------------------------------------------------------*/
#img1, #img2, #img3 {
	width: 100%;
	height: 500px;
}

/*================================================*/
#right_sub {
	margin-top: 120px;
}

#midmain {
	width: 80%;
	padding-top: 20px;
	padding-left: 15px;
	border: 1px solid rgb(255, 255, 255);
	display: inline-block;
}

#midmain-1 {
	width: 250px;
	height: 250px;
	border: 1px solid rgb(255, 255, 255);
	background: white;
	float: left;
	margin-left: 130px;
	text-align: center;
	float: left;
}

/*================================================*/
#new1, #new2 {
	width: 100%;
	height: 100%;
	float: left;
	padding-bottom: 20px;
}
/*================================================*/
img {
	vertical-align: middle;
	border-style: none;
}

.fileArea {
	margin-top: 100px;
}
</style>
</head>
<body>
	<c:if test="${ !empty msg }">
		<script>
			alert('${msg}');
		</script>
		<c:remove var="msg" />

	</c:if>
	<jsp:include page="../../views/common/manager.jsp" />

	<jsp:include page="../../views/common/productMenu.jsp" />
	<section id="content">

		<div class="content1">
			<h2 class="title">스낵 상품 등록</h2>

			<form action="supdate.do" method="post" enctype="multipart/form-data">
				<div id="divNewPrdtArea">
					<input type="text" name="goodsNo" value="${ Goods.goodsNo }">
					<div class="store-list">
						<div class="left">
							<table class="proTable">
								<tr>
									<td><label class="label1">카테고리 </label> <select
										name="gCateNo" id="categoryKey">
											<option value="1"
												<c:if test="${Goods.gCateNo == 1}"> selected</c:if>>디즈니</option>
											<option value="2"
												<c:if test="${Goods.gCateNo == 2}"> selected</c:if>>픽사</option>
											<option value="3"
												<c:if test="${Goods.gCateNo == 3}"> selected</c:if>>마블</option>

									</select></td>

								</tr>
								<tr>
									<td colspan="2"><label class="label2">상품명 </label> <input
										type="text" name="goodsName" value="${ Goods.goodsName }"
										size="30"></td>
								</tr>
								<tr>
									<td><label class="label3">가격 </label> <input type="number"
										min="0" name="goodsPrice" value="${ Goods.goodsPrice }"
										size="2"></td>
								</tr>
								<tr>
									<td><label class="label4">재고 </label> <input type="number"
										min="0" name="goodsStock" value="${ Goods.goodsPrice }"
										size="2"></td>
								</tr>
								<tr>
									<td><label class="label5">상품 설명</label> <textarea
											style="resize: none;" id="memo" min="0" name="goodsMemo"
											size="500" rows="10" cols="40">${ Goods.goodsMemo }</textarea></td>
								</tr>
							</table>
						</div>
						<div class="right">
							<div id="right_sub">
								<div id="midmain-1">
									<img id="new2"
										src="${ contextPath }/${Goods.attachment.filePath}/${ Goods.attachment.renameFileName }">
									<button type="button" class="button img" id="contentImg2">사진등록</button>
								</div>

								<div id="fileArea" hidden>
									<input type="file" id="Img2" name="uploadFile"
										onchange="loadImg(this,1)" accept="image/*"
										style="display: none;">
								</div>
							</div>
						</div>
					</div>
					<div class="btn_wrap">
						<button type="button" class="button cancel"
							onclick="location.href='${ ManagerGoodsList }'">목록으로</button>
						<button type="submit" class="button insert"
							onclick="location.href='${ gupdate }'">수정</button>
					</div>

					<div class="btn_wrap">
						<c:url var="gdelete" value="gdelete.do">
							<c:param name="goodsNo" value="${ Goods.goodsNo }" />
						</c:url>
						<button type="button" class="button delete"
							onclick="location.href='${ gdelete }'">삭제</button>
					</div>
				</div>
			</form>

			<script>
				$("#contentImg2").click(function() {
					$("#Img2").click();
				});

				// input type="file" 태그에 이미지 파일이 첨부 되었을 때
				// div에 미리보기 표현하기
				function loadImg(value, num) {
					// value => this : input type="file"
					// num => 각 번호에 맞춰 위의 미리보기 img에 적용 시킬 숫자

					// file이 존재한다면
					if (value.files && value.files[0]) {
						// 파일을 읽어들일 수 있는 FileReader 객체 생성
						var reader = new FileReader();

						// 파일 읽기가 다 완료 되었을 때 실행 되는 메소드
						reader.onload = function(e) {
							switch (num) {
							case 1:
								$("#new2").attr("src", e.target.result);
								break;
							}
						}

						// 파일 읽기 하는 메소드
						reader.readAsDataURL(value.files[0]);
					}
				}
			</script>

		</div>
	</section>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>

</body>
</html>