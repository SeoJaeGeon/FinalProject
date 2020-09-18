<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>비밀번호 재설정</title>
	<style>
		body {
	margin: auto;
	width: 1200px;
	background: rgb(239, 239, 239);
	/* border: 1px solid red; */
	text-align: center;
	font-size: 14px;
}

.content {
	width: 1200px;
	height: 100%;
	background: white;
	text-align: center;
}

.headerImg {
	margin-top: 70px;
}

h2 {
	color: rgb(31, 69, 97);;
}

.pwdBtn {
	margin-top: 215px;
	margin-bottom: 135px;
	width: 100px;
	height: 40px;
	border-radius: 5px;
	background: rgb(31, 69, 97);
	font-weight: bold;
	color: white;
}

table {
	text-align: left;
	width: 600px;
}

tr,td:not(.span2){
	padding-left : 15px;
	height : 30px;
	border-bottom: 1px solid lightgray ;
}

.span1 {
	border-bottom: 1px solid black;
}

.span2 {
	padding-top: 20px;
}

.three {
	border-bottom: 1px solid lightgray;
}

.left {
	width: 150px;
	background: rgb(239, 239, 239);
}

.right {
	width: 300px;
}

input {
	margin: 2px 0px;
	size: 20px;
	width: 280px;
	height: 28px;
	border-radius: 5px;
	border: 1px solid lightgray;
	font-size: 15px;
}

.userId {
	margin-left: 5px;
}

ul {
	margin-left: 0px;
}
</style>
</head>

<body>
	<div class="content">
		<a href="${ contextPath }"><img src="${ contextPath }/resources/images/logo_navy.png" class="headerImg"></a>
		<h2>비밀번호 재설정</h2>
		<form id="pwdResetForm" action="pwdReset.do" method="POST"> 
			<table align="center">
				<tr>
					<td colspan="2" class="span1">
						<ul style="-webkit-padding-start: 6px;">
							<li>새로 사용하실 비밀번호를 입력해주세요.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="left">아이디</td>
					<td class="right"><span class="userId">${ userId }</span> <input type="hidden" id="userId" name="userId" value="${ userId }">
					</td>
				</tr>
				<tr>
					<td class="left">새 비밀번호</td>
					<td class="right"><input type="password" name="userPwd" class="newPwd" id="newPwd" placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합 "></td>
				</tr>
				<tr>
					<td class="left">새 비밀번호 확인</td>
					<td class="right"><input type="password" name="userPwd2" class="newPwd2" id="newPwd2" placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합 "></td>
				</tr>
				<tr>
					<td colspan="2" class="span2">
						<ul style="-webkit-padding-start: 20px;">
							<li>비밀번호는 영문, 숫자, 특수문자 중2가지 이상 조합 8자리 이상으로 설정해주세요.</li>
							<li>생년월일, 전화번호 등 개인정보와 관련된 숫자, 연속된 숫자와 같이 쉬운 비밀번호는 다른사람이 쉽게
								알아낼 수 잇으니 사용을 자제해 주세요.</li>
							<li>비밀번호는 3~6개월 마다 꼭 변경해주세요.</li>
							<!-- <li>비밀번호 설정 시 사용가능한 특수문자는 ~ ! @ # % ^ & * + = - ? _ 입니다.</li> -->
						</ul>
					</td>
				</tr>
			</table>
			<button type="submit" id="pwdBtn" class="pwdBtn" onclick="return pwdReset();">확인</button>
		</form>
	</div>
	<script>
		function pwdReset() {
			var pwd = $.trim($("#newPwd").val());
			var pwd2 = $.trim($("#newPwd2").val());
			if (!pwd) {
				alert("변경할 비밀번호를 입력해주세요.");
				$("#newPwd").focus();
				return false;
			} else if (!pwd2) {
				alert("비밀번호 확인을 입력해주세요.");
				$("#newPwd2").focus();
				return false;
			}

			var userPwd = document.getElementById("newPwd");
			var userPwd2 = document.getElementById("newPwd2");


			// 비밀번호
			if (!chk(/(?=.*[a-z])(?=.*[0-9])(?=.*[^a-zA-Z0-9가-힣]).{8,}/,
					userPwd, "비밀번호는 영문, 숫자, 특수문자 포함하여 8자 이상 입력해주세요."))
				return false;

			// 비밀번호 일치여부
			if (userPwd.value != userPwd2.value) {
				alert("비밀번호가 일치하지 않습니다.");
				userPwd2.value = "";
				userPwd2.focus();
				return false;
			}

			return true;
		}

		function chk(re, e, msg) {
			if (re.test(e.value))
			return true;

			alert(msg);
			e.value = "";
			e.focus();
			return false;
		}
	</script>
</body>
</html>