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

.pay_Info {
	border: 1px solid white;
	width: 800px;
	height: 600px;
	margin: auto;
	margin-top: 30px;
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
	margin-top: 40px;
	width: 300px;
	height: 50px;
	background: red;
	color: white;
	font-size: 20px;
	font-weight: bold;
	border: 1px solid black;
	border-radius: 10px;
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
					style="border-bottom: 1px solid white; color: white; padding-bottom: 10px; width: 100%; text-align: center">결제가
					완료 되었습니다.</h2>

				<div class="pay_Info">
					<div class="movie-img">
						<div style="width: 100%; height: 80%; padding: 5px;">
							<img src="<%=request.getContextPath()%>${ resInfo.movie.attachList[0].filePath }${ resInfo.movie.attachList[0].originFileName }" style="width: 100%; height: 100%;">
						</div>
						<div style="width: 100%; height: 20%;">
							<span
								style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px;">
								${ resInfo.movie.movieName }</span>
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
									KASS ${ resInfo.maName }</span>
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
									${ time }</span>
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
									${ resInfo.roomNumber }관</span>
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
									${ people }</span>
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
									${ placeValue }</span>
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
									${ price } 원 </span>
							</div>
						</div>
					</div>
				</div>

				<button class="movie_nextBtn" onclick="goMain();">메인으로</button>
			</div>
		</section>
	</div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
	
	<script>
		function goMain(){
			location.href="${ contextPath }";
		}
	</script>

</body>
</html>