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
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

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
	min-height: 400px;
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

.movie-list-util {
	width: 100%;
	height: 70px;
	padding: 15px;
	border-bottom: 1px solid;
}

.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
	vertical-align: middle;
}

/* Hide default HTML checkbox */
.switch input {
	display: none;
}

/* The slider */
.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

.movie-list-util p {
	margin: 0px;
	display: inline-block;
	font-size: 20px;
	font-weight: bold;
}

/* 검색 창 */
#search-form2 {
	float: right;
	height: 40px;
	width: 300px;
	background: #ffffff;
	border: 1px solid;
	margin: auto;
}

#search_Text2 {
	font-size: 14px;
	width: 73%;
	padding: 5px;
	border: 0px;
	outline: none;
	float: left;
	font-family: 'NanumBarunGothic', sans-serif;
}

#search_Btn2 {
	width: 20%;
	height: 100%;
	border: 0px;
	background: white;
	outline: none;
	float: right;
	color: #ffffff;
	font-family: 'NanumBarunGothic', sans-serif;
}

#search_img2 {
	width: 30px;
	height: 30px;
}
/* 검색 창 */
.movie-list {
	width: 100%;
	min-height: 500px;
}
/*
        .list 는 ol
        .no-img 는 li 네
        근데 display : inline-block 쓰면 ol이 같이 늘어나고
        float : left 쓰면 저렇게 ol 올라가는데 뭐를 써야하나요??
        근데 display : inline-block 쓰면 이미지가 오른쪽에는 없으면 뭉개져요
        */
.list {
	list-style: none;
	width: 100%;
	height: 100%;
	padding: 0px;
	padding-top: 30px;
	padding-bottom: 30px;
	margin: 0px;
	overflow: hidden;
}

.no-img {
	float: left;
	margin: 0px 0px 80px 70px;
	width: 280px;
	height: 520px;
	border: 1px solid silver;
}

.movie-list-info {
	width: 100%;
	height: 70%;
}

.movie-list-info img {
	width: 100%;
	height: 100%;
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
	height : 27px;
	width : 27px;
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
}

.btn-util {
	width: 100%;
	height: 10%;
}

.plusBtn {
	width: 100%;
	height: 50px;
	background: orange;
	color: white;
	font-weight: bold;
	font-size: 17px;
}

