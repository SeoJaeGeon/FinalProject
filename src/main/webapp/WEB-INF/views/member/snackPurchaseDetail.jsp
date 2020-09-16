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
										<span class="purchaseNo">주문 번호 : ${ detailList[0].orderNum }
										</span> <span class="purchaseDate">주문 일시 : ${
											detailList[0].payDate }</span>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<table class="table">
										<tr>
											<th class="th no">상품 코드</th>
											<th class="th proName">상품명</th>
											<th class="th count">수량</th>
											<th class="th price">가격</th>
											<th class="th status">상태</th>
										</tr>

										<c:if test="${ detailList ne null }">
											<c:forEach var="spd" items="${ detailList[0].prodOrderList }">
												<tr class="oneBox">
													<td class="code">${ spd.prodCode }</td>
													<td class="proName">${ spd.snackName }</td>
													<td class="count">${ spd.orderCount }</td>
													<td class="price">${ spd.snackPrice }원</td>
													<c:if test="${ spd.codeStatus eq 'Y' }">
														<td class="userStatus status">사용 가능</td>
													</c:if>
													<c:if test="${ spd.codeStatus eq 'N' }">
														<td class="userStatus status">사용 불가</td>
													</c:if>
												</tr>
											</c:forEach>
										</c:if>
										<tr>
											<td colspan="2" class="test">
												<input type="text" class="payDate" value="${ detailList[0].payDate }">
											</td>

											<td class="test"><span class="allPriceText">합계 :</span>
											</td>

											<td colspan="2" class="test"><span class="allPrice">${ detailList[0].payPrice }</span>
												<span class="test1">원</span></td>

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

	<script>
		// 000,000처리 함수
		function comma(num) {
			var len, point, str;

			num = num + "";
			point = num.length % 3;
			len = num.length;

			str = num.substring(0, point);
			while (point < len) {
				if (str != "")
					str += ",";
				str += num.substring(point, point + 3);
				point += 3;
			}

			return str;

		}

		$(document).ready(
			function () {
				// 가격 000,000처리
				var price = $(".allPrice").text();

				$(".allPrice").text(comma(price));
				
				var payDate = $(".payDate").val();

				payDate = new Date(payDate);

				payDate.setMonth(payDate.getMonth() + 6);

				console.log("dd"+payDate)

				var today = new Date();

				if (today < payDate) {
					$(".userStatus").text("사용 가능");
				} else {
					$(".userStatus").text("사용 불가");
				}
			}
			
			/* $(".oneBox").each(function () {
				var startDate = $(this).find(".startDate").text();
				var year = startDate.split("-")[0];
				var month = startDate.split("-")[1];
				var date = startDate.split("-")[2];

				var startTime = $(this).find(".startTime").text();
				var hour = startTime.split(":")[0];
				var minute = startTime.split(":")[1];

				console.log(year + "년" + month + "월" + date + "일 " + hour + "시 " + minute + "분");

				var resultDate = new Date(year, month - 1, date, hour, minute, '00');
				var today = new Date();
				console.log(resultDate);

				if (today < resultDate) {
					$(this).find(".cancel").show();
				} else {
					$(this).find(".cancel").hide();
				}

			}); */
		);
		
	</script>
	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>

</html>