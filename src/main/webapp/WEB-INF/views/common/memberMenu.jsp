<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<link href="${ contextPath }/resources/css/member/memberMemu.css"
	rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<style>
.list {
	list-style-image: url("${ contextPath }/resources/images/list4.PNG");
	margin-bottom: 40px;
	margin-top: 10px;
	/* border: 2px solid black; */
}
</style>
<title>MY KASS</title>
</head>
<body>
	<section class="MyKASS">
		<aside class="myMenu">
			<c:url var="mrlist" value="movieReviewList.do" />
			<c:url var="vrlist" value="vodReviewList.do" />
			<c:url var="wishlist" value="mywish.do"><c:param name="userNo" value="${ loginUser.userNo }"/></c:url>
			<c:url var="mlist" value="moviePurchaseList.do" />
			<c:url var="vlist" value="vodPurchaseList.do" />
			<c:url var="slist" value="snackPurchaseList.do" />
			<c:url var="glist" value="goodsPurchaseList.do" />
			

			<table>
				<tr>
					<td>
						<h2 onclick="location.href='myKass.do'" style="cursor:pointer">My KASS</h2>
					</td>
				</tr>
				<tr>
					<td class="menuTitle">
						<h3>My Menu</h3>
					</td>
				</tr>
				<tr>
					<td>
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a class="aMenu" href="${mrlist}">내가 쓴 영화
									리뷰</a></li>
							<li><a class="aMenu" href="${vrlist}">내가 쓴 VOD
									리뷰</a></li>
							<li><a class="aMenu" href="${ wishlist }">내가 찜한 VOD</a></li>
							<li><a class="aMenu" href="myCartView.do">장바구니</a></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="menuTitle">
						<h3>Movie 내역</h3>
					</td>
				</tr>
				<tr>
					<td>
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a class="aMenu" href="${mlist}">영화
									예매 내역</a></li>
							<li><a class="aMenu" href="${vlist}">VOD
									구매 내역</a></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="menuTitle">
						<h3>Store 내역</h3>
					</td>
				</tr>
				<tr>
					<td>
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a class="aMenu" href="${slist}">스낵
									구매 내역</a></li>
							<li><a class="aMenu" href="${glist}">굿즈
									구매 내역</a></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="menuTitle">
						<h3>회원 정보</h3>
					</td>
				</tr>
				<tr>
					<td>
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a class="aMenu" href="mupdatePwdCheckView.do">개인정보
									수정</a></li>
							<li><a class="aMenu" href="mdeleteView.do">회원 탈퇴</a></li>
						</ul>
					</td>
				</tr>
			</table>
		</aside>
	</section>
</body>
</html>