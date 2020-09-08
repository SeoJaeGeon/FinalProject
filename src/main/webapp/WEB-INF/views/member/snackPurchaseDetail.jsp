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
<link
	href="${ contextPath }/resources/css/member/snackPurchaseDetail.css"
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
				<p class="listArrange">My KASS > My Menu > 스낵 구매 내역 > 구매 상품 정보</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />

			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<p class="title">구매 상품 정보</p>
						<table class="contentTable">
							<tr class="topLine">
								<td>
									<div class="purchaseInfo">
										<span class="purchaseNo">주문 번호 : 2020073011111 </span> <span
											class="purchaseDate">주문 일시 : 2020-07-30</span>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<table class="table">
										<thead>
											<tr>
												<td scope="col" class="th no">상품 코드</td>
												<td scope="col" class="th proName">상품명</td>
												<td scope="col" class="th count">수량</td>
												<td scope="col" class="th price">가격</td>
												<td scope="col" class="th status">상태</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td scope="row" class="code">800123456</td>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
												<td class="status">사용가능</td>
											</tr>
											<tr>
												<td scope="row" class="code">800123456</td>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
												<td class="status">사용불가</td>
											</tr>
											<tr>
												<td scope="row" class="code">800123456</td>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
												<td class="status">사용불가</td>
											</tr>
											<tr>
												<td scope="row" class="code">800123456</td>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
												<td class="status">사용불가</td>
											</tr>
											<tr class="test">
												<td scope="row" class="code">800123456</td>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
												<td class="status">사용불가</td>
											</tr>

										</tbody>
									</table>
								</td>
							<tr>
								<td>
									<div class="all">
										<span class="allPriceText"> 합계 </span> <span class="allPrice">
											10,500 원 </span>
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