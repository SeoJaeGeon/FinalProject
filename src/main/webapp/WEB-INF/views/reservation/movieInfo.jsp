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
/* 내가 작성한 코드 */
.movie-introduce {
	width: 100%;
	height: 500px;
}

.movie-story {
	width: 100%;
	min-height: 100px;
	padding: 15px;
	text-align: left;
	font-size: 18px;
}

.movie-preview {
	width: 100%;
	min-height: 400px;
}

.movie-preview iframe {
	width: 100%;
}

.movie-steelImg {
	width: 100%;
	height: 600px;
}

.movie-review {
	width: 100%;
	height: 800px;
}

.movie-in1 {
	float: left;
	width: 25%;
	height: 100%;
}

.movie-in1 > img{
	width : 100%;
	height : 100%;
}

.movie-in2 {
	float: left;
	padding: 10px;
	width: 75%;
	height: 40%;
}

.movie-in3 {
	float: left;
	padding: 20px;
	width: 75%;
	height: 60%;
}

/* 상영중 */
.movie_statusY {
	float: left;
	margin-top: 10px;
	padding-top: 7px;
	background: rgb(46, 204, 113);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
}

/* 상영중 */
/* 개봉예정 */
.movie_statusW {
	float: left;
	margin-top: 10px;
	padding-top: 7px;
	background: rgb(52, 152, 219);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
}

/* 개봉예정 */
/* 상영종료 */
.movie_statusN {
	float: left;
	margin-top: 10px;
	padding-top: 7px;
	background: rgb(231, 76, 60);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
}
/* 상영종료 */
.like-view {
	padding-top: 5px;
	font-size: 20px;
	width: 200px;
	height: 50px;
}

.movie-grade {
	float: left;
	padding: 5px;
	border-radius: 100%;
	color: white;
	font-size: 15px;
	font-weight: bold;
	margin-right: 10px;
}

.intro-text {
	font-size: 17px;
	width: 700px;
	height: 30px;
	margin-top: 50px;
}

.resBtn {
	float: left;
	text-decoration: none;
	margin-top: 10px;
	margin-left: 100px;
	padding-top: 7px;
	color: white;
	background: rgb(231, 76, 60);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
	border-radius: 100px;
}

.resBtn:hover {
	text-decoration: none;
	color: white;
}

.resBtn:focus {
	outline: none;
}

#img1, #img2, #img3 {
	width: 1300px !important;
	height: 600px !important;
	margin: auto;
}

.carousel {
	width: 100%;
}

.review-sort {
	width: 100%;
	height: 90%;
	list-style: none;
	overflow: hidden;
	padding: 0px;
	margin: 0px;
}

.review-sort li {
	border: 1px solid silver;
	float: left;
	margin: 0px;
	padding: 0px;
	width: 50%;
	height: 33.33%;
}

