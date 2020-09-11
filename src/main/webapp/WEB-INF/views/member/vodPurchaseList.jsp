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
<link href="${ contextPath }/resources/css/member/vodPurchaseList.css"
	rel="stylesheet" type="text/css">
<title>VOD 구매 내역</title>
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
				<p class="listArrange">My KASS > Movie 내역 > VOD 구매 내역</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">VOD 구매 내역</h2>
						<table class="contentTable">
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<a href="#" class="goReview">평가해 주세요!</a>
											</div>
										</div>
										<div>
											<div class="buttons">
												<button class="vodBtn" onclick="goVODView();">VOD
													바로보기</button>
											</div>
										</div>

									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg"
									class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="date">
											<span class="startDate">2020.07.23</span> ~ <span
												class="endDate">2020.07.30</span>
										</p>
										<p class="priceDiv">
											<span class="price">8,000</span> 원
										</p>
									</div>
									<div class="bottomTdDiv">
										<div class="scoreDiv">
											<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span
												class="scoreText">좋았어요</span>
										</div>
									</div>

								</td>
							</tr>


						</table>
						<!-- 페이징바 -->
						<div class="pagination">
								<a class="pageOne" href="#">&lt;</a>
								<a class="pageOne" href="#">1</a>
								<a class="pageOne" href="#">2</a>
								<a class="pageOne" href="#">3</a>
								<a class="pageOne" href="#">4</a>
								<a class="pageOne" href="#">5</a>
								<a class="pageOne" href="#">&gt;</a>
	
								<!-- 버튼 비활성화 일 때-->
								<!-- <a class="pageNone">&lt;&lt;</a> -->
							</div>
					</section>
				</section>
			</section>




		</div>
	</div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>
</html>