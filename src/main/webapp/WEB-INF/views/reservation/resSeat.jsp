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
	width: 100%;
	height: 150px;
}

nav {
	width: 100%;
	height: 50px;
}

#content {
	width: 100%;
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
/* 내가 쓴 코드 */
.content1 {
	width: 100%;
	height: 1400px;
	padding: 10px;
	background: rgb(234, 227, 227);
}

.movie_content {
	width: 100%;
	height: 100%;
	border: 1px solid rgb(234, 227, 227);
	background: rgb(234, 227, 227);
}

.movie_station {
	margin: auto;
	margin-top: 150px;
	width: 1200px;
	height: 800px;
	background: white;
}

.res_station1 {
	width: 100%;
	height: 8%;
	border: 1px solid black;
}

.res_station2 {
	width: 100%;
	height: 22%;
	border: 1px solid black;
}

.res_station3 {
	width: 100%;
	height: 70%;
	border: 1px solid black;
}

.movie_text {
	font-size: 22px;
	font-weight: bold;
	padding-top: 5px;
	padding-left: 10px;
	border-left: 1px solid gray;
	border-right: 1px solid gray;
	border-top: 3px solid black;
	border-bottom: 3px solid black;
	background: none;
}

.resBack {
	float: right;
	margin-top: 80px;
	margin-right: 150px;
	width: 130px;
	height: 50px;
	font-size: 18px;
	border-radius: 20px;
	background: burlywood;
	color: white;
}

.tryPerson {
	float: right;
	margin-top: 80px;
	margin-right: 10px;
	width: 130px;
	height: 50px;
	font-size: 18px;
	border-radius: 20px;
	background: red;
	color: white;
}

/* 결제 */
.movie_info {
	margin: auto;
	border: 1px solid gray;
	background: rgb(64, 64, 64);
	color: white;
	font-size: 16px;
	width: 1200px;
	height: 250px;
}

.movie_sale1, .movie_sale2, .movie_sale3, .movie_sale4, .movie_sale5 {
	float: left;
	border: 1px solid silver;
	width: 20%;
	height: 100%;
	box-sizing: border-box;
	border: 1px solid black;
}

.movie_sale2 div, .movie_sale3 div, .movie_sale4 div {
	padding: 5px;
	box-sizing: border-box;
}

.movie_nextBtn {
	display: block;
	margin: auto;
	margin-top: 70px;
	width: 150px;
	height: 150px;
	background: red;
	color: white;
	font-size: 20px;
	font-weight: bold;
	border: 1px solid black;
	border-radius: 10%;
}

.movie_nextImg {
	margin: auto;
	margin-bottom: 5px;
	width: 80px;
	height: 80px;
}

/* 결제 */

/* 자리 선택 */
.peopleSelect {
	box-sizing: border-box;
	float: left;
	width: 50%;
	height: 100%;
	border-right: 1px solid silver;
}

.selectMovieInfo {
	float: left;
	box-sizing: border-box;
	width: 50%;
	height: 100%;
	padding: 20px;
}

.peopleList1, .peopleList2 {
	float: left;
	margin: 0px;
	padding: 0px;
	list-style: none;
}

.peopleList1 li, .peopleList2 li {
	display: inline-block;
	margin-left: 5px;
	margin-top: 30px;
	width: 40px;
	height: 40px;
}

.peopleList1 button, .peopleList2 button {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	border: none;
	background: none;
	border: 1px solid black;
	padding: 0px;
	margin: 0px;
	font-size: 20px;
	text-align: center;
}

.peopleSelect span {
	float: left;
	margin-left: 30px;
	margin-top: 35px;
	font-size: 20px;
}

.screen {
	display: block;
	margin: auto;
	width: 40%;
	height: 7%;
	background: silver;
	font-size: 20px;
	text-align: center;
	border: 1px solid black;
}

.seat_station {
	display: inline-block;
	text-align: center;
	width: 100%;
	height: 93%;
}

.seat_select {
	display: inline-block;
	padding: 10px;
	padding-top: 70px;
	min-width: 100px;
	height: 100%;
}

.label {
	float: left;
	width: 25px;
	height: 25px;
	text-align: center;
	margin: 0px;
	padding: 0px;
	border: none;
}

.no {
	float: left;
	width: 25px;
	height: 25px;
	text-align: center;
	margin: 0px;
	padding: 0px;
	border: 1px solid black;
	background: none
}

.way {
	float: left;
	width: 25px;
	height: 25px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}

