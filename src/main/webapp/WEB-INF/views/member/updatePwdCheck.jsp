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
<link href="${ contextPath }/resources/css/member/updatePwdCheck.css?after"
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
				<p class="listArrange">My KASS > 회원 정보</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />

			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<div class="my-1">
							<div class="my-1-1">
								<c:if test="${ loginUser.attachment.renameFileName != null }">
									<img
										src="${ contextPath }/resources/images/muploadFiles/${ loginUser.attachment.renameFileName }"
										class="profileImg">
								</c:if>
								<c:if test="${ loginUser.attachment.renameFileName == null }">
									<img
										src="${ contextPath }/resources/images/defaultPropfieImg.png"
										class="profileImg" id="profileImg">
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
								<h2>회원정보를 수정하시려면 비밀번호를 입력하셔야 합니다.</h2>
								<p>회원님의 개인정보 보호를 위한 본인 확인 절차이오니, KASS CINEMA 로그인 시 사용하시는
									비밀번호를 입력해 주세요.</p>
								<form id="pwdCheckForm" name="pwdCheckForm" method="post"
									action="mupdateView.do">
									<input type="password" name="userPwd" class="userPwd" id="userPwd">
									<input type="hidden" name="userId" value="${loginUser.userId }">
									<div class="buttons">
										<button type="button" class="noBack">취소</button>
										<button type="button" class="okNext"
											onclick="return checkPwd();">확인</button>
									</div>
								</form>
							</div>
						</div>
					</section>
				</section>
			</section>

			<script>
				function checkPwd() {

					var pwd = $.trim($("#userPwd").val());

					if (!pwd) {
						alert("비밀번호를 입력해주세요.");
						$("#userPwd").focus();
						return false;
					}

					var pwdCheckString = $("form[name=pwdCheckForm]")
							.serialize();

					$.ajax({
						url : "checkPwd.do",
						data : pwdCheckString,
						dataType : "json",
						//async : false,
						success : function(data) {
							/* console.log(data + " - ajax");
							console.log(data.isEmpty); */
							if (data.isEmpty == false) {
								$("#pwdCheckForm").submit();
							} else {
								alert("비밀번호가 일치하지 않습니다.");
							}
						},
						error : function(e) {
							alert("통신실패!" + e);
							console.log("ajax 통신 실패" + e);
						}
					});
					
					return true;
											
				}
		
			</script>
		</div>
	</div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>

</html>