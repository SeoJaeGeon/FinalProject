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
<link href="${ contextPath }/resources/css/member/snackPurchaseList.css"
	rel="stylesheet" type="text/css">
<title>스낵 구매 내역</title>
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
</style>

</head>

<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />


		<div class="content">
			<div class="listArrangeDiv">
				<p class="listArrange">My KASS > Store 내역 > 스낵 구매 내역</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />

			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<p class="title">스낵 구매 내역</p>
						<table class="contentTable">
							<tr class="topLine">
								<td>
									<table class="table">
										<tr>
											<th class="th no">주문 NO.
											<th class="th proName">상품명</th>
											<th class="th purchaseDate">구매일</th>
											<th class="th expDate">유효기간</th>
										</tr>

										<c:if test="${ empty list }">
											<tr>
												<td colspan="4" class="noneTd">
													<div class="emptyList">구매한 스낵이 존재하지 않습니다.</div>
												</td>
											</tr>
										</c:if>
										<c:if test="${ list ne null }">
											<c:forEach var="spl" items="${ list }">

												<c:url var="spDetail" value="snackPurchaseDetail.do">
													<c:param name="orderNum" value="${ spl.orderNum }" />
													<c:param name="page" value="${ pi.currentPage }" />
												</c:url>
												<tr onclick="location.href='${spDetail}'">
													<td class="no">${ spl.orderNum }</td>
													<td id="${spl.orderNum} " class="proName">${ spl.prodOrderList[0].snackName }
														<c:forEach var="count" items="${ counting }">
															<c:if test="${ spl.orderNum eq count.orderNum }">
																<c:if test="${ count.detailCount-1 ne 0 }">
																	외 ${ count.detailCount-1 }개
																</c:if>
															</c:if>
														</c:forEach>

													</td>
													<td class="purchaseDate">${ spl.payDate }</td>
													<td class="expDate">~${ spl.prodOrderList[0].codeTerm }</td>
												</tr>
											</c:forEach>

										</c:if>

									</table> <!-- 페이징바 -->
									<c:if test="${ pi.listCount ne 0 }">
									<div class="pagination">
										<div class="pageOuterDiv">
											<div class="pageInnerDiv">
												<!-- 이전 -->
												<c:if test="${ pi.currentPage <= 1 }">
													<a class="pageNone">&lt;</a>
												</c:if>
												<c:if test="${ pi.currentPage > 1 }">
													<c:url var="before" value="snackPurchaseList.do">
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
														<c:url var="pagination" value="snackPurchaseList.do">
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
													<c:url var="after" value="snackPurchaseList.do">
														<c:param name="page" value="${ pi.currentPage + 1 }" />
													</c:url>
													<a class="pageOne" href="${ after }">&gt;</a>
												</c:if>
												<!-- 버튼 비활성화 일 때-->
												<!-- <a class="pageNone">&lt;&lt;</a> -->
											</div>
										</div>
									</div>
									</c:if>
								</td>
							</tr>
						</table>
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