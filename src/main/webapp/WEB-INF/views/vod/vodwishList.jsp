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
<title>VOD 위시리스트</title>
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
				<p class="listArrange">My KASS > Movie 내역 > VOD 위시리스트</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">VOD 위시리스트</h2>
						<table class="contentTable">
							<c:if test="${ empty list }">
								<tr>
									<td colspan="2">
										<div class="emptyList">위시리스트 VOD가 존재하지 않습니다.</div>
									</td>
								</tr>
							</c:if>
							
							
							<c:if test="${ list ne null }">
								<c:forEach var="vpl" items="${ list }">
									<tr class="oneBox">
										<td class="left"><img
											src="${ contextPath }${ vpl.attachList[1].filePath }${ vpl.attachList[0].renameFileName }"
											class="poster"></td>
										<td class="right">
											<div>
												<div class="movieTitle">${vpl.movieName}</div>
												
												<p class="priceDiv">
													<span class="price">${vpl.moviePrice}</span> 원
												</p>
											</div>
											<div class="bottomTdDiv">
												<div>
													
												</div>
												<div>
													<div class="buttons1">
														<c:url var="vodDetail" value="mywish.do">
															
															<c:param name="movieNo" value="${ vpl.movieNo }" />
															<c:param name="page" value="${ pi.currentPage }" />
														</c:url>
														
													</div>
													<div class="buttons1">
													     <c:url var="bdetail" value="dddd.do">
																<c:param name="userNo" value="${ loginUser.userNo }"/>
																<c:param name="movieNo" value="${ vpl.movieNo }" />
																
														</c:url>
														<a href="${ bdetail }">
														<button id="movieCancel" class="cancel" onclick="delete22();">삭제</button>
														</a>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:if>

						</table>
						
						
						
						
						<!-- 페이징바 -->
						<div class="pagination">
							<div class="pageOuterDiv">
								<div class="pageInnerDiv">
									<!-- 이전 -->
									<c:if test="${ pi.currentPage <= 1 }">
										<a class="pageNone">&lt;</a>
									</c:if>
									<c:if test="${ pi.currentPage > 1 }">
										<c:url var="before" value="mywish.do">
											<c:param name="userNo" value="${ loginUser.userNo }"/>
										
											<c:param name="page" value="${ pi.currentPage -1 }" />
										</c:url>
										<a class="pageOne" href="${ before }">&lt;</a>
									</c:if>

									<!-- 페이지 숫자 -->
									<c:forEach var="p" begin="${ pi.startPage }"
										end="${ pi.endPage }">
										<c:if test="${ p eq pi.currentPage }">
											<a class="pageNone">${ p }</a>
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url var="pagination" value="mywish.do">
												<c:param name="userNo" value="${ loginUser.userNo }"/>
												<c:param name="page" value="${ p }" />
											</c:url>
											<a class="pageOne" href="${ pagination }">${ p }</a>
										</c:if>
									</c:forEach>

									<!-- 이후 -->
									<c:if test="${ pi.currentPage >= pi.maxPage }">
										<a class="pageNone">&gt;</a>
									</c:if>
									<c:if test="${ pi.currentPage < pi.maxPage }">
										<c:url var="after" value="mywish.do">
											<c:param name="userNo" value="${ loginUser.userNo }"/>
											<c:param name="page" value="${ pi.currentPage + 1 }" />
										</c:url>
										<a class="pageOne" href="${ after }">&gt;</a>
									</c:if>
									<!-- 버튼 비활성화 일 때-->
									<!-- <a class="pageNone">&lt;&lt;</a> -->
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
	
	<script>
	
	
	
	
	</script>

</body>

</html>