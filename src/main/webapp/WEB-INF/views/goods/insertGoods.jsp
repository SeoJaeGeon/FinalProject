<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>Insert title here</title>
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
	height: 700px;
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
	margin-top: 50px;
	vertical-align: middle;
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
	width: 300px;
	height: 50px;
}

input {
	padding: 6px 12px;
	width: 300px;
	height: 50px;
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
	background: #503396;
}

.button.img {
	height: 40px;
	padding: 0 30px;
	line-height: 40px;
	color: #fff;
	border: 0;
	background: #503396;
	margin-top: 8px;
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
	margin-top: 50px;
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
	/* float: left; */
	margin-left: 130px;
	text-align: center;
	
}

#midmain-2 {
	width: 250px;
	height: 250px;
	border: 1px solid rgb(255, 255, 255);
	background: white;
	float: left;
	margin-left: 130px;
	text-align: center;
	margin-top: 70px;
}

/*================================================*/
#new1, #new2 {
	width: 100%;
	height: 100%;
	float: left;
}
/*================================================*/
img {
	vertical-align: middle;
	border-style: none;
}

.fileArea {
	margin-top: 100px;
}

/*----------------------------------------------------*/
#movie-div2-id2 {
	width: 350px;
	height: 150px;
	margin-left: 70px;
	margin-top: 30px;
}

.movie-div {
	width: 50%;
	height: 14.3%;
	border: 1px solid black;
	float: left;
	font-size: 25px;
	text-align: center;
	background-color: #e9f5ff;
}
</style>
</head>
<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/manager.jsp" />
	</div>
	<jsp:include page="../../views/common/productMenu.jsp" />

	<section id="content">
		<div class="content1">
			<h2 class="title">스낵 상품 등록</h2>

			<form action="ginsert.do" method="post" enctype="multipart/form-data">
				<div id="divNewPrdtArea">
					<div class="store-list">
						<div class="left">
							<table class="proTable">
								<tr>
									<td><label class="label1">카테고리 </label> <select
										name="gCateNo" id="categoryKey" style="width:300px;height:40px;">
											<option selected value="0">카테고리 선택</option>
											<option value="1">디즈니</option>
											<option value="2">픽사</option>
											<option value="3">마블</option>
									</select></td>
								</tr>
								<tr>
									<td colspan="2"><label class="label2">상품명 </label> <input
										type="text" name="goodsName" size="30"></td>
								</tr>
								<tr>
									<td><label class="label3">가격 </label> <input type="number"
										name="goodsPrice"></td>
								</tr>
								<tr>
									<td><label class="label3">재고 </label> <input type="number"
										name="goodsStock"></td>
								</tr>
								<tr>
									<td><label class="label4">상품 설명</label> <textarea
											style="resize: none;" id="meno" min="0" name="goodsMemo"
											size="500" rows="10" cols="40"></textarea></td>
								</tr>
							</table>
						</div>
						<!-- <div class="right">
                            <input type="file" name="uplodeFile" id="img-file">
                        </div> -->
						<div class="right">
							<div id="right_sub">
								<div id="midmain-1">
									<img id="new1">
									<button type="button" class="button img" id="contentgImg1">사진등록</button>
								</div>
								
								<div id="midmain-2">
									<img id="new2">
									<button type="button" class="button img" id="contentgImg2">사진등록</button>
								</div>
								
								<div id="fileArea" hidden>
									<input type="file" id="gImg1" name="uploadFile" onchange="loadImg(this,1)" accept="image/*"
										style="display: none;">
								</div>
								<div>
									<input type="file" id="gImg2" name="uploadFile2" onchange="loadImg(this,2)" accept="image/*"
										style="display: none;">
								</div>
							</div>
						</div>
					</div>
					<div class="btn_wrap">
						<button class="button cancel" type="reset">취소</button>
						<button class="button insert" type="submit">등록</button>
					</div>
				</div>
			</form>


			<script>
				$("#contentgImg1").click(function() {
					$("#gImg1").click();
				});
				
				$("#contentgImg2").click(function(){
					$("#gImg2").click();
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
								$("#new1").attr("src", e.target.result);
								break;
							case 2:
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