<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ contextPath }/resources/css/member/goodsPurchaseList.css" rel="stylesheet" type="text/css">
	<title>굿즈 구매 내역</title>
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
				<p class="listArrange">My KASS > Store 내역 > 굿즈 구매 내역</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<p class="title">굿즈 구매 내역</p>
						<table class="contentTable">
							<tr class="topLine">
								<td>

									<table class="table">
										<tr>
											<th>주문 NO.</th>
											<th>상품명</th>
											<th>구매일</th>
										</tr>

										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">토이스토리 텀블러 외 5개</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">토이스토리 펜</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">디즈니 공주피규어 세트</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">토이스토리 버즈 피규어</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">겨울왕국 피규어 세트</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">토르 미니 망치 외 2개</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">아이언맨 피규어</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">토이스토리 포키 피규어 외 1개</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">아이언맨 그립톡</td>
											<td class="purchaseDate">2020.07.30</td>
										</tr>
										<tr>
											<td scope="row" class="no">800123456</td>
											<td class="proName">스파이더맨 그립톡 외 10 개</td>
											<td class="purchaseDate">2020.07.30</td>
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