<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />

<style>
header, nav, section, article, aside, footer {
	box-sizing: border-box;
	display: block;
}

body {
	width: 100%;
	background: black;
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

.content1 {
	width: 100%;
	height: 800px;
	padding-top: 55px;
}

.content2, .content1-1 {
	width: 100%;
	height: 700px;
	padding-left: 220px;
}

#causalImg {
	width: 500px !important;
	height: 600px !important;
	margin: auto;
	cursor: pointer;
}

.carousel {
	width: 100%;
}

/* 영역 나누기 */
#stay1 {
	width: 100%;
	background: black;
}

#stay2 {
	width: 100%;
	background: black;
}

#stay3 {
	width: 100%;
	background: white;
}

#stay4 {
	width: 100%;
	background: rgb(31, 69, 97);
}

#stay_footer {
	width: 100%;
	height: 150px;
	background: lightgray;
}

#wrap_stay {
	width: 1500px;
	margin: auto;
}
/* 영역 나누기 */
/* 영화 예매 사진 */
.title {
	color: white;
	font-weight: bold;
	margin-bottom: 30px;
	padding-top: 30px;
}

.movie {
	display: inline-block;
	margin: 50px 50px;
	margin-bottom: 50px;
	width: 250px;
	height: 380px;
}

.no-img {
	float: left;
	margin: 0px 0px 80px 70px;
	width: 280px;
	height: 520px;
	border: 1px solid silver;
	border-radius: 10px;
	overflow: hidden;
	position: relative;
}

.no-rank {
	position: absolute;
	top: 10px;
	left: 15px;
	color: white;
	font-size: 30px;
	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
	font-weight: bold;
	font-family: 'NanumBarunGothic', sans-serif;
}

.like {
	position: absolute;
	top: 10px;
	right: 15px;
	color: purple;
	font-size: 25px;
	text-shadow: -1px 0 white, 0 1px white, 1px 0 white, 0 -1px white;
	font-weight: bold;
	font-family: 'NanumBarunGothic', sans-serif;
	text-align: left;
}

.car-rank {
	position: absolute;
	top: 10px;
	left: 550px;
	color: white;
	font-size: 50px;
	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
	font-weight: bold;
	font-family: 'NanumBarunGothic', sans-serif;
}

.movie-list-info {
	width: 100%;
	height: 70%;
	cursor: pointer;
}

.movie-list-info img {
	width: 98%;
	height: 98%;
	margin-left: 1%;
	margin-top: 1%;
	border-radius: 10px;
}

.tit-area {
	width: 100%;
	height: 12%;
	padding-top: 10px;
	padding-left: 15px;
}

.movie-grade {
	float: left;
	padding-top: 1px;
	padding-left: 4px;
	border-radius: 100%;
	color: white;
	font-size: 15px;
	font-weight: bold;
	height: 27px;
	width: 27px;
}

.tit {
	float: left;
	font-size: 20px;
	font-weight: bold;
	margin-left: 5px;
	width: 220px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: white;
}

.rate-date {
	width: 100%;
	height: 8%;
}

.date {
	display: block;
	margin-top: 7px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	color: white;
}

.btn-util {
	width: 100%;
	height: 10%;
}