/* 상영중 */
.movie_statusY {
	float: left;
	margin-top: 2px;
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
	margin-top: 2px;
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
	margin-top: 2px;
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
.resBtn {
	float: right;
	text-decoration: none;
	margin-top: 2px;
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

.viewChk{
	width : 300px;
	height : 100%;
	float : left;
}

.statusDiv{
	width : 100%;
	height : 100%;
	border : 1px solid black;
	text-align : center;
	font-size : 25px;
	color : white;
	background : black;
	user-select: none;
}
/* 내가 쓴 코드 */
</style>
</head>

<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />
		<section id="content">
			<div class="content1">
				<h2 style="margin-top: 30px;"># 전체 영화</h2>
				<div class="tab_List">
					<ul class="top_Menu">
						<li class="on"><a onclick="test('a');"> 상영중 </a></li>
						<li><a onclick="test('b');"> 상영예정작 </a></li>
						<li><a onclick="test('c');"> 상영종료 </a></li>
					</ul>
				</div>
				<div class="movie-list-util">
				<div class="viewChk">
					<p>개봉순</p>
					<label class="switch">
						<input type="checkbox" id='movieCheck'>
						<span class="slider round"></span>
					</label>
					<p>인기순</p>
				</div>
					<div id="search-form2">
						<input type="text" id="search_Text2" name="search_Text"
							placeholder="영화제목 입력">
						<button id="search_Btn2" name="search_Btn" type="button" onclick="searchMovie();">
							<img src="<%=request.getContextPath()%>/resources/images/search.png" id="search_img2">
						</button>
					</div>
				</div>
				<div class="movie-list">
					<ol class="list no-search">
					
					<c:forEach var="movOn" items="${ movListON }">
						<li class="no-img high">
							<div class="movie-list-info">
								<img src="<%=request.getContextPath()%>${ movOn.attachList[0].filePath }${ movOn.attachList[0].renameFileName }">
								<input type="hidden" value="${ movOn.movieNo }" id="movieNo"/>
							</div>
							<div class="tit-area">
								<p class="movie-grade">${ movOn.movieAge }</p>
								<p class="tit">${ movOn.movieName }</p>
							</div>
							<div class="rate-date">
								<span class="date"> 개봉일 : ${ movOn.movieRdate } </span>
							</div>
							<div class="btn-util">
								<span class="movie_statusY">상영중</span> 
								<a class="resBtn" href="resList.do">예매하기</a>
							</div>
						</li>
					</c:forEach>
					
					<c:forEach var="movWait" items="${ movListWait }">
						<li class="no-img middle" style="display : none;">
							<div class="movie-list-info">
								<img src="<%=request.getContextPath()%>${ movWait.attachList[0].filePath }${ movWait.attachList[0].renameFileName }">
								<input type="hidden" value="${ movWait.movieNo }" id="movieNo"/>
							</div>
							<div class="tit-area">
								<p class="movie-grade">${ movWait.movieAge }</p>
								<p class="tit">${ movWait.movieName }</p>
							</div>
							<div class="rate-date">
								<span class="date"> 개봉일 : ${ movWait.movieRdate } </span>
							</div>
							<div class="btn-util">
								<span class="movie_statusW">개봉예정</span>
                            <a class="resBtn" href="resList.do">예매하기</a>
							</div>
						</li>
					</c:forEach>
					
					<c:forEach var="movOff" items="${ movListOff }">
						<li class="no-img low" style="display : none;">
							<div class="movie-list-info">
								<img src="<%=request.getContextPath()%>${ movOff.attachList[0].filePath }${ movOff.attachList[0].renameFileName }">
								<input type="hidden" value="${ movOff.movieNo }" id="movieNo"/>
							</div>
							<div class="tit-area">
								<p class="movie-grade">${ movOff.movieAge }</p>
								<p class="tit">${ movOff.movieName }</p>
							</div>
							<div class="rate-date">
								<span class="date"> 개봉일 : ${ movOff.movieRdate } </span>
							</div>
							<div class="btn-util">
								<span class="movie_statusN">상영종료</span>
							</div>
						</li>
					</c:forEach>
					
					<c:forEach var="movFavor" items="${ movListFavor }">
						<li class="no-img favor" style="display : none;">
							<div class="movie-list-info">
								<img src="<%=request.getContextPath()%>${ movFavor.attachList[0].filePath }${ movFavor.attachList[0].renameFileName }">
								<input type="hidden" value="${ movFavor.movieNo }" id="movieNo"/>
							</div>
							<div class="tit-area">
								<p class="movie-grade">${ movFavor.movieAge }</p>
								<p class="tit">${ movFavor.movieName }</p>
							</div>
							<div class="rate-date">
								<span class="date"> 개봉일 : ${ movFavor.movieRdate } </span>
							</div>
							<div class="btn-util">
								<span class="movie_statusY">상영중</span> 
                            <a class="resBtn" href="resList.do">예매하기</a>
							</div>
						</li>
					</c:forEach>
					
					</ol>
					
					<ol class="list on-search" style="display : none;">
						
					</ol>
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
		
		$('.top_Menu li').click(function() {
			$('.top_Menu li').removeClass('on');
			var menu = $(this);

			menu.addClass('on');
		})

		function movie_check() {
			var grade_check = $('.list').children('.no-img').children(
					'.tit-area').children('.movie-grade');
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
		
		function test(menu_value){
			if(menu_value == 'a'){
				if(tf == true){
					$('.viewChk').css('display','');
					$('.favor').css('display','');
					$('.high').css('display','none');
					$('.middle').css('display','none');
					$('.low').css('display','none');
					$('.searchView').css('display','none');	
				}else{
					$('.viewChk').css('display','');
					$('.favor').css('display','none');
					$('.high').css('display','');
					$('.middle').css('display','none');
					$('.low').css('display','none');
					$('.searchView').css('display','none');					
				}
			}else if(menu_value == 'b'){
				$('.viewChk').css('display','none');
				$('.high').css('display','none');
				$('.middle').css('display','');
				$('.low').css('display','none');
				$('.searchView').css('display','none');
			}else{
				$('.viewChk').css('display','none');
				$('.high').css('display','none');
				$('.middle').css('display','none');
				$('.low').css('display','');
				$('.searchView').css('display','none');
			}
		}
		
		$(".movie-list-info").on('click',function(){
			var movieNo = $(this).children('#movieNo').val();
			console.log(movieNo);
			location.href="movieInfo.do?movieNo="+movieNo;
		});
		
		
		
		function searchMovie(){
		var searchText = $('#search_Text2').val();
		if(searchText != '' && searchText != ' '){
			$('.top_Menu li').removeClass('on');
			$('.viewChk').css('display','none');
			$('.high').css('display','none');
			$('.middle').css('display','none');
			$('.low').css('display','none');
			$('.no-search').css('display','none');
			$('.on-search').css('display','');
			$('.on-search').html('');
			
			$.ajax({
				url : "searchMovie.do",
				data : {searchText:searchText},
				dataType : "json",
				success : function(data){
					$('#h').remove();
					var $text = $(".movie-list-util");
					var $h2 = $("<h2 id='h'>").text(searchText + " 에 대한 검색결과입니다.");
					$text.append($h2);
					
					var $ol = $(".on-search");
					
					if(data.length > 0){
						for(var i in data){
							var path = '<%=request.getContextPath()%>';
							
							var $li = $("<li class='no-img searchView'>");
							
							var $firstDiv = $("<div class='movie-list-info'>");
							var $img = $("<img src='"+path+data[i].attachList[0].filePath+data[i].attachList[0].renameFileName+"'>");
							var $input = $("<input type='hidden' value="+data[i].movieNo+" id='movieNo'/>");
							
							var $secondDiv = $("<div class='tit-area'>");
							var $firstP = $("<p class='movie-grade'>").text(data[i].movieAge);
							var $secondP = $("<p class='tit'>").text(data[i].movieName);
							
							var $thirdDiv = $("<div class='rate-date'>");
							
							var myDate = moment(data[i].movieRdate).format('YYYY-MM-DD');
							var yyyy = myDate.substr(0,4);
						    var mm = myDate.substr(5,2);
						    var dd = myDate.substr(8,2);
						    var com_ymd = new Date(yyyy, mm-1, dd);

							var today = new Date();
							var diffTime = (com_ymd.getTime() - today.getTime()) / (1000*60*60*24);

							var $span = $("<span class='date'>").text("개봉일 : " + myDate);
							var $fourthDiv = $("<div class='btn-util'>");
							var $secondSpan = '';
							var $a = '';
							
							if(data[i].movieRstatus == 'Y' && com_ymd < 0){
								$secondSpan = $("<span class='movie_statusY'>").text("상영중");
								$a = $("<a class='resBtn' href='#'>").text("예매하기")
							}else if(data[i].movieRstatus == 'Y' && com_ymd > 0 ){
								$secondSpan = $("<span class='movie_statusW'>").text("개봉예정");
								$a = $("<a class='resBtn' href='#'>").text("예매하기")
							}else{
								$secondSpan = $("<span class='movie_statusN'>").text("상영종료");
							}
							
							
							$firstDiv.append($img);
							$firstDiv.append($input);
							
							$secondDiv.append($firstP);
							$secondDiv.append($secondP);
							
							$thirdDiv.append($span);
							
							$fourthDiv.append($secondSpan);
							$fourthDiv.append($a);
							
							$li.append($firstDiv);
							$li.append($secondDiv);
							$li.append($thirdDiv);
							$li.append($fourthDiv);
							
							$ol.append($li);
						}
					}else{
						var $h1 = $("<h1>").text("검색내용과 일치하는 영화가 없습니다.");
						$ol.append($h1)
					}
					
					$(".movie-list-info").on('click',function(){
						var movieNo = $(this).children('#movieNo').val();
						console.log(movieNo);
						location.href="movieInfo.do?movieNo="+movieNo;
					});
					
					movie_check();
					
					function movie_check() {
						var grade_check = $('.list').children('.no-img').children('.tit-area').children('.movie-grade');
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
					
					$(".top_Menu").click(function(){
						$('.no-search').css('display','');
						$('.on-search').css('display','none');
						$('#h').remove();
					});
					
				},
				error : function(e){
					alert("error code : " + e.stauts + "\n"
							+ "message" + e.responseText);
				}
			});
			
			$('#search_Text2').val('');
		}else{
			alert("검색내용을 입력해주세요.");
		}
		}
		
		var tf = false;
		$("#movieCheck").click(function(){
			tf = $("input:checkbox[id='movieCheck']").is(":checked");
			test('a');
		});
		
	</script>
</body>

</body>
</html>