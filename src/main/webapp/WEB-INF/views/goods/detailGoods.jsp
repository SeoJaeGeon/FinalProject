<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KASS CINEMA</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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

/* 영역 나누기 */

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
	margin-left: 20px;
	padding: 0;
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

/* 상품 상세보기*/
#contents {
	width: 100%;
	margin: 0 auto;
	margin-left: 70px;
	padding: 50px 0 0 0;
}

div {
	display: block;
}

.contents_mall_detail .pd_wrap {
	position: relative;
	min-height: 650px;
	margin: 40px 0 80px;
}

.contents_mall_detail .pd_wrap .pd_img {
	float: left;
	width: 500px;
}

.contents_mall_detail .pd_wrap .pd_img .main_img {
	position: relative;
	margin-bottom: 20px;
	text-align: center;
	border: 1px solid;
}

.contents_mall_detail .pd_wrap .pd_img .main_img img {
	width: 400px;
	height: 379px;
}

img {
	border: none;
	vertical-align: top;
}

.contents_mall_detail .pd_wrap .pd_detail {
	margin-left: 600px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table {
	text-align: left;
	margin-bottom: 30px;
}

/* table */
table {
	width: 600px;
	border-collapse: collapse;
	border-spacing: 0;
	border: 0;
	display: table;
}

caption {
	overflow: hidden;
	width: 1px;
	height: 1px;
	clip: rect(1px, 1px, 1px, 1px);
	font-style: normal;
	font-weight: normal;
	display: table-caption;
	text-align: -webkit-center;
}

colgroup {
	display: table-column-group;
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

th {
	display: table-cell;
	vertical-align: inherit;
	font-style: normal;
	font-weight: normal;
}

td {
	display: table-cell;
	vertical-align: inherit;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table .badge_wrap {
	border: none;
	padding: 0;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table th {
	text-align: left;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table th,
	.contents_mall_detail .pd_wrap .pd_detail .pd_table td {
	border-bottom: 1px solid #eeeeee;
	padding: 20px 0;
	font-size: 15px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table .tit {
	padding: 10px 0 22px;
	font-size: 28px;
}

.contents_mall_detail .pd_wrap .pd_detail .pd_table td {
	color: #666666;
}

.contents_mall_detail .pd_wrap .pd_detail .txt_price {
	margin-right: 20px;
	font-size: 25px;
}

.txt_price {
	display: inline-block;
	font-family: 'Roboto', 'Noto Sans KR';
	font-weight: bold;
	color: #000;
}

.btn_col4.ty3 {
	height: 28px;
	line-height: 26px;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_col4 {
	padding: 0 30px;
}

.btn_col4 {
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid #dddddd;
	font-size: 14px;
	color: #000000 !important;
	text-align: center;
	vertical-align: middle;
	background-color: #ffffff;
}

.btn_col4.rnd {
	border-radius: 52px;
}

/* table */
.contents_mall_detail .pd_wrap .pd_detail .bx_num {
	width: 600px;
	margin-bottom: 40px;
}

.bx_num {
	position: relative;
	border: 1px solid #DDD;
	-webkit-border-radius: 4px;
	background-color: #fff;
	box-sizing: border-box;
}

.bx_num .btn_mins {
	left: 0;
	/* background-image: ; */
}

.bx_num .btn_plus {
	right: 0;
	/* background-image: ; */
}

.bx_num .btn_plus, .bx_num .btn_mins {
	position: absolute;
	top: 0;
	bottom: 0;
	background: no-repeat 50% 50%;
	border: 0 none;
	padding: 0 15px;
	text-indent: -9999em;
	font: 0 auto;
}

button {
	cursor: pointer;
	-webkit-appearance: none;
}

input, select, button {
	vertical-align: middle;
	-webkit-appearance: none;
}

.contents_mall_detail .pd_wrap .pd_detail .bx_num .txt_num {
	padding: 23px 0;
}

.bx_num .txt_num {
	font-family: 'Roboto';
	font-size: 15px;
	font-weight: bold;
	color: #000;
	text-align: center;
	vertical-align: middle;
}

.contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap {
	font-size: 15px;
	text-align: right;
	margin-bottom: 10px;
	padding-right: 120px;
}

.contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap strong {
	margin-left: 20px;
	font-size: 30px;
}

.txt_price_str {
	display: inline-block;
	font-family: 'Roboto', 'Noto Sans KR';
	font-weight: bold;
	color: #FF253E;
}

.contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap strong em {
	font-size: 0.667em;
}

em {
	font-style: normal;
	font-weight: normal;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_wrap {
	font-size: 0;
}

.contents_mall_detail .pd_wrap .pd_detail .btn_wrap button {
	width: 212px;
	margin-right: 6px;
	box-sizing: border-box;
}

.btn_col1.ty7, .btn_col2.ty7 {
	height: 52px;
	line-height: 50px;
	padding: 0 24px;
}

.btn_col1 {
	display: inline-block;
	border-radius: 4px;
	border: 1px solid #FF243E;
	font-size: 14px;
	color: #ffffff !important;
	text-align: center;
	vertical-align: middle;
	background-color: #FF243E;
}

.btn_col2 {
	display: inline-block;
	border-radius: 4px;
	border: 1px solid #414141;
	font-size: 14px;
	color: #ffffff !important;
	text-align: center;
	vertical-align: middle;
	background-color: #414141;
}

/* 내가 쓴 코드 */
.content1 {
	width: 100%;
	min-height: 400px;
	margin: auto;
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
	width: 33.33%;
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

/* 내가 쓴 코드 */
.box-pulldown {
	overflow: hidden;
	width: 90%;
}

.box-pulldown+.box-pulldown {
	margin-top: 20px;
}

.box-pulldown .tit {
	overflow: hidden;
	border-radius: 5px;
	border: 1px solid #d8d9bd;
}

.box-pulldown .tit .btn-toggle {
	display: block;
	position: relative;
	width: 100%;
	height: 39px;
	margin: 0;
	padding: 0 20px;
	border: 0;
	text-align: left;
	background-color: #fff;
}

button {
	cursor: pointer;
	letter-spacing: -.5px;
	font-weight: 400;
	font-family: NanumBarunGothic, Dotum, '돋움', sans-serif;
	overflow: visible;
	text-transform: none;
	font-size: 1em;
	line-height: 1.15;
}

.box-pulldown .tit .btn-toggle .iconset {
	position: absolute;
	right: 20px;
	top: 50%;
	margin-top: -4px;
}

.ico-arr-toggle-down {
	overflow: hidden;
	width: 12px;
	height: 7px;
}

.iconset {
	overflow: hidden;
	display: inline-block;
	margin: -1px 0 0 0;
	padding: 0;
	font-size: 0;
	line-height: 0;
	vertical-align: middle;
	background-position: 0 0;
	background-repeat: no-repeat;
}

.box-pulldown.on .cont {
	display: block;
}

.box-pulldown .cont {
	display: none;
	margin: 0;
	padding: 20px;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}
</style>
<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />

		<section id="content">
			<div class="container">
				<div class="page-util">
					<div class="location">
						<span>HOME > </span> <a href="#" onclick="" title="스토어">스토어</a>
					</div>
				</div>
			</div>

			<!-- <div id="stay2"> -->
			<div class="sub_section">
				<div id="contents" class="contents_mall_detail"
					style="margin-top: 20px;">
					<div class="pd_wrap">
						<div class="pd_img">
							<div class="main_img">
								<img
									src="${ contextPath }/${Goods.attachment.filePath}/${ Goods.attachment.renameFileName }">
							</div>
						</div>
						<!--pd_img-->
						<div class="pd_detail">
							<table class="pd_table" summary="상품 상세설명 표">
								<caption>상품 상세내용</caption>
								<colgroup>
									<col style="width: 30%;">
									<col style="width: auto;">
								</colgroup>
								<thead>
									<tr>
										<th scope="row" class="badge_wrap" colspan="2"></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="tit" colspan="2">${ Goods.goodskName }</th>
									</tr>
									<tr>
										<td></td>
										<td><span class="txt_price">${ Goods.goodsPrice }</span><em>원</em>
										</td>
									</tr>
									<tr>
										<th scope="row">상품설명</th>
										<td>${ Goods.goodsMemo }</td>
									</tr>
									<tr>
										<th scop="row">구매제한</th>
										<td>제한없음</td>
									</tr>
									<tr>
										<th scope="row">수령방법</th>
										<td>배송(택배)</td>
									</tr>
									<tr>
										<th scope="row">사용가능 영화관</th>
										<td>
											<button class="btn_col4 ty3 rnd" title="레이어팝 열기">스위트샵
												상품권</button> &nbsp;
										</td>
									</tr>

								</tbody>
							</table>
							<div class="bx_num">
								<button class="btn_mins" onclick="btn_minus();">삭제</button>
								<div class="txt_num">1</div>
								<button class="btn_plus" onclick="btn_plus();">추가</button>
							</div>
							<div class="txt_price_wrap">
								총 상품금액 <strong class="txt_price_str">${ Goods.goodsPrice }</strong>
								<em class="txt_price_str">원</em>
							</div>
							<div class="btn_wrap">
								<button class="btn_col2 ty7">장바구니</button>
								<button class="btn_col1 ty7" onclick="buyBtn();">구매하기</button>
							</div>
						</div>
						<!-- pd_detail -->
					</div>

					<div class="box-pulldown">
						<div class="tit">
							<button type="button" id="btn_01" class="btn-toggle">
								구매 후 취소 <i class="iconset ico-arr-toggle-down">내용보기</i>
							</button>
						</div>
						<div class="cont" id="showtable1" style="display: none;">
							<p>
								&nbsp;스토어 상품은 회원만 구매할 수 있습니다. <br> - 유효기간은 24개월로 사용일 기준입니다.
								<br> - 결제가 완료된 상품은 마이시네마 > 예매/구매내역에서 확인 후 Kasscinema
								굿즈에서 확인가능합니다. <br> - 오리지널 팝콘이 기본으로 제공되며, 맛/반반팝콘 변경 시
								금액이 추가됩니다. <br> - 콤보 주문 시 탄산음료가 기본으로 제공되며, 사이즈 및 기타 음료로 변경 시 금액이
								추가됩니다. (단, PET음료로 변경불가)
							</p>
						</div>
					</div>
					<div class="box-pulldown">
						<div class="tit">
							<button type="button" onclick="showhide();" id="btn_02"
								class="btn-toggle">
								상품 이용 안내 <i class="iconset ico-arr-toggle-down">내용보기</i>
							</button>
						</div>
						<div class="cont" id="showtable2" style="display: none;">
							<p>
								&nbsp;스토어 상품은 회원만 구매할 수 있습니다. <br> - 유효기간은 24개월로 사용일 기준입니다.
								<br> - 결제가 완료된 상품은 마이시네마 > 예매/구매내역에서 확인 후 Kasscinema
								스위트(매점)에서 사용가능합니다. <br> - 오리지널 팝콘이 기본으로 제공되며, 맛/반반팝콘 변경 시
								금액이 추가됩니다. <br> - 탄산음료가 기본으로 제공되며, 사이즈 및 기타 음료로 변경 시 금액이
								추가됩니다. (단, PET음료로 변경불가)
							</p>
						</div>
					</div>



				</div>
				<!-- contents -->
			</div>
			<!-- subsection -->
			<!-- </div> -->


			<script type="text/javascript">
        // 보이기
		var count1 = 0;
        var count2 = 0;
        var snackNo = ${ Goods.goodsNo };
        console.log(goodsNo);
        $(function(){
            $("#btn_01").click(function(){
            	if(count1 == 0){
                $("#showtable1").slideDown(300);
                count1 = 1;
            	} else {
            	$("#showtable1").slideUp(300);
            	count1 = 0;
            	}
            });
            
            $("#btn_02").click(function(){
            	if(count2 == 0){
                $("#showtable2").slideDown(300);
                count2 = 1;
            	} else {
            	$("#showtable2").slideUp(300);
            	count2 = 0;
            	}
            });
        });
			
        var totalPrice = $(".txt_price_wrap").children(".txt_price_str").eq(0).text();
        var proCount = 1;
        
        function btn_plus(){
        	$(".txt_num").text(Number($(".txt_num").text())+1);
        	var price = Number($(".txt_price").text());
        	var num =  Number($(".txt_num").text());
        	var total = $(".txt_price_wrap").children(".txt_price_str").eq(0);
        	
        	
        	total.text(price*num);
        	totalPrice = price*num;
        	proCount = num;
        	console.log("proCount = " + proCount);
        	console.log("totalPrice = " + totalPrice);	
        }
        
        function btn_minus(){
        	if(proCount > 1){
        		$(".txt_num").text(Number($(".txt_num").text())-1);
        	}else{
        		alert("1개 이상의 수량을 선택해주세요.");
        	}
        	var price = Number($(".txt_price").text());
        	var num =  Number($(".txt_num").text());
        	var total = $(".txt_price_wrap").children(".txt_price_str").eq(0);
        	
        	
        	total.text(price*num);
        	totalPrice = price*num;
        	proCount = num;
        	console.log("proCount = " + proCount);
        	console.log("totalPrice = " + totalPrice);	
        }
        
        function buyBtn(){
        	if(${empty loginUser} == false){
        		location.href="goSnackBuy.do?snackNo="+snackNo+"&proCount="+proCount;        		
        	}else{
        		alert("로그인 해주세요");
        	}
        }
		</script>
		</section>
	</div>
	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>

</body>
</html>