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
	href="${ contextPath }/resources/css/member/goodsPurchaseDetail.css"
	rel="stylesheet" type="text/css">
<title>구매 상품 정보</title>
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
				<p class="listArrange">My KASS > Store 내역 > 굿즈 구매 내역 > 구매 상품 정보</p>
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
												<td scope="col" class="th proName">상품명</td>
												<td scope="col" class="th thCount">수량</td>
												<td scope="col" class="th thCrice">가격</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="proName">토이스토리 볼펜</td>
												<td class="count">10</td>
												<td class="price">2,500 원</td>
											</tr>
											<tr>
												<td class="proName">겨울왕 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
											</tr>
											<tr>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
											</tr>
											<tr>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
											</tr>
											<tr>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">2,500 원</td>
											</tr>
											<tr>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">1,500 원</td>
											</tr>
											<tr>
												<td class="proName">토이스토리 텀블러</td>
												<td class="count">2</td>
												<td class="price">10,500 원</td>
											</tr>

										</tbody>
									</table>
									<div class="all">
										<span class="allPriceText"> 합계 </span> <span class="allPrice">
											1800000,500 원 </span>
									</div>
								</td>
							</tr>

							<tr>
								<td>
									<div class="deliveryInfo">배송지 정보</div>
								</td>
								<td>
									<table class="deliveryTable">
										<!-- <tr class="topLine">
                                        <td class="topLine" colspan="2">
                                    </tr> -->
										<tr>
											<td class="left">이름</td>
											<td>신정현</td>
										</tr>
										<tr>
											<td class="left">연락처</td>
											<td>01057211821</td>
										</tr>
										<tr>
											<td class="left">배송지</td>
											<td><span class="zipCode">(16538)</span><span
												class="defaultAddr">경기도 수원시 영통구 매탄동 매영로 10</span><span
												class="extraAddr">1동 1305호</span></td>
										</tr>
										<tr>
											<td class="left">배송 메모</td>
											<td>부재시 경비실에 놔주세요</td>
										</tr>

									</table>
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