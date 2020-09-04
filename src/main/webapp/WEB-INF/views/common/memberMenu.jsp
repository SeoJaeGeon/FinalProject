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
			<table>
				<tr>
					<td>
						<h2>My KASS</h2>
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
							<li><a href="#">내가 쓴 영화 리뷰</a></li>
							<li><a href="#">내가 쓴 VOD 리뷰</a></li>
							<li><a href="#">내가 찜한 VOD</a></li>
							<li><a href="#">장바구니</a></li>
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
							<li><a href="#">영화 구매 내역</a></li>
							<li><a href="#">VOD 구매 내역</a></li>
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
							<li><a href="#">스낵 구매 내역</a></li>
							<li><a href="#">굿즈 구매 내역</a></li>
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
							<li><a href="mupdatePwdCheckView.do">개인정보 수정</a></li>
							<li><a href="mdeleteView.do">회원 탈퇴</a></li>
						</ul>
					</td>
				</tr>
			</table>
		</aside>
	</section>
</body>
</html>