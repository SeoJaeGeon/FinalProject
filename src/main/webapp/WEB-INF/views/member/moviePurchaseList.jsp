<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="${ contextPath }/resources/css/member/moviePurchaseList.css"
	rel="stylesheet" type="text/css">
<title>영화 예매 내역</title>
<style>
header, nav, section, article, aside, footer {
	box-sizing: border-box;
	display: block;
}

body {
	width: 100%;
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

.content {
	width: 100%;
	heigt: 100%;
	margin: auto;
	border: 1px solid red;
	overflow: hidden;
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
/* 영역 나누기 */
</style>

</head>

<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />


		<div class="content">
			<div class="listArrangeDiv">
				<p class="listArrange">My KASS > Movie 내역 > 영화 예매 내역</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />

			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">영화 예매 내역</h2>
						<table class="contentTable">
							<tr>
								<td class="left"><img
									src="${ contextPath }/resources/images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="datetime">
											<span class="date">2020.07.30</span> | <span class="time">15:20
												- 17:12</span>
										</p>
										<p class="areacount">
											<span class="area">홍대 2관</span> / <span class="count">4명
												관람</span>
										</p>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<a href="javascript:insertReview();" class="goReview">평가해
													주세요!</a>
											</div>
										</div>
										<div></div>
									</div>
								</td>
							</tr>
							

						</table>
						<!-- 페이징바 -->
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
					</section>
				</section>
			</section>
		</div>
	</div>
	<div id="myModal" class="modal">
		<div class="contentDiv">
			<div class="contentModal">
				<form>
					<table class="reviewTable">
						<tr>
							<td colspan="3" class="topTd">
								<p class="modalMovieTitle">겨울왕국</p>
							</td>
						</tr>
						<tr>
							<td class="side tr2">
								<div class="tabs cf">
									<input type="radio" name="tabs" id="tab1" value="good"
										onclick="change(this.value);" checked> <label
										for="tab1">
										<div class="scoreDiv">
											<img src="../images/up_black.png" class="scoreImg goodImg">
										</div>
											<span class="scoreText2 goodText">좋았어요^^</span>
									</label>
								</div>
							</td>
							<td class="tr2">
								<div class="imgAlign">
									<img src="../images/defaultPropfieImg.png" class="profileImg">
								</div>
							</td>
							<td class="side tr2">
								<div class="tabs cf">
									<input type="radio" name="tabs" id="tab2" value="bad"
										onclick="change(this.value);"> <label for="tab2">
										<div class="scoreDiv">
											<img src="../images/down_white.png" class="scoreImg badImg">
										</div>
											<span class="scoreText2 badText">별로에요;;</span>
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="3"><textarea cols="80" rows="5" maxlength="190"
									placeholder="내용을 입력해주세요." name="rContent" class="rContent"
									id="rContent" required></textarea></td>
						</tr>
						<tr>
							<td colspan="3">
								<div id="textLimit" class="textLimit" id="textLimit">
									(<span class="count" id="count">0</span> / 최대 280글자)
								</div>
							</td>
						</tr>
					</table>

					<div class="buttons">
						<button id="cancel" class="cancel" onclick="close_pop();">취소</button>
						<button id="next" class="next" onclick="insertReview();">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script>
		// 리뷰작성 view
		function insertReview() {
			document.getElementById("myModal").style.display = "block";
		};

		//팝업 Close 기능
		function close_pop() {
			document.getElementById("myModal").style.display = "none";
		};

		function change(value) {
			console.log(value);

			if (value == "good") {
				$(".goodImg").attr("src",
						"${ contextPath }/resources/images/up_black.png");
				$(".badImg").attr("src",
						"${ contextPath }/resources/images/down_white.png");
				$(".goodText").css("font-weight", "bold");
				$(".goodText").css("font-size", "20px");
				$(".badText").removeAttr("style");

			} else {
				$(".goodImg").attr("src",
						"${ contextPath }/resources/images/up_white.png");
				$(".badImg").attr("src",
						"${ contextPath }/resources/images/down_black.png");
				$(".badText").css("font-weight", "bold");
				$(".badText").css("font-size", "20px");
				$(".goodText").removeAttr("style");
			}
		}

		$("#rContent").keyup(function(e) {
			var rContent = $(this).val();
			$("#count").html(rContent.length); // 글자수 실시간 카운팅

			if (rContent.length > 190) {
				alert("최대 190자까지 입력 가능합니다.");
			}

		});
	</script>
	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>

</body>
</html>