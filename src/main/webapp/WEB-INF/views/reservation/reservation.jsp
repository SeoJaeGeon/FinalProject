<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KASS CINEMA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
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
	border: 1px solid black;
	padding: 10px;
	background: black;
}

.movie_content {
	width: 100%;
	height: 100%;
	border: 1px solid red;
	background: rgb(234, 227, 227);
}

.movie_station {
	margin: auto;
	margin-top: 150px;
	width: 1200px;
	height: 800px;
	background: white;
	border-top: 1px solid black;
	border-bottom: 1px solid black;
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

.movie_select {
	float: left;
	width: 30%;
	height: 800px;
	border: 1px solid black;
	box-sizing: border-box;
	overflow: auto;
}

.movie_place {
	float: left;
	width: 20%;
	height: 800px;
	border: 1px solid black;
	box-sizing: border-box;
}

.movie_day {
	float: left;
	width: 10%;
	height: 800px;
	border: 1px solid black;
	box-sizing: border-box;
}

.movie_time {
	float: left;
	width: 40%;
	height: 800px;
	border: 1px solid black;
	box-sizing: border-box;
}

/* 결제 */
.movie_info {
	margin: auto;
	border: 1px solid gray;
	background: rgb(64, 64, 64);
	color: white;
	font-size: 18px;
	width: 1200px;
	height: 300px;
}

.movie_sale1, .movie_sale2, .movie_sale3, .movie_sale4, .movie_sale5 {
	float: left;
	border: 1px solid gray;
	width: 20%;
	height: 100%;
	box-sizing: border-box;
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
}

.movie_nextImg {
	margin: auto;
	margin-bottom: 5px;
	width: 80px;
	height: 80px;
}

/* 결제 */
/* 영화 선택 */
.movie_ul {
	box-sizing: border-box;
	width: 100%;
	height: 100%;
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.movie_list, .movie_area_list, 
.movie_place_list, .movie_time_list {
	width: 100%;
	min-height: 28px;
	margin-bottom: 5px;
}

.movie_title {
	background: none;
	border: none;
	margin-bottom: 4px;
	width: 100%;
	text-align: left;
}

.movie_old {
	padding: 5px;
	border: 1px solid red;
	background: red;
	border-radius: 100%;
	color: white;
	font-size: 15px;
	font-weight: bold;
}

.movie_name, .movie_area {
	font-size: 20px;
	font-weight: bold;
	margin-left: 5px;
}

.select_menubar {
	display: block;
	margin: auto;
	margin-top: 90px;
	width: 1200px;
}

.select1 {
	float: left;
	width: 30%;
	height: 50px;
}

.select2 {
	float: left;
	width: 20%;
	height: 50px;
}

.select3 {
	float: left;
	width: 10%;
	height: 50px;
}

.select4 {
	float: left;
	width: 40%;
	height: 50px;
}

.div_50p {
	float: left;
	box-sizing: border-box;
	width: 50%;
	height: 100%;
	border: 1px solid black;
}

.movie_play {
	width: 100%;
	height: 100px;
	padding: 0px;
	border: 1px solid black;
	background: white;
}

.time {
	width: 20%;
	height: 100%;
	float: left;
	padding-top: 12px;
	border: 1px solid red;
}

.title {
	width: 60%;
	height: 100%;
	float: left;
	padding-top: 12px;
	border: 1px solid green;
}

.info {
	width: 20%;
	height: 100%;
	float: left;
	border: 1px solid orange;
}
/* 영화 선택 */

/* 내가 쓴 코드 */
</style>
</head>
<body>
	<jsp:include page="../common/white.jsp" />

	<section id="content">
		<div class="content1">
			<div class="movie_content">
				<div class="select_menubar">
					<div class="movie_text select1">영화</div>
					<div class="movie_text select2">지점</div>
					<div class="movie_text select3">날짜</div>
					<div class="movie_text select4">시간</div>
				</div>
				<div class="movie_station">
					<div class="movie_select">
						<ul class="movie_ul">
							<li class="movie_list">
								<button class="movie_title" type="button">
									<span class="movie_old">19</span> <span class="movie_name">존윅</span>
								</button>
							</li>
							<li class="movie_list">
								<button class="movie_title" type="button">
									<span class="movie_old">15</span> <span class="movie_name">어벤져스4: 엔드게임</span>
								</button>
							</li>
							<li class="movie_list">
								<button class="movie_title" type="button">
									<span class="movie_old">12</span> <span class="movie_name">라라랜드</span>
								</button>
							</li>
							<li class="movie_list">
								<button class="movie_title" type="button">
									<span class="movie_old">All</span> <span class="movie_name">미녀와 야수</span>
								</button>
							</li>
						</ul>
					</div>

					<div class="movie_place">
						<div class="div_50p">
							<ul class="movie_ul">
								<li class="movie_area_list">
									<button style="border: none; background: none; width:100%; text-align:left;">
										<span class="movie_area">서울</span>
									</button>
								</li>
							</ul>
						</div>
						<div class="div_50p">
							<ul class="movie_ul">
								<li class="movie_place_list">
									<button style="border: none; background: none; width:100%; text-align:left;">
										<span class="movie_area">건대</span>
									</button>
								</li>
								<li class="movie_place_list">
									<button style="border: none; background: none; width:100%; text-align:left;">
										<span class="movie_area">상봉</span>
									</button>
								</li>
								<li class="movie_place_list">
									<button style="border: none; background: none; width:100%; text-align:left;">
										<span class="movie_area">강남</span>
									</button>
								</li>
								<li class="movie_place_list">
									<button style="border: none; background: none; width:100%; text-align:left;">
										<span class="movie_area">청량리</span>
									</button>
								</li>
								<li class="movie_place_list">
									<button style="border: none; background: none; width:100%; text-align:left;">
										<span class="movie_area">명동</span>
									</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="movie_day"></div>
					<div class="movie_time">
						<ul class="movie_ul">
							<li class="movie_time_list">
								<button class="movie_play">
									<span class="time" align="center"> <strong
										style="font-size: 23px">13:00</strong> <em
										style="font-size: 18px; font-style: inherit;">~14:55</em>
									</span> <span class="title" align="center"> <strong
										style="font-size: 20px">다만 악에서 구하소서</strong>
									</span>
									<div class="info" align="right">
										<span>건대 <br> 1관
										</span><br> <span> <strong style="color: skyblue">108</strong>
											/ <em style="font-style: inherit">108</em>
										</span>
									</div>
								</button>
							</li>
						</ul>
					</div>
				</div>
				<div class="movie_info">
					<div class="movie_sale1">
						<img
							src="<%=request.getContextPath()%>/resources/images/devil.jpg"
							width="60%" height="70%"
							style="display: block; margin: auto; margin-top: 10px;"> <a
							style="display: block; text-align: center; margin-top: 10px;">
							다만 악에서 구하소서 </a>
					</div>
					<div class="movie_sale2">
						<div style="width: 100%; height: 20%;">
							<span style="width: 25%; height: 100%; float: left;">극장</span> <span
								style="width: 75%; height: 100%; display: inline-block;">건대</span>
						</div>
						<div style="width: 100%; height: 20%;">
							<span style="width: 25%; height: 100%; float: left;">일시</span> <span
								style="width: 75%; height: 100%; display: inline-block;">2020.08.17(월)</span>
						</div>
						<div style="width: 100%; height: 20%;">
							<span style="width: 25%; height: 100%; float: left;">상영관</span> <span
								style="width: 75%; height: 100%; display: inline-block;">1관</span>
						</div>
						<div style="width: 100%; height: 20%;">
							<span style="width: 25%; height: 100%; float: left;">인원</span> <span
								style="width: 75%; height: 100%; display: inline-block;">일반
								2명, 청소년 2명</span>
						</div>
					</div>
					<div class="movie_sale3">
						<div style="width: 100%; height: 20%;">
							<span style="width: 35%; height: 100%; float: left;">좌석명</span> <span
								style="width: 65%; height: 100%; display: inline-block;">일반석</span>
						</div>
						<div style="width: 100%; height: 20%;">
							<span style="width: 35%; height: 100%; float: left;">좌석번호</span>
							<span style="width: 65%; height: 100%; display: inline-block;">F7,
								F8</span>
						</div>
					</div>
					<div class="movie_sale4">
						<div style="width: 100%; height: 20%;">
							<span style="width: 35%; height: 100%; float: left;">일반</span> <span
								style="text-align: right; width: 65%; height: 100%; display: inline-block;">1,1000
								원 X 2</span>
						</div>
						<div style="width: 100%; height: 20%;">
							<span style="width: 35%; height: 100%; float: left;">청소년</span> <span
								style="text-align: right; width: 65%; height: 100%; display: inline-block;">9,000
								원 X 2</span>
						</div>
						<div style="width: 100%; height: 20%;">
							<span style="width: 35%; height: 100%; float: left;">총 금액</span>
							<span
								style="text-align: right; width: 65%; height: 100%; display: inline-block; color: red; font-weight: bold;">40,000원</span>
						</div>
					</div>
					<div class="movie_sale5">
						<button class="movie_nextBtn">
							<img
								src="<%=request.getContextPath()%>/resources/images/nextBtn2.png"
								class="movie_nextImg"> <br>다음으로
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../common/footer.jsp" />
	
	<script>
        $(".movie_list").click(function () {
            var list = $(this);
            var child = list.children('.movie_title');
            var child2 = child.children('.movie_old');
            var child3 = child.children('.movie_name');
            
            console.log(child2.text() + child3.text());
        })
        
        $(".movie_area_list").click(function () {
            var list = $(this);
            var child1 = list.children('button');
            var child2 = child1.children('.movie_area');
            
            console.log(child2.text());
        })
        
        $(".movie_place_list").click(function () {
            var list = $(this);
            var child1 = list.children('button');
            var child2 = child1.children('.movie_area');
            
            console.log(child2.text());
        })
    </script>
</body>
</html>