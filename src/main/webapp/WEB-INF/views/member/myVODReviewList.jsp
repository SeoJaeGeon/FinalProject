<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ contextPath }/resources/css/member/myVODReviewList.css" rel="stylesheet" type="text/css">
	<title>내가 쓴 VOD 리뷰</title>
	<style>
		header,
		nav,
		section,
		article,
		aside,
		footer {
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
				<p class="listArrange">My KASS > My Menu > 내가 쓴 VOD 리뷰</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">내가 쓴 VOD 리뷰</h2>
						<table class="contentTable">
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">이상의 곧 작고 것은 생생하며, 바이며, 사막이다.
											있음으로써 시들어 풀이 목숨을 원질이 인류의 꾸며 장식하는 것이다. 청춘 기쁘며, 행복스럽고 있는 그림자는
											교향악이다. 이것은 피는 이상의 꽃이 영원히 살았으며, 것이다. 역사를 쓸쓸한 이상은 희망의 위하여서.
											황금시대의 그들을 이상, 위하여 그러므로 안고, 보이는 예수는 열락의 것이다. 하였으며, 과실</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/반도.jpg" class="poster">
								</td>
								<td class="right">
									<div>
										<div class="movieTitle">반도</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/down_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">별로에요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/토이스토리4.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">토이스토리4</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/반도.jpg" class="poster">
								</td>
								<td class="right">
									<div>
										<div class="movieTitle">반도</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">보이는 맺어, 살았으며, 때에, 위하여서. 듣기만
											인간이 있을 봄바람이다. 따뜻한 우리는 열락의 유소년에게서 보배를 몸이 황금시대의 인간이 온갖 때문이다.
											이것은 따뜻한 곧 보내는 반짝이는 목숨이 칼이다.</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/down_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">별로에요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/down_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">별로에요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td class="left"><img src="../images/겨울왕국2.jpg" class="poster"></td>
								<td class="right">
									<div>
										<div class="movieTitle">겨울왕국2</div>
										<p class="idDate">
											<span class="userId">us***1</span> | <span class="writerDate">2020.07.30</span>
										</p>
										<div class="reviewContent">너무 재밋습니당</div>
									</div>
									<div class="bottomTdDiv">
										<div>
											<div class="scoreDiv">
												<img src="../images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
											</div>
										</div>
										<div class="buttons">
											<a href="#" id="update" class="update">수정</a> <a href="#" id="delete" class="delete">삭제</a>
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