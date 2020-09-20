<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<link href="${ contextPath }/resources/css/member/updatePwd.css?after"
	rel="stylesheet" type="text/css">
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
	height: 100%;
	margin: auto;
	padding-bottom: 100px;
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
.next {
	width: 80px;
	height: 40px;
	border-radius: 5px;
	background: rgb(31, 69, 97);
	font-weight: bold;
	color: white;
	margin: 0px 20px;
}

.back {
	width: 80px;
	height: 40px;
	border-radius: 5px;
	background: white(31, 69, 97);
	font-weight: bold;
	background: white;
	color: rgb(31, 69, 97);
	border: 1px solid rgb(31, 69, 97);
	margin: 0px 20px;
}
</style>

</head>

<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />


		<div class="content">
			<div class="listArrangeDiv">
				<p class="listArrange">My KASS > 회원 정보 > 개인정보 수정 > 비밀번호 변경</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">비밀번호 변경</h2>
						<ul style="-webkit-padding-start: 20px;">
							<li>
								<p>현재 비밀번호를 입력한 후 새로 사용할 비밀번호를 입력하세요.</p>
							</li>
						</ul>
						<form id="updatePwdForm" name="updatePwdForm" action="updatePwd.do" method="POST">
						<table class="contentTable">
							<tr class="topLine">
								<td class="left">현재 비밀번호</td>
								<td><input type="password" name="userPwd" id="userPwd1" class="userPwd"></td>
								<td><input type="hidden" name="userId" value="${ loginUser.userId }"></td>
							</tr>
							<tr>
								<td class="left">새 비밀번호</td>
								<td>
									<input type="password" name="newPwd" id="newPwd2" class="newPwd">
									<div class="pwdGuide">&nbsp;&nbsp;※ 영문, 숫자, 특수문자 중 2가지 이상 조합하여 8자리 이상으로 입력해 주세요.</div>
								</td>
							</tr>
							<tr>
								<td class="left">새 비밀번호 확인</td>
								<td>
									<input type="password" name="newPwd2" id="newPwd3" class="newPwd2">
									<div class="pwdGuide">&nbsp;&nbsp;※ 비밀번호 확인을 위해 한 번 더 입력해 주시기 바랍니다.</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<ul class="pwdGuide" style="-webkit-padding-start: 10px;">
										<li class="pwdGuide">생년월일, 전화번호 등 개인정보와 관련된 숫자, 연속된 숫자와 같이 쉬운 비밀번호는 다른 사람이 쉽게 알아낼 수 있으니 사용을 자제해 주세요.</li>
										<li class="pwdGuide">비밀번호는 3~6개월마다 꼭 바꿔주세요.</li>
										<li class="pwdGuide">비밀번호 설정 시 영문, 숫자, 특수문자 중 2가지 이상 조합하여 8자리 이상으로 입력해 주세요.</li>
									</ul>
								</td>

							</tr>

						</table>
						<div class="buttons">
							<button type="button" id="cancel" class="cancel">취소</button>
							<button type="button" id="next" class="next" onclick="return updatePwd();">등록</button>
						</div>
						</form>
					</section>
				</section>
			</section>
		</div>
		
		<script>
			function updatePwd() {
				var pwd = $.trim($("#userPwd1").val());
				var pwd1 = $.trim($("#newPwd2").val());
	            var pwd2 = $.trim($("#newPwd3").val());
	            if (!pwd) {
	                alert("현재 비밀번호를 입력해 주세요.");
	                $("#userPwd1").focus();
	                return false;
	            } else if (!pwd1) {
	                alert("새 비밀번호를 입력해 주세요.");
	                $("#newPwd2").focus();
	                return false;
	            }else if (!pwd2) {
	                alert("새 비밀번호 확인을 입력해 주세요.");
	                $("#newPwd3").focus();
	                return false;
	            }

	            var newPwd = document.getElementById("newPwd2");
				var newPwd2 = document.getElementById("newPwd3");
				// 비밀번호
				if (!chk(/(?=.*[a-z])(?=.*[0-9])(?=.*[^a-zA-Z0-9가-힣]).{8,}/,
						newPwd, "비밀번호는 영문, 숫자, 특수문자 포함하여 8자 이상 입력해주세요."))
					return false;

				// 비밀번호 일치여부
				if (newPwd.value != newPwd2.value) {
					alert("새 비밀번호와 일치하지 않습니다.");
					newPwd2.value = "";
					newPwd2.focus();
					return false;
				}
				
				var userPwdString = $("form[name=updatePwdForm]").serialize();

				$.ajax({
					url : "checkPwd.do",
					data : userPwdString,
					type : "post",
					dataType : "json",
					success : function(data) {
						if (data.isEmpty == false) {
							$("#updatePwdForm").submit();
						} else {
							alert("현재 비밀번호가 일치하지 않습니다.");
							
						}
					},
					error : function(e) {
						console.log(e);
						console.log("통신 실패!");
					}
				});

				return true;
			}
		
			
			function chk(re, e, msg) {
				if (re.test(e.value))
					return true;

				alert(msg);
				//e.value = "";
				e.focus();
				return false;
			}
		</script>
	</div>
	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>
</html>