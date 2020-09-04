<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: 1500PX;
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
	background: rgb(32, 32, 32);
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
.pay_background {
	margin: auto;
	width: 1000px;
	height: 1000px;
	padding: 20px;
	background: rgb(32, 32, 32);
}

.chk_label {
	color: white;
	font-size: 20px;
	margin-left: 20px;
	margin-top: 10px;
	margin-bottom: 40px;
}

.chk_input {
	margin-right: 5px;
	width: 20px;
	height: 20px;
}

.pay_Info {
	border: 1px solid white;
	width: 800px;
	height: 600px;
	margin: auto;
}

.movie-img {
	float: left;
	width: 40%;
	height: 100%;
	border: 1px solid white;
}

.movie-line {
	float: left;
	width: 60%;
	height: 100%;
	border: 1px solid white;
}

.movie_nextBtn {
	display: block;
	margin: auto;
	margin-top: 10px;
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
			<div class="pay_background">
				<h2
					style="border-bottom: 1px solid white; color: white; padding-bottom: 10px; width: 100%;">결제
					방식 선택</h2>
				<label class="chk_label"> <input class="chk_input"
					type="radio" name="chk_pay" value="card" checked>카드
				</label> <label class="chk_label"> <input class="chk_input"
					type="radio" name="chk_pay" value="money">무통장
				</label>

				<div class="pay_Info">
					<div class="movie-img">
						<div style="width: 100%; height: 80%; padding: 5px;">
							<img src="image/devil.jpg" style="width: 100%; height: 100%;">
						</div>
						<div style="width: 100%; height: 20%;">
							<span
								style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px;">
								다만 악에서 구하소서 </span>
						</div>
					</div>
					<div class="movie-line">
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									극장 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									KASS 상봉 </span>
							</div>
						</div>
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									일시 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									2020.08.01(토) 15:00 </span>
							</div>
						</div>
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									상영관 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									1관 </span>
							</div>
						</div>
						<div style="width: 100%; height: 20%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 25px;">
									인원 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									일반 1명, 청소년 1명 </span>
							</div>
						</div>
						<div style="width: 100%; height: 20%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 25px;">
									좌석 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									A1,A2 </span>
							</div>
						</div>
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									결제금액 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									16000 원 </span>
							</div>
						</div>
					</div>
				</div>

				<button class="movie_nextBtn">
					<img
						src="<%=request.getContextPath()%>/resources/images/nextBtn2.png"
						class="movie_nextImg"> <br>결제하기
				</button>
			</div>
		</section>
	</div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>
</html>