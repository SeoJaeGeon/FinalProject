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
<link href="${ contextPath }/resources/css/member/vodPurchaseDetail.css"
	rel="stylesheet" type="text/css">
<title>VOD 바로 보기</title>
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
	height: 100%;
	margin: auto;
	overflow: hidden;
	margin-bottom: 100px;
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
				<p class="listArrange">My KASS > Movie 내역 > VOD 구매 내역 > VOD 바로보기</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">VOD 바로보기</h2>
						<table class="contentTable">
							<tr class="topLine">
								<td>
									<p class="movieTitle">${ vodPurchase.movieName }</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="vodDiv">
										<video
											src="${ contextPath }/resources/images/movie_vod/${ vodPurchase.attachment.renameFileName }"
											controls="controls" class="vod" poster="../images/겨울왕국2.jpg"></video>
									</div>
								</td>
							</tr>
						</table>
						<c:url var="vpList" value="vodPurchaseList.do">
							<c:param name="page" value="${ currentPage }" />
						</c:url>
						<div class="buttons1">
							<button id="goList" class="goList"
								onclick="location.href='${ vpList }'">목록으로</button>
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