/* 상영중 */
.movie_statusY {
	float: left;
	margin-bottom: 5px;
	margin-left: 5px;
	padding-top: 7px;
	background: rgb(46, 204, 113);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
	border-radius: 10px;
	cursor: default;
}
/* 상영중 */
/* 개봉예정 */
.movie_statusW {
	float: left;
	margin-bottom: 5px;
	margin-left: 5px;
	padding-top: 7px;
	background: rgb(52, 152, 219);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
	border-radius: 10px;
	cursor: default;
}
/* 개봉예정 */
/* 상영종료 */
.movie_statusN {
	float: left;
	margin-bottom: 5px;
	margin-left: 5px;
	padding-top: 7px;
	background: rgb(231, 76, 60);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
	border-radius: 10px;
	cursor: default;
}
/* 상영종료 */
.resBtn {
	float: right;
	text-decoration: none;
	margin-bottom: 5px;
	margin-right: 5px;
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

/* 영화 예매 사진 */

/* 스낵 영역 */
.snackImg {
	width: 208px;
	height: 240px;
	display: block;
	margin: auto;
}

/* 내가 쓴 코드 */
.img2 {
	display: block;
	width: 100%;
	height: 100%;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	/* border: 1px solid aqua; */
}

.product {
	width: 230px;
	border-radius: 10px;
	display: block;
	height: 435px;
	margin-bottom: 40px;
	text-decoration: none;
	border: 1px solid #e4e4e4;
}

.snackImg {
	width: 208px;
	height: 240px;
	display: block;
	margin: auto;
}

.info .price .sale em {
	font-family: Roboto;
	font-size: 1.6em;
	font-weight: 400;
	vertical-align: middle;
}

.info {
	padding: 0 19px;
	border-top: 1px solid #e4e4e4;
	line-height: 1.3;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.name .bundle .original .sale {
	color: rgb(114, 114, 114);
	text-decoration: none;
}

.tit-txt {
	float: left;
	font-size: 20px;
	font-weight: bold;
	margin-left: 5px;
	width: 220px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	/* color: white; */
}


</style>
</head>
<body>
   <div id="stay1">
      <div id="wrap_stay">
		<jsp:include page="../views/common/black.jsp"/>
      </div>
   </div>
   <section id="content">
      <div id="stay2">
         <div id="wrap_stay">
            <div class="content1">
            <h1 class="title"># 인기 폭발 영화</h1>
               <div id="demo" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                  <c:if test="${ movieDateList[0] != null }">
                     <div class="carousel-item active" style="position : relative;">
                     	<div class="car-rank"><I>1위</I></div>
                        <img class="d-block w-100" src="${ contextPath }${ movieDateList[0].attachList[0].filePath }${ movieDateList[0].attachList[0].renameFileName }"
                           alt="First slide" id="causalImg">
                        <div class="carousel-caption d-none d-md-bl ock"></div>
                        <input type="hidden" value="${ movieDateList[0].movieNo }" id="pmovieNo"/>
                     </div>
                  </c:if>
                  <c:if test="${ movieDateList[1] != null }">
                     <div class="carousel-item" style="position : relative;">
                     	<div class="car-rank"><I>2위</I></div>
                        <img class="d-block w-100" src="${ contextPath }${ movieDateList[1].attachList[0].filePath }${ movieDateList[1].attachList[0].renameFileName }"
                           alt="Second slide" id="causalImg">
                        <input type="hidden" value="${ movieDateList[1].movieNo }" id="pmovieNo"/>
                     </div>
                  </c:if>
                  <c:if test="${ movieDateList[2] != null }">
                     <div class="carousel-item" style="position : relative;">
                     	<div class="car-rank"><I>3위</I></div>
                        <img class="d-block w-100" src="${ contextPath }${ movieDateList[2].attachList[0].filePath }${ movieDateList[2].attachList[0].renameFileName }"
                           alt="Third slide" id="causalImg">
                        <input type="hidden" value="${ movieDateList[2].movieNo }" id="pmovieNo"/>
                     </div>
                  </c:if>
                     <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <!-- <span>Previous</span> -->
                     </a> <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     </a>
                     <ul class="carousel-indicators">
                     <c:if test="${ movieDateList[0] != null }">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                     </c:if>
                     <c:if test="${ movieDateList[1] != null }">
                        <li data-target="#demo" data-slide-to="1"></li>
                     </c:if>
                     <c:if test="${ movieDateList[2] != null }">
                        <li data-target="#demo" data-slide-to="2"></li>
                     </c:if>
                     </ul>
                  </div>
               </div>
            </div>
					
            <div class="content2">
               <h1 class="title"># 관람평이 좋은 영화</h1>
               <c:if test="${ movieFavorList[0] != null }">
               <article class="no-img">
					<div class="no-rank"><I>1</I></div>
					<div class="like"><b>👍</b><span> ${ movieFavorList[0].score }%</span></div>
					<div class="movie-list-info">
						<img src="${ contextPath }${ movieFavorList[0].attachList[0].filePath }${ movieFavorList[0].attachList[0].renameFileName }">
						<input type="hidden" value="${ movieFavorList[0].movieNo }" id="movieNo"/>
					</div>
					<div class="tit-area">
						<p class="movie-grade">${ movieFavorList[0].movieAge }</p>
						<p class="tit">${ movieFavorList[0].movieName }</p>
					</div>
					<div class="rate-date">
						<span class="date"> 개봉일 : ${ movieFavorList[0].movieRdate } </span>
					</div>
					<div class="btn-util">
						<span class="movie_statusY">상영중</span> 
						<button class="resBtn">
                        <input type="hidden" value="${ movieFavorList[0].movieNo }" id="movieNum"/>예매하기</button>
					</div>
				</article>
				</c:if>
				<c:if test="${ movieFavorList[1] != null }">
               <article class="no-img">
					<div class="no-rank"><I>2</I></div>
					<div class="like"><b>👍</b><span> ${ movieFavorList[1].score }%</span></div>
					<div class="movie-list-info">
						<img src="${ contextPath }${ movieFavorList[1].attachList[0].filePath }${ movieFavorList[1].attachList[0].renameFileName }">
						<input type="hidden" value="${ movieFavorList[1].movieNo }" id="movieNo"/>
					</div>
					<div class="tit-area">
						<p class="movie-grade">${ movieFavorList[1].movieAge }</p>
						<p class="tit">${ movieFavorList[1].movieName }</p>
					</div>
					<div class="rate-date">
						<span class="date"> 개봉일 : ${ movieFavorList[1].movieRdate } </span>
					</div>
					<div class="btn-util">
						<span class="movie_statusY">상영중</span> 
						<button class="resBtn">
                        <input type="hidden" value="${ movieFavorList[1].movieNo }" id="movieNum"/>예매하기</button>
					</div>
				</article>
				</c:if>
				<c:if test="${ movieFavorList[2] != null }">
               <article class="no-img">
					<div class="no-rank"><I>3</I></div>
					<div class="like"><b>👍</b><span> ${ movieFavorList[2].score }%</span></div>
					<div class="movie-list-info">
						<img src="${ contextPath }${ movieFavorList[2].attachList[0].filePath }${ movieFavorList[2].attachList[0].renameFileName }">
						<input type="hidden" value="${ movieFavorList[2].movieNo }" id="movieNo"/>
					</div>
					<div class="tit-area">
						<p class="movie-grade">${ movieFavorList[2].movieAge }</p>
						<p class="tit">${ movieFavorList[2].movieName }</p>
					</div>
					<div class="rate-date">
						<span class="date"> 개봉일 : ${ movieFavorList[2].movieRdate } </span>
					</div>
					<div class="btn-util">
						<span class="movie_statusY">상영중</span> 
						<button class="resBtn">
                        <input type="hidden" value="${ movieFavorList[2].movieNo }" id="movieNum"/>예매하기</button>
					</div>
				</article>
				</c:if>
               
            </div>
         </div>
      </div>
      <div id="stay3">
         <div id="wrap_stay">
            <section class="content1-1">
               <h1 class="title" style="color: black;"># 스낵</h1>
               
               <article class="movie">
                  <a href="${ sdetail }" title="스낵" class="product">
						<div class="img">
							<img class="snackImg" src="${ contextPath }/${snackList[0].attachment.filePath}/${ snackList[0].attachment.renameFileName }" class="img img2">
							<input type="hidden" value="${ snackList[0].snackNo }" id="snackNo"/>
						</div>
						<div class="info">
							<div class="tit-txt">
								<p class="name">${ snackList[0].snackName }</p>
								<p class="bundle"><%-- ${ snackList[0].snackMemo } --%><br></p>
							</div>
							<div class="price">
								<p class="original">${ snackList[0].snackMemo }</p>
								<p class="sale">
									<em>${ snackList[0].snackPrice }</em> <span>원</span>
								</p>
							</div>
						</div> 
					</a>
               </article>
               
               <article class="movie">
                  <a href="${ sdetail }" title="스낵" class="product">
						<div class="img">
							<img class="snackImg" src="${ contextPath }/${snackList[1].attachment.filePath}/${ snackList[1].attachment.renameFileName }" class="img img2">
							<input type="hidden" value="${ snackList[1].snackNo }" id="snackNo"/>
						</div>
						<div class="info">
							<div class="tit-txt">
								<p class="name">${ snackList[1].snackName }</p>
								<p class="bundle"><%-- ${ snackList[1].snackMemo } --%><br></p>
							</div>
							<div class="price">
								<p class="original">${ snackList[1].snackMemo }</p>
								<p class="sale">
									<em>${ snackList[1].snackPrice }</em> <span>원</span>
								</p>
							</div>
						</div>
					</a>
               </article>
               
               <article class="movie">
                  <a href="${ sdetail }" title="스낵" class="product">
						<div class="img">
							<img class="snackImg" src="${ contextPath }/${snackList[2].attachment.filePath}/${ snackList[2].attachment.renameFileName }" class="img img2">
							<input type="hidden" value="${ snackList[2].snackNo }" id="snackNo"/>
						</div>
						<div class="info">
							<div class="tit-txt">
								<p class="name">${ snackList[2].snackName }</p>
								<p class="bundle"><%-- ${ snackList[2].snackMemo } --%><br></p>
							</div>
							<div class="price">
								<p class="original">${ snackList[2].snackMemo }</p>
								<p class="sale">
									<em>${ snackList[2].snackPrice }</em> <span>원</span>
								</p>
							</div>
						</div>
					</a>
               </article>
               
            </section>
         </div>
      </div>
      <div id="stay4">
         <div id="wrap_stay">
            <section class="content1-1">
               <h1 class="title"># VOD</h1>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/aladin.jpeg" class="poster">
                        <p>알라딘</p>
                     </div>
                  </a>
               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/spirit.jpg" class="poster">
                        <p>미녀와 야수</p>
                     </div>
                  </a>
               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/begina.jpeg" class="poster">
                        <p>비긴어게인</p>
                     </div>
                  </a>
               </article>
            </section>
         </div>
      </div>
   </section>
   <div id="stay_footer">
      <div id="wrap_stay">
         <jsp:include page="../views/common/footer.jsp"/>
      </div>
   </div>
   
   <script>
   
   movie_check();
   
   function movie_check() {
		var grade_check = $('.content2').children('.no-img').children('.tit-area').children('.movie-grade');
		var titleSize = $('.no-img').length;

		for (var i = 0; i < titleSize; i++) {
			if (grade_check.eq(i).text() == '19') {
				grade_check.eq(i).css('background', 'red');
			} else if (grade_check.eq(i).text() == '15') {
				grade_check.eq(i).css('background', 'orange');
			} else if (grade_check.eq(i).text() == '12') {
				grade_check.eq(i).css('background', 'skyblue');
			} else if (grade_check.eq(i).text() == '0') {
				grade_check.eq(i).text("All");
               grade_check.eq(i).css('background', 'green');
			}
		}
	}
   
   $(".movie-list-info").on('click',function(){
		var movieNo = $(this).children('#movieNo').val();
		location.href="movieInfo.do?movieNo="+movieNo;
	});
   
   $(".carousel-item").on('click',function(){
		var movieNo = $(this).children('#pmovieNo').val();
		location.href="movieInfo.do?movieNo="+movieNo;
	});
   
   $('.resBtn').click(function(){
		var movieNum = $(this).children("#movieNum").val();
		location.href="resList.do?movieNum="+movieNum;
	});
   
   $(".img").on('click',function(){
		var snackNo = $(this).children('#snackNo').val();
		location.href="sdatil.do?snackNo="+snackNo;
	});
   </script>
</body>
</html>