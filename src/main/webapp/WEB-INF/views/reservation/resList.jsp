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
	height: 1000px;
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
	height: 500px;
	background: white;
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
	height: 500px;
	border: 1px solid black;
	box-sizing: border-box;
	overflow: auto;
}

.movie_place {
	float: left;
	width: 20%;
	height: 500px;
	border: 1px solid black;
	box-sizing: border-box;
	overflow: auto;
}

.movie_day {
	float: left;
	width: 10%;
	height: 500px;
	border: 1px solid green;
	box-sizing: border-box;
	overflow: auto;
}

.movie_time {
	float: left;
	width: 40%;
	height: 500px;
	border: 1px solid black;
	box-sizing: border-box;
	overflow: auto;
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
}

.movie_sale2 div, .movie_sale3 div, .movie_sale4 div {
	padding: 5px;
	box-sizing: border-box;
}

.movie_nextBtn {
	display: block;
	margin: auto;
	margin-top: 20px;
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
/* 영화 선택 */
.movie_ul, .movie_DateUl {
	box-sizing: border-box;
	width: 100%;
	height: 100%;
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.movie_list, .movie_area_list, .movie_place_list, .movie_time_list,
	.movie_day_list, .movie_month_list {
	box-sizing: border-box;
	width: 100%;
	min-height: 28px;
	margin-bottom: 5px;
}

.movie_month_list>span:first-child {
	display: block;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
}

.movie_month_list>span:last-child {
	display: block;
	font-size: 40px;
	font-weight: bold;
	text-align: center;
}

.movie_day_list>button {
	border: none;
	background: none;
	width: 100%;
	height: 30px;
}

.movie_day_list>button>span:first-child {
	font-size: 20px;
	font-weight: bold;
	margin-right: 10px;
}

.movie_day_list>button>span:last-child {
	font-size: 20px;
	font-weight: bold;
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
	border: 1px solid gray;
}

.movie_play {
	width: 100%;
	height: 100px;
	padding: 0px;
	margin: 0px;
	background: none;
	box-sizing: border-box;
}

.time {
	width: 20%;
	height: 100%;
	float: left;
	padding-top: 12px;
}

.title {
	width: 60%;
	height: 100%;
	float: left;
	padding-top: 12px;
}

.info {
	width: 20%;
	height: 100%;
	float: left;
}

.changeSelect {
	background: silver;
}

.movie_content button:focus {
	outline: none;
}

/* 영화 선택 */
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

#movie_poster{
	float : left;
	width : 100%;
	heigth : 70%;
}

.posterImg{
	display : block;
	margin: auto;
}

#movie_title{
	float : left;
	width : 100%;
	heigth : 30%;
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
					<div class="select_menubar">
						<div class="movie_text select1">영화</div>
						<div class="movie_text select2">지점</div>
						<div class="movie_text select3">날짜</div>
						<div class="movie_text select4">시간</div>
					</div>
					<div class="movie_station">
						<div class="movie_select">
							<ul class="movie_ul movie_list_ul">
							<c:forEach var="mov" items="${ movList }">
								<li class="movie_list">
									<button class="movie_title" type="button">
										<span class="movie_old">${ mov.movieAge }</span>
										<span class="movie_name">${ mov.movieName }</span>
										<input type="hidden" value="${ mov.movieNo }" id="movieNo"/>
										<input type="hidden" value="${ mov.attachList[0].filePath }${ mov.attachList[0].originFileName }" id="movPoster"/>
									</button>
								</li>
							</c:forEach>
							</ul>
						</div>

						<div class="movie_place">
							<div class="div_50p">
								<ul class="movie_ul moc_list_ul">
								<c:forEach var="oc" items="${ ocList }">
									<li class="movie_area_list">
										<button
											style="border: none; background: none; width: 100%; text-align: left;">
											<span class="movie_area">${ oc.mocName }</span>
											<input value="${ oc.mocNo }" type="hidden" id="mocNo">
										</button>
									</li>
								</c:forEach>
								</ul>
							</div>
							<div class="div_50p">
								<ul class="movie_ul mop_list_ul">
								
								</ul>
							</div>
						</div>
						<div class="movie_day">
							<ul class="movie_DateUl">

							</ul>
						</div>
						<div class="movie_time">
							<ul class="movie_ul watchingMovie">
							
							</ul>
						</div>
					</div>
					<div class="movie_info">
						<div class="movie_sale1">
							<div id="movie_poster">
							
							</div>
							<div id="movie_title">
                            	<span style="display: block; text-align: center; margin-top: 10px;"></span>
							</div>
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
								<span style="width: 65%; height: 100%; display: inline-block;"></span>
							</div>
							<div style="width: 100%; height: 20%;">
								<span style="width: 35%; height: 100%; float: left;">좌석번호</span>
								<span style="width: 65%; height: 100%; display: inline-block;"></span>
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
						<c:choose>
						<c:when test="${ loginUser != null }">
							<button class="movie_nextBtn" onclick="nextBtn();">
								<img
									src="<%=request.getContextPath()%>/resources/images/nextBtn2.png"
									class="movie_nextImg"> <br>자리선택
							</button>
						</c:when>
						<c:otherwise>
							<button class="movie_nextBtn" onclick="login();">
								<img
									src="<%=request.getContextPath()%>/resources/images/nextBtn2.png"
									class="movie_nextImg"> <br>자리선택
							</button>
						</c:otherwise>
						</c:choose>
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
		var test = $('.movie_title');
		var test2 = test.children('.movie_old');
		var titleSize = test2.length;
		for (var i = 0; i < titleSize; i++) {
			if (test2.eq(i).text() == '19') {
				test2.eq(i).css('background', 'red');
			} else if (test2.eq(i).text() == '15') {
				test2.eq(i).css('background', 'orange');
			} else if (test2.eq(i).text() == '12') {
				test2.eq(i).css('background', 'skyblue');
			} else if (test2.eq(i).text() == 'All') {
				test2.eq(i).text("All");
                test2.eq(i).css('background', 'green');
			}
		}

		var today = new Date(); // 오늘 날짜
		var year = today.getFullYear(); // 년도
		var month = today.getMonth() + 1; // 이번달
		var date = today.getDate(); // 오늘 날짜
		var week = [ '일', '월', '화', '수', '목', '금', '토' ]; // 요일 모음
		var dayOfWeek = null; // 요일 출력
		var lastDate = new Date(year, month, 0).getDate(); // 이번달의 마지막 일
		var beetDate = lastDate - date; // 마지막일 - 오늘날짜
		printDate(year, month, date, beetDate);
		printDate(year, month + 1, 1, beetDate+1);

		function printDate(year, month, date, beetDate) {
			var dayList = document.createElement("li");
			var monthList = document.createElement("li");

			monthList.setAttribute("class", "movie_month_list");
			monthList.innerHTML = ("<span>" + year + "</span>" + "<span>"
					+ month + "</span>");

			var dateUl = document.getElementsByClassName("movie_DateUl");
			dateUl[0].appendChild(monthList);

			var count = 0;
			var preDate = 0;
			for (var i = 0; i <= beetDate; i++) {
				preDate = date + count;
				dayOfWeek = week[new Date(year + '-' + month + '-' + preDate)
						.getDay()];
				dayList = document.createElement("li");
				dayList.setAttribute("class", "movie_day_list");

				if (dayOfWeek == '토') {
					dayList.innerHTML = ("<button value=" + year + "." + month
							+ "." + preDate + ".(" + dayOfWeek + "요일)"
							+ "><span style='color:blue'>" + dayOfWeek
							+ "</span>" + "<span style='color:blue'>" + preDate + "</span></button>");
				} else if (dayOfWeek == '일') {
					dayList.innerHTML = ("<button value=" + year + "." + month
							+ "." + preDate + ".(" + dayOfWeek + "요일)"
							+ "><span style='color:red'>" + dayOfWeek
							+ "</span>" + "<span style='color:red'>" + preDate + "</span></button>");
				} else {
					dayList.innerHTML = ("<button value=" + year + "." + month
							+ "." + preDate + ".(" + dayOfWeek + "요일)"
							+ "><span style='color:black'>" + dayOfWeek
							+ "</span>" + "<span style='color:black'>"
							+ preDate + "</span></button>");
				}
				dateUl[0].appendChild(dayList);
				count++;
			}

		}

		var selectTitle = $('.movie_sale1').children('#movie_title').children('span');
		var areaNumber = 0;
		var selectCinema = $(".movie_sale2").children('div').eq(0).children(
				'span').eq(1);
		var selectTime = $(".movie_sale2").children('div').eq(1).children(
				'span').eq(1);
		var selectPlace = $(".movie_sale2").children('div').eq(2).children(
				'span').eq(1);
		
		var titleText = "";
		var titleValue = 0;
		var areaValue = 0;
		var cinemaText = "";
		var cinemaValue = 0;
		var timeValue = "";
		var placeText = "";
		var placeValue = 0;
		

		$(".movie_list").click(function() {
			$('.movie_list').removeClass('changeSelect');
			var list = $(this);
			var child = list.children('.movie_title');
			var child2 = child.children('.movie_old');
			var child3 = child.children('.movie_name');
			var imgSrc = child.children('#movPoster').val();
			var path = '<%=request.getContextPath()%>';
			
			list.addClass('changeSelect');

			selectTitle.text(child3.text());
			
			var $img = $("<img src='"+path+imgSrc+"' class='posterImg' width='150px' height='200px'/>");
			$('#movie_poster').html("");
			$('#movie_poster').append($img);
			
			
			console.log("path 경로 : " + path);
			console.log("src 경로 : " + imgSrc);
            
			console.log(child2.text() + child3.text());
			
			titleText = child3.text();
			
			titleValue = child.children('#movieNo').val();
			
			playMovie();
		});

		$(".movie_area_list").click(function() {
			$('.movie_area_list').removeClass('changeSelect');
			var list = $(this);
			var child1 = list.children('button');
			var child2 = child1.children('.movie_area');
			list.addClass('changeSelect');
			selectCinema.text("");
			cinemaText = "";
			cinemaValue = 0;
			
			areaNumber = $(this).children('button').children('input').val();
			areaValue = child1.children('#mocNo').val();
			
			playMovie();
		});

		$(".movie_day_list").click(function() {
			$('.movie_day_list').removeClass('changeSelect');
			var list = $(this);
			var child1 = list.children('button');

			list.addClass('changeSelect');

			selectTime.text(child1.val());
			timeValue = child1.val();
			
			console.log("날짜 : " + child1.val());				
			playMovie();
		});
		
		$(function(){
			$(".movie_area_list").on("click", function(){
				var num = areaNumber;
				
				$.ajax({
					url : "placeSelect.do",
					data : {num:num},
					dataType : "json",
					success : function(data){
						$ul = $(".mop_list_ul");
						$ul.html("");
						
						if(data.length > 0){
							for(var i in data){
								console.log(data[i]);
								var $li = $("<li class='movie_place_list'>");
								var $btn = $("<button style='border: none; background: none; width: 100%; text-align: left;'>");
								var $span = $("<span class='movie_area'>").text(data[i].maName);
								var $input = $("<input type='hidden' value="+data[i].maNo+" id='maNo'>");
								
								$btn.append($span);
								$btn.append($input);
								$li.append($btn);
								
								$ul.append($li);
							}
							
							$(".movie_place_list").click(function() {
								$('.movie_place_list').removeClass('changeSelect');
								var list = $(this);
								var child1 = list.children('button');
								var child2 = child1.children('.movie_area');
								list.addClass('changeSelect');

								selectCinema.text(child2.text());
								
								console.log(selectCinema);
								
								cinemaText = child2.text();
								cinemaValue = child1.children('#maNo').val();
								
								playMovie();
							})
							
						}else{
							var $span = $("<span class='movie_area'>").text("정보없음");
							$ul.append($span);
						}
					},
					error : function(e){
						alert("error code : " + e.stauts + "\n"
								+ "message" + e.responseText);
					}
				});
			});
		});
		
		function playMovie() {
			console.log("---------------------------------")
			console.log("골라진 영화 제목 : " + titleValue);
			console.log("골라진 지역 : " + areaValue);
			console.log("골라진 영화관 : " + cinemaValue);
			console.log("골라진 영화 시간 : " + timeValue);
			console.log("---------------------------------")
			
			$.ajax({
				url : "playMovieSel.do",
				data : {title:titleValue,
						area:areaValue,
						cinema:cinemaValue,
						time:timeValue
						},
				dataType : "json",
				success : function(data){
					var $ul = $(".watchingMovie");
					$ul.html("");
					
					if(data.length > 0){
						for(i in data){
							var $input = $("<input type='hidden' id='resNo'/>").text(data[i].resNo);
							var $li = $("<li class='movie_time_list'>");
							var $playBtn = $("<button class='movie_play'>");
							var $firstDiv = $("<div class='time' align='center'>")
							var $firstStrong = $("<strong style='font-size: 23px'>").text(data[i].startTime);
							var $firstEm = $("<em style='font-size: 18px; font-style: inherit;'>").text("~"+data[i].endTime);
							var $secondSpan = $("<span class='title' align='center'>");
							var $secondStrong = $("<strong style='font-size: 20px'>").text(data[i].resDate).text(data[i].movie.movieName);
							var $thirdDiv = $("<div class='info' align='right' style='padding: 10px;'>");
							var $thirdSpan1 = $("<span>").text(data[i].maName);
							var $thirdSpan2 = $("<span>").text(data[i].roomNumber + "관");
							var $thirdSpan3 = $("<span>");
							var $br = $("<br clear='strong'>");
							var $br1 = $("<br>");
							var $br2 = $("<br>");
							
							var initialCount = 0;
							var leftCount = 0;
							
							var seatInitial = data[i].roomChair.split(",");
							var seatLeft = data[i].resInfo.split(",");
							
							for(var i=0; i<seatInitial.length; i++) {
								if(seatInitial[i] == 0) {
									initialCount++;
								}
								if(seatLeft[i] == 0) {
									leftCount++;
								}
							}

							var $thirdStrong = $("<strong style='color: red'>").text(leftCount);
							var $thirdEm = $("<em style='font-style: inherit'>").text("/"+initialCount);
							
							
							$firstDiv.append($firstStrong);
							$firstDiv.append($br);
							$firstDiv.append($firstEm);
							
							$secondSpan.append($secondStrong);
							
							$thirdDiv.append($thirdSpan1);
							$thirdDiv.append($br1);
							
							$thirdDiv.append($thirdSpan2);
							$thirdDiv.append($br2);
							
							$thirdSpan3.append($thirdStrong);
							$thirdSpan3.append($thirdEm);
							$thirdDiv.append($thirdSpan3);
							
							$playBtn.append($firstDiv);
							$playBtn.append($secondSpan);
							$playBtn.append($thirdDiv);
							
							$li.append($input);
							$li.append($playBtn);
							
							$ul.append($li);
						}
						
						$(".movie_time_list").click(function() {
							$('.movie_time_list').removeClass('changeSelect');
							var list = $(this);
							var child1 = list.children('button').children('div').children('span').eq(1).text();
							list.addClass('changeSelect');

							selectPlace.text(child1);
							placeText = child1;
							
							placeValue = $(this).children('#resNo').text();
						});
						
						
					}
					
				},
				error : function(e){
					alert("error code : " + e.stauts + "\n"
							+ "message" + e.responseText);
				}
			});
		}
		
		function nextBtn(){
			location.href="resSeat.do?placeValue="+placeValue;
		}
		
		function login(){
			alert("로그인 해주세요.");
		}
	</script>

</body>
</html>