.review-sort li div {
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.review-sort li div img {
	width: 100px;
	height: 100px;
	border-radius: 100%;
	border: 1px solid silver;
	margin-top: 20px;
	margin-left: 20px;
}

.pagingbar {
	width: 250px;
	margin: auto;
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
/* 내가 작성한 코드*/
</style>
</head>

<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />
		<section class="content">
			<h2
				style="margin-top: 25px;; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">영화
				상세페이지</h2>
			<div class="movie-introduce">
				<div class="movie-in1">
					<img src="<%=request.getContextPath()%>${ movInfo[0].attachList[0].filePath }${ movInfo[0].attachList[0].originFileName }">
				</div>
				<div class="movie-in2">
					<p class="movie-grade">${ movInfo[0].movieAge }</p>
					<h3>${ movInfo[0].movieName }</h3>
					<br clear="left"> <span class="movie_statusY">상영중</span>
					<br><br><br>
					<span class="like-view" style="color: blue; margin-right: 100px;">
						<strong>재밌어요 : </strong><b>0</b>
					</span> 
					<span class="like-view" style="color: red">
						<strong>별로에요 : </strong><b>0</b>
					</span>
				</div>
				<div class="movie-in3">
					<span class="intro-text"> <strong>감독 : </strong><b>${ movInfo[0].movieForeman }</b> /
						<strong>프로듀서 : </strong><b>${ movInfo[0].movieProducer }</b> / <strong>배우 : </strong><b>${ movInfo[0].movieActor }</b>
					</span><br> <br> <span class="intro-text"> <strong>장르
							: </strong><b>${ movInfo[0].genreName }</b>
					</span><br> <br> <span class="intro-text"> <strong>상영시간
							: </strong><b>${ movInfo[0].movieStime }</b>
					</span><br> <br> <span class="intro-text"> <strong>제작
							국가 : </strong><b>${ movInfo[0].movieCountry }</b>
					</span><br> <br> <span class="intro-text"> <strong>개봉일
							: </strong><b>${ movInfo[0].movieRdate }</b>
					</span><br> <a class="resBtn" href="#">예매하기</a>

				</div>
			</div>

			<h3
				style="margin-top: 25px;; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">줄거리</h3>
			<div class="movie-story">
				${ movInfo[0].movieContent }
			</div>

			<h3
				style="margin-top: 25px;; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">예고편</h3>
			<div class="movie-preview">
				${ movInfo[0].movieLink }
			</div>

			<h3
				style="margin-top: 25px;; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">스틸컷</h3>
			<div class="movie-steelImg">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="<%=request.getContextPath()%>${ movInfo[0].attachList[1].filePath }${ movInfo[0].attachList[1].originFileName }"
								alt="First slide" id="img1">
							<div class="carousel-caption d-none d-md-bl ock"></div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="<%=request.getContextPath()%>${ movInfo[0].attachList[2].filePath }${ movInfo[0].attachList[2].originFileName }"
								alt="Second slide" id="img2">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="<%=request.getContextPath()%>${ movInfo[0].attachList[3].filePath }${ movInfo[0].attachList[3].originFileName }"
								alt="Third slide" id="img3">
						</div>
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						</a> <a class="carousel-control-next" href="#demo" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
						</a>
						<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<li data-target="#demo" data-slide-to="1"></li>
							<li data-target="#demo" data-slide-to="2"></li>
						</ul>
					</div>
				</div>
			</div>

			<h3
				style="margin-top: 25px;; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">감상평</h3>
			<div class="movie-review">
				<ul class="review-sort">
					<li>
						<div style="overflow: auto;">
							<img src="image/myimage.png" style="float: left;"> <strong
								style="float: left; margin-top: 20px; margin-left: 15px;">wjdgus0825</strong>
							<span class="like-view"
								style="color: blue; margin-top: 20px; float: right;">별로에요</span><br>
							<br> <span
								style="margin-top: 20px; margin-left: 15px; float: left;">
								그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br>
								노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br>
								dddddd<br> bbbbb
							</span>
						</div>
					</li>
					<li>
						<div style="overflow: auto;">
							<img src="image/myimage.png" style="float: left;"> <strong
								style="float: left; margin-top: 20px; margin-left: 15px;">wjdgus0825</strong>
							<span class="like-view"
								style="color: red; margin-top: 20px; float: right;">재밌어요</span><br>
							<br> <span
								style="margin-top: 20px; margin-left: 15px; float: left;">
								허니잼 꿀잼 개꿀잼<br> 졸잼개잼굳잼<br>
							</span>
						</div>
					</li>
					<li>
						<div style="overflow: auto;">
							<img src="image/myimage.png" style="float: left;"> <strong
								style="float: left; margin-top: 20px; margin-left: 15px;">wjdgus0825</strong>
							<span class="like-view"
								style="color: red; margin-top: 20px; float: right;">재밌어요</span><br>
							<br> <span
								style="margin-top: 20px; margin-left: 15px; float: left;">
								허니잼 꿀잼 개꿀잼<br> 졸잼개잼굳잼<br>
							</span>
						</div style="overflow: auto;">
					</li>
					<li>
						<div style="overflow: auto;">
							<img src="image/myimage.png" style="float: left;"> <strong
								style="float: left; margin-top: 20px; margin-left: 15px;">wjdgus0825</strong>
							<span class="like-view"
								style="color: blue; margin-top: 20px; float: right;">별로에요</span><br>
							<br> <span
								style="margin-top: 20px; margin-left: 15px; float: left;">
								그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br>
								노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br>
							</span>
						</div>
					</li>
					<li>
						<div style="overflow: auto;">
							<img src="image/myimage.png" style="float: left;"> <strong
								style="float: left; margin-top: 20px; margin-left: 15px;">wjdgus0825</strong>
							<span class="like-view"
								style="color: red; margin-top: 20px; float: right;">재밌어요</span><br>
							<br> <span
								style="margin-top: 20px; margin-left: 15px; float: left;">
								허니잼 꿀잼 개꿀잼<br> 졸잼개잼굳잼<br>
							</span>
						</div>
					</li>
					<li>
						<div style="overflow: auto;">
							<img src="image/myimage.png" style="float: left;"> <strong
								style="float: left; margin-top: 20px; margin-left: 15px;">wjdgus0825</strong>
							<span class="like-view"
								style="color: blue; margin-top: 20px; float: right;">별로에요</span><br>
							<br> <span
								style="margin-top: 20px; margin-left: 15px; float: left;">
								그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br>
								노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br>
							</span>
						</div>
					</li>
					<li>
						<div style="overflow: auto;">
							<img src="image/myimage.png" style="float: left;"> <strong
								style="float: left; margin-top: 20px; margin-left: 15px;">wjdgus0825</strong>
							<span class="like-view"
								style="color: blue; margin-top: 20px; float: right;">별로에요</span><br>
							<br> <span
								style="margin-top: 20px; margin-left: 15px; float: left;">
								그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br>
								노잼노잼노잼<br> 그냥 개노잼이고 개연성이 없어요<br> 노잼노잼노잼<br>
							</span>
						</div>
					</li>
				</ul>
				<div class="pagingbar">
					<nav aria-label="Page navigation example" class="text">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
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
		movie_check();

		function movie_check() {
			var grade_check = $('.movie-in2').children('.movie-grade');

			console.log(grade_check.text());

			if (grade_check.text() == '19') {
				grade_check.css('background', 'red');
			} else if (grade_check.text() == '15') {
				grade_check.css('background', 'orange');
			} else if (grade_check.text() == '12') {
				grade_check.css('background', 'skyblue');
			} else if (grade_check.text() == '0') {
				grade_check.text("All");
                grade_check.css('background', 'green');
			}
		}
	</script>
</body>

</body>
</html>