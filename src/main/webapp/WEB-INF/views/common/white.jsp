<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<title>KASS CINEMA</title>

<style>
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
/* 헤더 */

/* 검색 창 */
#search-form {
	height: 50px;
	width: 300px;
	background: #ffffff;
	border: 1px solid;
	margin: auto;
	margin-top: 40px;
}

#search_Text {
	font-size: 16px;
	width: 73%;
	padding: 10px;
	border: 0px;
	outline: none;
	float: left;
	font-family: 'NanumBarunGothic', sans-serif;
}

#search_Btn {
	width: 20%;
	height: 100%;
	border: 0px;
	background: white;
	outline: none;
	float: right;
	color: #ffffff;
	font-family: 'NanumBarunGothic', sans-serif;
}

#search_img {
	width: 30px;
	height: 30px;
}
/* 검색 창 */

/* 로고 */
#logo_img {
	display: block;
	margin: auto;
	margin-top: 20px;
}
/* 로고 */

/* 로그인, 회원가입 */
.login_bar {
	float: right;
	text-decoration: none;
	color: silver;
	font-weight: bold;
	font-size: 21px;
	margin-right: 50px;
	margin-top: 20px;
	font-family: 'NanumBarunGothic', sans-serif;
}

.login_bar:hover {
	text-decoration: none;
	color: gray;
}
/* 로그인, 회원가입 */

/* 네비게이션 바*/
#navi {
	list-style-type: none;
	padding: 0;
	margin: 0;
	height: 100%;
}

#navi>li {
	display: inline-block;
	width: 19%;
	height: 100%;
}

#navi li a {
	height: 100%;
	display: block;
	text-decoration: none;
	text-align: center;
	padding-top: 5px;
	color: black;
	font-weight: bold;
	font-size: 21px;
	line-height: 40px;
}

#navi li a:hover {
	border-bottom: 2px solid rgb(31, 69, 97);
}
/* 네비게이션 바*/
/* 모달 */
/* The Modal (background) */
.myloginModal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.loginmodal-content {
	background-color: #fefefe;
	margin: 13% auto; /* 15% from the top and centered */
	/* padding: 20px; */
	border: 1px solid #888;
	width: 600px; /* Could be more or less, depending on screen size */
	height: 400px;
	text-align: center;
}

.header {
	width: 100%;
	height: 40px;
	/* border: 1px solid red; */
	text-align: center;
	background: rgb(31, 69, 97);
}

.loginTitle {
	padding: 10px;
	float: left;
	/* border: 1px solid blue; */
	color: white;
	font-size: 15px;
	font-weight: bold;
}

.close {
	padding: 10px;
	float: right;
	/* border: 1px solid rgb(108, 255, 40); */
	color: white;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	margin-right: 10px;
}

.logoImg {
	width: 70%;
	margin-top: 20px;
	/* border: 1px solid violet; */
}

.loginBtn {
	width: 300px;
	height: 50px;
	margin: 20px;
	background: rgb(31, 69, 97);
	color: white;
	font-weight: bold;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
}

.logincontent {
	margin-top: 20px;
}

.left {
	width: 100px;
	text-align: left;
}

.right {
	width: 300px;
}

.find_bar {
	padding-top: 10px;
}

.aFind {
	float: right;
}

.aJoin {
	float: left;
}

.userId, .userPwd {
	width: 250px;
	height: 40px;
	font-size: 15px;
	size: 50px;
}

a {
	color: black;
}
</style>
</head>
<body>
	<c:if test="${ !empty msg }">
		<script>
			alert('${msg}');
		</script>
		<c:remove var="msg" />

	</c:if>
	<header>
		<section id="header-1">
			<form id="search-form">
				<input type="text" id="search_Text" name="search_Text"
					placeholder="영화 입력">
				<button type="submit" id="search_Btn" name="search_Btn">
					<img
						src="<%=request.getContextPath()%>/resources/images/search.png"
						id="search_img">
				</button>
			</form>
		</section>
		<section id="header-2">
			<a href="${ contextPath }"> <img
				src="<%=request.getContextPath()%>/resources/images/logo_navy.png"
				id="logo_img">
			</a>
		</section>

		<section id="header-3">
			<c:if test="${ empty sessionScope.loginUser }">
				<a href="minsertView.do" class="login_bar">회원가입</a>
				<a href="javascript:login_bar();" class="login_bar" id="login_bar">로그인</a>
			</c:if>

			<c:if test="${ !empty sessionScope.loginUser }">
				<c:if test="${ loginUser.userId eq 'admin' }">
					<a href="MovieManagerSalesPage.do" class="login_bar">관리</a>
					<a href="logout.do" class="login_bar" id="logout_bar">로그아웃</a>
				</c:if>
				<c:if test="${ loginUser.userId != 'admin' }">
					<a href="myKass.do" class="login_bar">MY KASS</a>
					<a href="logout.do" class="login_bar" id="logout_bar">로그아웃</a>
				</c:if>
			</c:if>
		</section>
	</header>
	
	<nav>
		<ul id="navi">
			<li><a href="movieList.do">영화</a></li>
			<li><a href="resList.do">예매</a></li>
			<li><a href="#">극장</a></li>
			<li><a href="#">VOD</a></li>
			<li><a href="#">스토어</a></li>
		</ul>
	</nav>

	<div id="myloginModal" class="myloginModal">
		<!-- Modal content -->
		<div class="loginmodal-content">
			<div class="header">
				<span class="loginTitle">로그인</span> <span class="close"
					onclick="close_pop();">X</span>
			</div>
			<div>
				<a href="javascript:back();"> <img class="logoImg"
					src="${ contextPath }/resources/images/logo_navy.png">
				</a>
			</div>
			<div class="logincontent">
				<form id="joinFrm" action="login.do" method="POST"
					onsubmit="return login();">
					<table align="center">
						<tr>
							<td class="left">아이디</td>
							<td class="right"><input type="text" id="userId"
								class="userId" name="userId" placeholder=" 아이디"></td>
						</tr>
						<tr>
							<td class="left">비밀번호</td>
							<td class="right"><input type="password" id="userPwd"
								class="userPwd" name="userPwd" placeholder=" 비밀번호"></td>
						</tr>
						<tr>
							<td colspan="2"><button type="submit" id="loginBtn"
									class="loginBtn">로그인</button></td>
						</tr>
						<tr>
							<td colspan="2" class="find_bar"><span class="aFind"><a
									href="findUserInfoView.do">ID/PW 찾기</a></span><span class="aJoin"><a
									href="minsertView.do">회원가입</a></span></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<script>
		function login_bar() {
			document.getElementById("myloginModal").style.display = "block";
		}

		function back() {
			document.getElementById("myloginModal").style.display = "none";
		}

		function close_pop() {
			document.getElementById("myloginModal").style.display = "none";
		}

		/* 로그인  */
		function login() {
			// 로그인 유효성검사
			var id = $.trim($("#userId").val());
			var pwd = $.trim($("#userPwd").val());

			if (!id) {
				alert("아이디를 입력하세요.");
				$("#userId").focus();
				return false;
			} else if (!pwd) {
				alert("비밀번호를 입력하세요.");
				$("#userPwd").focus();
				return false;
			}

			return true;
		}
	</script>
</body>
</html>