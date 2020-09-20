<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ contextPath }/resources/css/member/myCart.css" rel="stylesheet" type="text/css">
	<title>장바구니</title>
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
			<c:url var="vodCart" value="mycart.do"><c:param name="userNo" value="${ loginUser.userNo }"/></c:url>


		<div class="content">
			<div class="listArrangeDiv">
				<p class="listArrange">My KASS > My Menu > 장바구니</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />

			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<div class="my-1">
							<div class="my-1-1">
								<c:if test="${ loginUser.attachment.renameFileName != null }">
									<img src="${ contextPath }/resources/images/muploadFiles/${ loginUser.attachment.renameFileName }" class="profileImg">
								</c:if>
								<c:if test="${ loginUser.attachment.renameFileName == null }">
									<img src="${ contextPath }/resources/images/defaultPropfieImg.png" class="profileImg" id="profileImg">
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

								<a href="${ vodCart }">
									<div class="goCartDiv"><img class="cart" src="${ contextPath }/resources/images/vodIcon.png">
										<div class="goCartText">VOD 장바구니<br>바로가기</div>
									</div>
								</a>

								<a href="#">
									<div class="goCartDiv"><img class="cart" src="${ contextPath }/resources/images/snackIcon.png">
										<div class="goCartText">스낵 장바구니<br>바로가기</div>
									</div>
								</a>

								<a href="#">
									<div class="goCartDiv"><img class="cart" src="${ contextPath }/resources/images/goodsIcon.JPG">
										<div class="goCartText">굿즈 장바구니<br>바로가기</div>
									</div>
								</a>
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