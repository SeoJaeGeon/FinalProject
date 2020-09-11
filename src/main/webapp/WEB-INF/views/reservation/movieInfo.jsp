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
	background : white;
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
	height : 800px;
}

.movie-steelImg {
	width: 100%;
	height: 600px;
}

.movie-review {
	width: 100%;
	max-height: 800px;
	margin-bottom : 20px;
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

.rView1 {
width : 30%;
height : 100%;
float : left;
}

.rView2 {
width : 50%;
height : 100%;
padding-top : 50px;
padding-left : 5px;
float : left;
overflow: hidden;
}

.rView3 {
width : 20%;
height : 100%;
text-align:center;
float : left;
padding-top : 50px;
}

.rView1-top{
	width : 100%;
	height : 70%;
}

.rView1-top > img {
	width: 150px;
	height: 150px;
	margin-left : 35px;
	border-radius: 150px;
}

.rView1-bottom{
	width : 100%;
	height : 30%;
	text-align : center;
}

.none-Review{
	width : 100%;
	height : 300px;
	padding-top : 100px;
	text-align : center;
}


/* 페이징 바 */
.pagination {
    /* border: 1px solid rgb(16, 157, 182); */
    display : block;
    width: 200px;
    height: 40px;
    margin : 0 auto;
    text-align : center;
    padding-top : 4px;
}

.pageOne {
    border: 1px solid rgb(224, 224, 224);
    text-decoration: none;
    text-align: center;
    width: 30px;
    height: 30px;
    padding-top: 1px;
    padding-left: 3px;
    padding-right: 3px;
    border-radius: 5px;
    color: rgb(51, 51, 51);
}

.pageOne:hover {
    border: 1px solid rgb(151, 151, 151);
    color: rgb(51, 51, 51);
    text-decoration: none;
}

.pageNone {
    border: 1px solid rgb(224, 224, 224);
    background: rgb(241, 241, 241);
    text-decoration: none;
    text-align: center;
    width: 30px;
    height: 30px;
    padding-top: 1px;
    padding-left: 3px;
    padding-right: 3px;
    border-radius: 5px;
    color: rgb(51, 51, 51);
}
/* 페이징 바 */
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
					<br clear="left">
					<c:choose>
						<c:when test="${ movInfo[0].movieRstatus == 'Y' && movieStatus == false }">
							<span class="movie_statusY">상영중</span>
						</c:when>
						<c:when test="${ movInfo[0].movieRstatus == 'Y' && movieStatus == true }">
							<span class="movie_statusW">개봉예정</span>
						</c:when>
						<c:otherwise>
							<span class="movie_statusN">상영종료</span>
						</c:otherwise>
					</c:choose>
					<br><br><br>
					<span class="like-view" style="color: black; margin-right: 100px;">
						<img src="<%=request.getContextPath()%>/resources/images/good.png" style="width:30px; height:30px;"><b> : ${ reviewUp }</b>
					</span> 
					<span class="like-view" style="color: black">
						<img src="<%=request.getContextPath()%>/resources/images/bad.png" style="width:30px; height:30px;"><b> : ${ reviewDown }</b>
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
					</span><br>
					<c:choose>
						<c:when test="${ movInfo[0].movieRstatus == 'Y' }">
							<a class="resBtn" href="resList.do">예매하기</a>
						</c:when>
					</c:choose>

				</div>
			</div>

			<h3 style="margin-top: 25px; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">줄거리</h3>
			<div class="movie-story">
				${ movInfo[0].movieContent }
			</div>

			<h3
				style="margin-top: 25px;; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">예고편</h3>
			<div class="movie-preview">
				${ movInfo[0].movieLink }
			</div>

			<h3 style="margin-top: 25px; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px">스틸컷</h3>
			<div class="movie-steelImg">
				<div id="demo" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="<%=request.getContextPath()%>${ movInfo[0].attachList[1].filePath }${ movInfo[0].attachList[1].renameFileName }"
								alt="First slide" id="img1">
							<div class="carousel-caption d-none d-md-bl ock"></div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="<%=request.getContextPath()%>${ movInfo[0].attachList[2].filePath }${ movInfo[0].attachList[2].renameFileName }"
								alt="Second slide" id="img2">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="<%=request.getContextPath()%>${ movInfo[0].attachList[3].filePath }${ movInfo[0].attachList[3].renameFileName }"
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

			<h3 style="margin-top: 25px; width: 100%; border-bottom: 2px solid black; padding-bottom: 15px;">감상평</h3>
			<c:choose>
			<c:when test="${ reviewList.size() > 0 }">
			<div class="movie-review">
				<ul class="review-sort">
				<c:forEach var="r" items="${reviewList}">
					<li>
						<div class="rView1">
						<div class="rView1-top">
							<img src="<%=request.getContextPath()%>${r.filePath}${r.renameFileName}">
						</div>
						<div class="rView1-bottom">
							<strong>${r.reWriter}</strong>					
						</div>
						</div>
						<div class="rView2">
							<span>
								${r.reContent}
							</span>
						</div>
						<div class="rView3">
						<c:if test="${ r.reScore == 'B' }">
							<img src="<%=request.getContextPath()%>/resources/images/bad.png" style="width:50px; height:50px;">
						</c:if>
						<c:if test="${ r.reScore == 'G' }">
							<img src="<%=request.getContextPath()%>/resources/images/good.png" style="width:50px; height:50px;">
						</c:if>
						</div>
					</li>
				</c:forEach> 
				</ul>
				
				<c:choose>
				<c:when test="${ reviewList.size() >= 6}">
				<div class="pagination">
					<c:if test="${ pi.currentPage <= 1 }">
						
					</c:if>
					<c:if test="${ pi.currentPage > 1 }">
						<c:url var="before" value="movieInfo.do">
							<c:param name="page" value="${ pi.currentPage - 1 }"/>
							<c:param name="movieNo" value="${ movInfo[0].movieNo }"/>
						</c:url>
						<button onclick="location.href='${ before }'" class="pageOne" type="button">&lt;</button>
					</c:if>
					<!-- 페이지 숫자 -->
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:if test="${ p eq pi.currentPage }">
							<button class="pageNone">${ p }</button>
						</c:if>
						<c:if test="${ p ne pi.currentPage }">
							<c:url var="pagination" value="movieInfo.do">
								<c:param name="page" value="${ p }" />
								<c:param name="movieNo" value="${ movInfo[0].movieNo }"/>
							</c:url>
							<button onclick="location.href='${ pagination }'" class="pageOne">${ p }</button>
						</c:if>
					</c:forEach>
					<c:if test="${ pi.currentPage >= pi.maxPage }">
						
					</c:if>
					<c:if test="${ pi.currentPage < pi.maxPage }">
						<c:url var="after" value="movieInfo.do">
							<c:param name="page" value="${ pi.currentPage + 1 }"/>
							<c:param name="movieNo" value="${ movInfo[0].movieNo }"/>
						</c:url>
						<button onclick="location.href='${ after }'" class="pageOne">&gt;</button>
					</c:if>
                 </div>
                 </c:when>
				</c:choose>
			</div>
				</c:when>
				
				<c:otherwise>
				<div class="none-Review">
					<h1>현재 등록된 리뷰가 없습니다.</h1>
				</div>
				</c:otherwise>
			</c:choose>

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