<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.kh.kass.snack.model.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KASS CINEMA</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
<
style>header, nav, section, article, aside, footer {
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

/* 결제 영역 */
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

.store-payment .payment-final {
	overflow: hidden;
	margin: 0;
	padding: 30px;
	color: #fff;
	border-radius: 10px;
	background-color: #333;
}

.store-payment .payment-final .calc {
	text-align: center;
}

.store-payment .payment-final .calc .cell {
	display: inline-block;
	min-width: 180px;
	vertical-align: middle;
}

.store-payment .payment-final .calc .cell .txt {
	color: #c4c4c4;
}

.stroe-payment p {
	margin: 0;
	padding: 0;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.store-payment .payment-final .calc .cell .price {
	overflow: hidden;
	padding-top: 5px;
}

.store-payment .payment-final .calc .cell .price em {
	display: inline-block;
	font-size: 1.6em;
	font-family: Roboto;
	line-height: 24px;
	vertical-align: top;
	font-weight: 700;
}

em {
	font-style: normal;
}

.store-payment .payment-final .calc .cell .price span {
	display: inline-block;
	font-size: 1.0667em;
	line-height: 24px;
	vertical-align: top;
	color: #c4c4c4;
}

.ico-circle-minus {
	width: 24px;
	height: 24px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-circle-minus.png);
}

.ico-circle-equal {
	width: 24px;
	height: 24px;
	background-image:
		url(https://img.megabox.co.kr/static/pc/images/common/ico/ico-circle-equal.png);
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

.store-payment .payment-final .choice {
	margin: 20px 0 0 0;
	padding: 20px 0 0 0;
	text-align: center;
	border-top: 1px solid #434343;
}

.store-payment .payment-final .choice .txt {
	display: inline-block;
	padding: 0 20px 0 0;
	vertical-align: top;
	color: #c4c4c4;
}

.store-payment .payment-final .choice .cell {
	display: inline-block;
	padding: 0 20px;
	vertical-align: top;
}

[type=radio] {
	width: 16px;
	height: 16px;
	vertical-align: middle;
	box-sizing: border-box;
	padding: 0;
}

label {
	display: inline-block;
	vertical-align: middle;
	cursor: pointer;
}

.pt40 {
	padding-top: 40px !important;
}

.btn-group {
	padding: 20px 0 30px 0;
	margin: 0;
	text-align: center;
}

a.button:visited {
	color: #503396;
}

.btn-group .button {
	margin: 0 3px;
}

.btn_wrap {
	padding: 20px 0 30px 0;
	margin: 0;
	text-align: center;
}

.btn_wrap .button {
	margin: 0 3px;
}

.button .cancel {
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

</style>
</head>
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
					<h2 class="tit">결제</h2>
					<h3 class="tit">주문 상품 정보</h3>
					<div class="table-wrap">
						<table class="board-list">
							<caption>장바구니</caption>
							<colgroup>
								<col style="width: 120px;">
								<col>
								<col style="width: 150px;">
								<col style="width: 80px;">
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
								<tr>
									<td class="a-c">
										<div class="goods-info">
											<p class="img">
												<a href="#" title=""> 
												<img src="${ contextPath }/${sn.attachment.filePath}/${ sn.attachment.renameFileName }" alt onerror="noImg(this);"
													width="100px" height="100px">
												</a>
											</p>
										</div>
									</td>
									<th scope="row">
										<div class="goods-info">
											<p class="name">
												<a href="#" title="">${ sn.snackName }</a>
											<p class="bundle">${ sn.snackMemo }</p>
											</p>
										</div>
										<div class="mt10">
											<span id="acptBrchView" class="font-gblue"></span> <em
												id="acptBrchChiValView"></em>
										</div>
									</th>
									<td><a href="#" class="a-link" name="brchList"
										title="사용가능극장 확인">사용가능극장 확인</a></td>
									<td><em id="purcQtyView">${ proCount }</em></td>
									<td>
										<div class="goods-info">
											<em id="prdtSumAmtView" class="price">${ price }</em>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 장바구니 -->
					<!-- 장바구니 -->
					<h3 class="tit mt40">최종결제</h3>
					<div class="payment-final">
						<div class="calc">
							<div class="cell all">
								<p class="txt">상품 금액</p>
								<p class="price">
									<em id="totPrdtAmtView">${ sn.snackPrice }</em> <span>원</span>
								</p>
							</div>
							<i class="iconset ico=circle-double">곱하기</i>
							<div class="cell sale">
								<p class="txt">선택 상품 개수</p>
								<p class="price">
									<em id="totDcAmtView">${ proCount }</em> <span>개</span>
								</p>
							</div>
							<i class="iconset ico-circle-equal">등호</i>
							<div class="cell real">
								<p class="txt">최종 결제금액</p>
								<p class="price">
									<em id="lstPayAmtView">${ price }</em> <span>원</span>
								</p>
							</div>
						</div>
						<div class="choice">
							<p class="txt">결제수단 선택</p>
							<div class="cell">
								<input type="radio" id="radio_choice01" name="radio_choice" value="kakaopay" checked> 
								<label for="radio_choice01" >카카오페이</label>
							</div>
							<div class="cell">
								<input type="radio" id="radio_choice03" name="radio_choice" value="bank" checked> 
								<label for="radio_choice03">무통장입금</label>
							</div>
							
						</div>
					</div>
					<!-- payment-final -->

					<div class="btn-group pt40">
						<!-- <a href="javascript:history.back();" class="button large w170px"
							title="취소">취소</a> 
						<a href="javascript:fn_storePayCompltChk();" class="button purple large w170px" title="결제">결제</a> -->

						<div class="btn_wrap">
							<button type="button" class="button cancel"
								onclick="location.href='${ ManagerSnackList }'">취소</button>
								
								<button type="button" class="button insert" onclick="payment1();">결제</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
		
		<% Snack sn = (Snack)request.getAttribute("sn");%>
		
		function payment1(){
		var num1 = <%=sn.getSnackNo()%>;
		var num3 = ${ proCount };
		var num4 = ${ price };
		//alert("시작 : " + num1 + " " + num2 + " " + num3 + " " + num4);
		//location.href="proMoneyPay.do";
		location.href="proMoneyPay.do?snackNo=" + num1 + "&proCount=" + num3 + "&price=" + num4;
		}
		
		</script>

		<div id="stay_footer">
			<div id="stay_footer_inner">
				<jsp:include page="../../views/common/footer.jsp" />
			</div>
		</div>
		
		<script>
	
			function payment(){
				var radioVal = $('input[name="radio_choice"]:checked').val();
				console.log("?"+radioVal);
				$("#radioChoise").val(radioVal);
				
				if(radioVal == 'bank') {
				
				/* 총 가격 상품명 상품 개수 */
				/* var snackNo = ${ sn.snackNo };
				var snackName = '${ sn.snackName }';
				var proCount '${ proCount }';
				var price = ${ price }; */
				
				if(radioVal == 'kakaopay'){

			        var IMP = window.IMP; // 생략가능
			        IMP.init('imp07866238'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			        var msg;
			        
			        IMP.request_pay({
			            pg : 'kakaopay',
			            pay_method : 'card',
			            merchant_uid : 'merchant_' + new Date().getTime(),
			            name : movieName,
			            amount : price+"원",
			            buyer_email : orderEmail,
			            buyer_name : orderName,
			            buyer_tel : orderphone,
			            buyer_addr : address,
			            buyer_postcode : '123-456'
			            //m_redirect_url : 'http://www.naver.com'
			        }, function(rsp) {
			            if ( rsp.success ) {
			                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
			                jQuery.ajax({
			                    url: "movieCard.do", //cross-domain error가 발생하지 않도록 주의해주세요
			                    type: 'POST',
			                    dataType: 'json',
			                    data: {
			                        imp_uid : rsp.imp_uid,
			                        userNo : userNo,
			                        resNo : resNo,
			                        time : time,
			                        people : people,
			                        index_array : index_array,
			                        placeValue : placeValue,
			                        people1 : people1,
			                        people2 : people2,
			                        price : price
			                        
			                        //기타 필요한 데이터가 있으면 추가 전달
			                    }
			                }).done(function(data) {
			                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
			                    if ( everythings_fine ) {
			                        msg = '결제가 완료되었습니다.';
			                        msg += '\n고유ID : ' + rsp.imp_uid;
			                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
			                        msg += '\결제 금액 : ' + rsp.paid_amount;
			                        msg += '카드 승인번호 : ' + rsp.apply_num;
			                        
			                        alert(msg);
			                    } else {
			                        //[3] 아직 제대로 결제가 되지 않았습니다.
			                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
			                    }
			                });
			                //성공시 이동할 페이지
			                location.href="proMoneyPay.do?userNo="+userNo+"&resNo="+resNo+"&index_array="+index_array+"&placeValue="+placeValue+"&people1="+people1+"&people2="+people2+"&price="+price+"&time="+time+"&people="+people+"&radioVal="+radioVal;
			            } else {
			                msg = '결제에 실패하였습니다.';
			                msg += '에러내용 : ' + rsp.error_msg;
			                //실패시 이동할 페이지
			                location.href="<%=request.getContextPath()%>";
			                alert(msg);
			            }
			        });
				}else{
					location.href="proMoneyPay.do?userNo="+userNo+"&resNo="+resNo+"&index_array="+index_array+"&placeValue="+placeValue+"&people1="+people1+"&people2="+people2+"&price="+price+"&time="+time+"&people="+people+"&radioVal="+radioVal;
				}
			}	
			}
			
		</script>
				
	<c:if test="${ !empty msg }">
		<script>
			alert('${msg}');
		</script>
		<c:remove var="msg" />

	</c:if>
</body>
</html>