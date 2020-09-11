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
									<table class="table table-hover">
										<thead>
											<tr>
												<td scope="col" class="th no">주문 NO.</td>
												<td scope="col" class="th proName">상품명</td>
												<td scope="col" class="th purchaseDate">구매일</td>
												<td scope="col" class="th expDate">유효기간</td>
											</tr>
										</thead>

										<tbody>
										<tbody>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">레몬에이드 외 5개</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
											<tr>
												<td scope="row" class="no">800123456</td>
												<td class="proName">콜라</td>
												<td class="purchaseDate">2020.07.30</td>
												<td class="expDate">~2021.01.30</td>
											</tr>
										</tbody>
									</table> <!-- 페이징바 -->
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