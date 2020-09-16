<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<link href="${ contextPath }/resources/css/member/myPage.css?after"
	rel="stylesheet" type="text/css">
<title>MY KASS</title>
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
				<p class="listArrange">My KASS</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />

			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<div class="my-1">
							<div class="my-1-1">
								<c:if test="${ loginUser.attachment.renameFileName != null }">
									<img
										src="${ contextPath }/resources/images/muploadFiles/${ loginUser.attachment.renameFileName }"
										class="profileImg">
								</c:if>
								<c:if test="${ loginUser.attachment.renameFileName == null }">
									<img
										src="${ contextPath }/resources/images/defaultPropfieImg.png"
										class="profileImg" id="profileImg">
								</c:if>
							</div>
							<div class="my-1-2">
								<span class="userName">${ loginUser.userName }님 </span><span>반가워요!</span>
								<p>
									<a href="mupdatePwdCheckView.do">개인정보수정 > </a>
								</p>
							</div>
						</div>
						<div class="back"></div>
					</section>
				</section>

				<section class="content-2">
					<section class="content-2-1">
						<div class="my-2">
							<div class="my-2-1">
								<div class="movieRecommendDiv">
									<h2 class="myTitle">▶ 회원님이 최근에 본 영화와 장르가 비슷해요!</h2>
									<div class="movies">
										<article class="movie">
											<a href="#"> <img
												src="${ contextPath }/resources/images/겨울왕국2.jpg"
												class="poster">
												<p>겨울왕국2</p>
											</a>
										</article>
										<article class="movie">
											<a href="#"> <img
												src="${ contextPath }/resources/images/토이스토리4.jpg"
												class="poster">
												<p>토이스토리4</p>
											</a>
										</article>
										<article class="movie">
											<a href="#"> <img
												src="${ contextPath }/resources/images/반도.jpg"
												class="poster">
												<p>반도</p>
											</a>
										</article>
									</div>
								</div>
							</div>
							<div class="my-2-2">
								<h2 class="myTitle">▶ My Movie</h2>
								<div class="myMovie">
									<article class="myCount">
										<a href="moviePurchaseList.do">
											<p class="count">${ moviePurchaseCount }</p>
											<p class="text">본영화</p>
										</a>
									</article>
									<article class="myCount">
										<a href="vodPurchaseList.do">
											<p class="count">${ vodPurchaseCount }</p>
											<p class="text">본VOD</p>
										</a>
									</article>
									<article class="myCount">
										<a href="movieReviewList.do">
											<p class="count">${ movieReviewCount }</p>
											<p class="text">영화 한줄평</p>
										</a>
									</article>
									<article class="myCount">
										<a href="vodReviewList.do">
											<p class="count">${ vodReviewCount }</p>
											<p class="text">VOD 한줄평</p>
										</a>
									</article>
									<article class="myCount">
										<a href="#">
											<p class="count">${ moviePurchaseCount }</p>
											<p class="text">찜한 VOD</p>
										</a>
									</article>
								</div>
							</div>
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