.noSeat {
	float: left;
	width: 25px;
	height: 25px;
	text-align: center;
	margin: 0px;
	padding: 0px;
	background: silver;
	border: 1px solid black;
}

.changeSelect {
	background: silver;
}

.selectSeat {
	background: red;
	color: white;
}

.movie_content button:focus {
	outline: none;
}

/* 자리 선택 */
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
/* 내가 쓴 코드 */
</style>
</head>

<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />
		<section id="content">
			<div class="content1">
				<div class="movie_content">
					<button class="resBack">예매 다시하기</button>
					<button class="tryPerson" onclick="tryPersonBtn();">인원 초기화</button>
					<div class="movie_station">
						<div class="res_station1">
							<h3 style="margin-top: 10px; text-align: center;">인원/좌석</h3>
						</div>
						<div class="res_station2">
							<div class="peopleSelect">
								<span style="display: block; width: 80px;">일반</span>
								<ul class="peopleList1">
									<li class="changeSelect">
										<button value="0">0</button>
									</li>
									<li>
										<button value="1">1</button>
									</li>
									<li>
										<button value="2">2</button>
									</li>
									<li>
										<button value="3">3</button>
									</li>
									<li>
										<button value="4">4</button>
									</li>
									<li>
										<button value="5">5</button>
									</li>
									<li>
										<button value="6">6</button>
									</li>
									<li>
										<button value="7">7</button>
									</li>
									<li>
										<button value="8">8</button>
									</li>
								</ul>
								<br> <br> <br> <span
									style="display: block; width: 80px;">청소년</span>
								<ul class="peopleList2">
									<li class="changeSelect">
										<button value="0">0</button>
									</li>
									<li>
										<button value="1">1</button>
									</li>
									<li>
										<button value="2">2</button>
									</li>
									<li>
										<button value="3">3</button>
									</li>
									<li>
										<button value="4">4</button>
									</li>
									<li>
										<button value="5">5</button>
									</li>
									<li>
										<button value="6">6</button>
									</li>
									<li>
										<button value="7">7</button>
									</li>
									<li>
										<button value="8">8</button>
									</li>
								</ul>
							</div>
							<div class="selectMovieInfo">
								<span
									style="display: block; float: left; width: 80px; font-size: 20px; text-align: center; border-right: 1px solid silver;">건대</span>
								<span
									style="display: block; float: left; width: 80px; font-size: 20px; text-align: center; border-right: 1px solid silver">1관</span>
								<span
									style="display: block; float: left; width: 100px; font-size: 20px; text-align: center; border-right: 1px solid silver">
									<strong style="color: red">101</strong> / <em
									style="font-style: inherit">101</em>
								</span> <span
									style="display: block; width: 400px; font-size: 30px; text-align: center; margin-top: 60px;">
									<strong>2020.08.18</strong> <strong>(월)</strong> <strong>13:00~14:55</strong>
								</span>
							</div>
						</div>
						<div class="res_station3">
							<div class="screen">
								<strong>SCREEN</strong>
							</div>
							<div class="seat_station">
								<div class="seat_select">
									<div class="label">
										<input value="0" hidden>A
									</div>
									<button class="no" value="A1">
										<input value="1" hidden>1
									</button>
									<div class="noSeat">
										<input value="2" hidden>X
									</div>
									<div class="noSeat">
										<input value="3" hidden>X
									</div>
									<button class="no" value="A4">
										<input value="4" hidden>4
									</button>
									<div class="way">
										<input value="5" hidden>
									</div>
									<button class="no" value="A5">
										<input value="6" hidden>5
									</button>
									<button class="no" value="A6">
										<input value="7" hidden>6
									</button>
									<button class="no" value="A7">
										<input value="8" hidden>7
									</button>
									<button class="no" value="A8">
										<input value="9" hidden>8
									</button>
									<div class="way">
										<input value="10" hidden>
									</div>
									<button class="no" value="A9">
										<input value="11" hidden>9
									</button>
									<button class="no" value="A10">
										<input value="12" hidden>10
									</button>
									<input value="13" hidden><br>
									<div class="label">
										<input value="14" hidden>B
									</div>
									<button class="no" value="B1">
										<input value="15" hidden>1
									</button>
									<button class="no" value="B2">
										<input value="16" hidden>2
									</button>
									<button class="no" value="B3">
										<input value="17" hidden>3
									</button>
									<button class="no" value="B4">
										<input value="18" hidden>4
									</button>
									<div class="way">
										<input value="19" hidden>
									</div>
									<button class="no" value="B5">
										<input value="20" hidden>5
									</button>
									<button class="no" value="B6">
										<input value="21" hidden>6
									</button>
									<div class="noSeat">
										<input value="22" hidden>X
									</div>
									<button class="no" value="B8">
										<input value="23" hidden>8
									</button>
									<div class="way">
										<input value="24" hidden>
									</div>
									<button class="no" value="B9">
										<input value="25" hidden>9
									</button>
									<button class="no" value="B10">
										<input value="26" hidden>10
									</button>
									<input value="27" hidden><br>
									<div class="label">
										<input value="28" hidden>C
									</div>
									<button class="no" value="C1">
										<input value="29" hidden>1
									</button>
									<button class="no" value="C2">
										<input value="30" hidden>2
									</button>
									<button class="no" value="C3">
										<input value="31" hidden>3
									</button>
									<button class="no" value="C4">
										<input value="32" hidden>4
									</button>
									<div class="way">
										<input value="33" hidden>
									</div>
									<button class="no" value="C5">
										<input value="34" hidden>5
									</button>
									<div class="noSeat">
										<input value="35" hidden>X
									</div>
									<div class="noSeat">
										<input value="36" hidden>X
									</div>
									<button class="no" value="C8">
										<input value="37" hidden>8
									</button>
									<div class="way">
										<input value="38" hidden>
									</div>
									<button class="no" value="C9">
										<input value="39" hidden>9
									</button>
									<button class="no" value="C10">
										<input value="40" hidden>10
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="movie_info">
						<div class="movie_sale1">
							<img
								src="<%=request.getContextPath()%>/resources/images/devil.jpg"
								width="50%" height="70%"
								style="display: block; margin: auto; margin-top: 10px;"> <span
								style="display: block; text-align: center; margin-top: 10px;">
							</span>
						</div>
						<div class="movie_sale2">
							<div style="width: 100%; height: 20%;">
								<span style="width: 25%; height: 100%; float: left;">극장</span> <span
									style="width: 75%; height: 100%; display: inline-block;"></span>
							</div>
							<div style="width: 100%; height: 20%;">
								<span style="width: 25%; height: 100%; float: left;">일시</span> <span
									style="width: 75%; height: 100%; display: inline-block;"></span>
							</div>
							<div style="width: 100%; height: 20%;">
								<span style="width: 25%; height: 100%; float: left;">상영관</span>
								<span style="width: 75%; height: 100%; display: inline-block;"></span>
							</div>
							<div style="width: 100%; height: 20%;">
								<span style="width: 25%; height: 100%; float: left;">인원</span> <span
									style="width: 75%; height: 100%; display: inline-block;"></span>
							</div>
						</div>
						<div class="movie_sale3">
							<div style="width: 100%; height: 20%;">
								<span style="width: 35%; height: 100%; float: left;">좌석명</span>
								<span
									style="width: 65%; height: 100%; display: inline-block; word-break: break-all;"></span>
							</div>
							<div style="width: 100%; height: 40%;">
								<span style="width: 35%; height: 100%; float: left;">좌석번호</span>
								<span
									style="width: 65%; height: 100%; display: inline-block; word-break: break-all;"></span>
							</div>
						</div>
						<div class="movie_sale4">
							<div style="width: 100%; height: 20%;">
								<span style="width: 35%; height: 100%; float: left;">일반</span> <span
									style="text-align: right; width: 65%; height: 100%; display: inline-block;"></span>
							</div>
							<div style="width: 100%; height: 20%;">
								<span style="width: 35%; height: 100%; float: left;">청소년</span>
								<span
									style="text-align: right; width: 65%; height: 100%; display: inline-block;"></span>
							</div>
							<div style="width: 100%; height: 20%;">
								<span style="width: 35%; height: 100%; float: left;">총 금액</span>
								<span
									style="text-align: right; width: 65%; height: 100%; display: inline-block; color: red; font-weight: bold;"></span>
							</div>
						</div>
						<div class="movie_sale5">
							<button class="movie_nextBtn">
								<img
									src="<%=request.getContextPath()%>/resources/images/nextBtn2.png"
									class="movie_nextImg"> <br>결제하기
							</button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
	<script>
		var val1 = 0; // 일반
		var val2 = 0; // 청소년
		var sum = 0;
		var peopleCount = $(".movie_sale2").children('div').eq(3).children(
				'span').eq(1);
		var people1 = $('.movie_sale4').children('div').eq(0).children('span')
				.eq(1);
		var people2 = $('.movie_sale4').children('div').eq(1).children('span')
				.eq(1);
		var totalPrice = $('.movie_sale4').children('div').eq(2).children(
				'span').eq(1);

		$(".peopleList1 li").click(function() {
			var list = $(this);
			var child = list.children('button');

			if (Number(child.val()) + val2 > 8) {
				alert("총 인원이 8명을 넘어갈수 없습니다.");
			} else {
				val1 = Number(child.val());
				$(".peopleList1 li").removeClass('changeSelect');
				list.addClass('changeSelect');
				peopleDiv(val1, val2);
				sum = val1 + val2;
				console.log("일반 : " + val1 + "명");
				console.log("총 : " + sum + "명");
			}

		})

		$(".peopleList2 li").click(function() {
			var list = $(this);
			var child = list.children('button');

			if (Number(child.val()) + val1 > 8) {
				alert("총 인원이 8명을 넘어갈수 없습니다.");
			} else {
				val2 = Number(child.val());
				$(".peopleList2 li").removeClass('changeSelect');
				list.addClass('changeSelect');
				peopleDiv(val1, val2);
				sum = val1 + val2;
				console.log("청소년 : " + val2 + "명");
				console.log("총 : " + sum + "명");
			}
		})

		function peopleDiv(val1, val2) {
			if (val2 > 0 && val1 > 0) {
				peopleCount
						.text("일반 : " + val1 + "명" + ", 청소년 : " + val2 + "명");
				people1.text('9000 * ' + val1);
				people2.text('7000 * ' + val2);
				totalPrice.text((9000 * val1) + (7000 * val2) + " 원");
			} else if (val1 > 0 && val2 == 0) {
				peopleCount.text("일반 : " + val1 + "명");
				people1.text('9000 * ' + val1);
				people2.text('0');
				totalPrice.text((9000 * val1) + " 원");
			} else if (val1 == 0 && val2 > 0) {
				peopleCount.text("청소년 : " + val2 + "명");
				people1.text('0');
				people2.text('9000 * ' + val2);
				totalPrice.text((7000 * val2) + " 원");
			} else {
				peopleCount.text("");
				people1.text("");
				people2.text("");
				totalPrice.text("");
			}
		}

		var seat_array = new Array();
		var index_array = new Array();

		var count = 0;

		$('.seat_select button').click(
				function() {

					if (sum > 0) {
						var seat_number = $(this).val();
						var seat_index = $(this).children('input').val();
						if ($(this).hasClass('selectSeat') == false) {
							if (count < sum) {
								$('.peopleList1 li button').prop('disabled',
										true);
								$('.peopleList2 li button').prop('disabled',
										true);
								seat_array[count] = seat_number;
								index_array[count] = seat_index;
								$(this).addClass('selectSeat');

								count++;

								console.log("count < sum : " + count);
								console.log(seat_array);
							}
							$('.movie_sale3').children('div').eq(0).children(
									'span').eq(1).text("일반석");
							$('.movie_sale3').children('div').eq(1).children(
									'span').eq(1).text(seat_array);
						}

					} else {
						alert("관람하실 인원을 선택해주세요.");
						count = 0;
						seat_array = new Array();

						console.log("count = 0 : " + count);
					}
				})

		function tryPersonBtn() {
			count = 0;
			seat_array = new Array();
			val1 = 0;
			val2 = 0;
			sum = 0;

			$('.peopleList1 li button').prop('disabled', false);
			$('.peopleList2 li button').prop('disabled', false);

			$(".peopleList1 li").removeClass('changeSelect');
			$(".peopleList1 li").eq(0).addClass('changeSelect');
			$(".peopleList2 li").removeClass('changeSelect');
			$(".peopleList2 li").eq(0).addClass('changeSelect');
			$('.seat_select button').removeClass('selectSeat');

			peopleCount.text("");
			$('.movie_sale3').children('div').eq(0).children('span').eq(1)
					.text("");
			$('.movie_sale3').children('div').eq(1).children('span').eq(1)
					.text("");

			console.log("count : " + count);
			console.log("seat_array : " + seat_array);
			console.log("val1 : " + val1);
			console.log("val2 : " + val2);
			console.log("sum : " + sum);
			console.log("seatStr : " + seatStr);
		}
	</script>

</body>
</html>