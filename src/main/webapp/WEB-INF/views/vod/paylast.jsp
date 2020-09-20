<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<title>회원가입</title>
<style>
body {
	margin: auto;
	width: 1200px;
	background: rgb(239, 239, 239);
	/* border: 1px solid red; */
	text-align: center;
}

.content {
	width: 1200px;
	height: 100%;
	background: white;
	text-align: center;
}

.homeBtn {
	margin-top: 100px;
	margin-bottom: 196px;
	text-align: center;
	width: 400px;
	height: 60px;
	border-radius: 5px;
	background: rgb(31, 69, 97);
	font-weight: bold;
	font-size: 16px;
	color: white;
}

.headerImg {
	margin-top: 70px;
}

.imgDiv {
	margin: auto;
	/* border:1px solid red; */
	width: 45%;
	height: 45%;
	margin-top: 40px;
}

.contentImg {
	/* border:1px solid red;; */
	width: 45%;
	height: 45%;
}
</style>
</head>
<body>
	<div class="content">
		<a href="home.do"><img
			src="${ contextPath }/resources/images/logo_navy.png"
			class="headerImg"></a>
		<h1>결제가 완료 되었습니다!! </h1>
		<p>MYKASS > 내 VOD 구매내역에서 확인하세요 </p>
		<div class="imgDiv">
			<img
				src="${ contextPath }/resources/images/cinema-removebg-preview.png"
				class="contentImg">
		</div>
		<button id="homeBtn" class="homeBtn" onclick="location.href='home.do'">메인으로
			이동</button>
	</div>
</body>
</html>