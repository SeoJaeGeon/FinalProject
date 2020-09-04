<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KASS CINEMA</title>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<link
	href="${ contextPath }/resources/css/member/findUserInfo.css?after"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
</head>

<body>
	<!-- The Modal -->
	<div id="myModal" class="modal">
		<!-- Modal content -->
		<div class="modal-content">
			<div class="header">
				<span class="Modaltitle">알림</span> <span class="close"
					onClick="close_pop();">X</span>
			</div>
			<div class="content">
				<div class="text">
					<div id="resultId" class="findId"></div>
					<div id="resultDate" class="enrollDate"></div>
					<button type="button" onclick="ok();" class="ok">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!--End Modal-->

	<div class="wrap">
		<div class="content">
			<div class="logoDiv">
				<a href="${ contextPath }"><img
					src="${ contextPath }/resources/images/logo_navy.png" class="logo"></a>
			</div>


			<div class="title">아이디/비밀번호 찾기</div>

			<div class="wrapper">
				<div class="tabs cf">
					<input type="radio" name="tabs" id="tab1" checked> <label
						for="tab1" class="tLabel">아이디 찾기</label> <input type="radio"
						name="tabs" id="tab2"> <label for="tab2" class="tLabel">비밀번호
						찾기</label>

					<!-- 아이디 찾기 -->
					<div id="tab-content1" class="tab-content">
						<!-- <form id="idFind" name="idFindForm" action="mfindId.do" method="post"> -->
						<div class="findMethod">간편 찾기</div>

						<table class="simpleTable">
							<tr>
								<td class="left">이름</td>

								<td><input type="text" id="userName" class="userName"
									name="userName" placeholder="이름"></td>
							</tr>
							<tr>
								<td class="left">생년월일</td>

								<td><input type="text" id="userBirth" class="birth"
									name="userBirth" placeholder="생년월일 앞 8자리"></td>
							</tr>
							<tr>
								<td class="left">휴대폰 번호</td>

								<td><input type="text" id="userPhone" class="phone"
									name="userPhone" placeholder="'-' 없이 입력"></td>
							</tr>
						</table>
						<div class="guide">※ 휴대폰 번호가 변경 된 경우 본인인증 찾기를 통하여 아이디 찾기를
							진행해 주시기 바랍니다.</div>
						<div class="button">
							<button class="idFindBtn" onclick="return simpleIdFind();">아이디
								찾기</button>
						</div>
						<!-- </form>  -->

						<hr>

						<div>
							<div class="findMethod">본인인증으로 찾기</div>
							<div class="guide2">본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수행하며, 인증
								이외의 용도로 이용 또는 저장되지 않습니다.</div>
							<div class="button">
								<button class="idFindBtn" onclick="certification();">본인인증</button>
							</div>
						</div>
					</div>


					<!-- 비밀번호 찾기 -->
					<div id="tab-content2" class="tab-content">
						<form id="pwdFindForm" name="pwdFindForm" method="post"
							action="pwdResetView.do">

							<div class="findMethod">간편 찾기</div>

							<table class="simpleTable">
								<tr>
									<td class="left">아이디</td>

									<td><input type="text" id="userId" class="userId"
										name="userId" placeholder="아이디"></td>
								</tr>
								<tr>
									<td class="left">이름</td>

									<td><input type="text" id="userName_2" class="userName"
										name="userName" placeholder="이름">
										<button type="button" onclick="findUserInfo();"
											class="findUserBtn">찾기</button></td>
								</tr>
								<tr>
									<td class="left">비밀번호 확인 질문</td>
									<td><span class="question" id="question"></span></td>
								</tr>
								<tr>
									<td class="left">비밀번호 확인 답변</td>

									<td><input type="text" class="answer" name="userPwdA"
										id="answer" placeholder="답변" disabled></td>
								</tr>
							</table>
							<div class="guide">※ 휴대폰 번호가 변경 된 경우 본인인증 찾기를 통하여 비밀번호 찾기를
								진행해 주시기 바랍니다.</div>
							<div class="button">
								<button type="button" class="pwdFindBtn"
									onclick="return simplePwdFind();">비밀번호 찾기</button>
							</div>
						</form>

						<hr>

						<div>
							<div class="findMethod">본인인증으로 찾기</div>
							<div class="guide2">본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수행하며, 인증
								이외의 용도로 이용 또는 저장되지 않습니다.</div>
							<form>
								<table class="confirmTable">
									<tr>
										<td class="left">아이디</td>
										<td><input type="text" class="userId" name="userId"
											placeholder="아이디"></td>
									</tr>
								</table>
								<div class="button">
									<button class="pwdFindBtn" onclick="certification();">본인인증</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function findUserInfo() {
			var userInfoString = $("form[name=pwdFindForm]").serialize();

			$.ajax({
				url : "mfind.do",
				data : userInfoString,
				type : "post",
				success : function(data) {
					if (data != "") {
						console.log(data);
						alert("비밀번호 학인 질문에 대한 답변을 입력해 주세요.");
						$("#question").text(data);
						$("#answer").removeAttr("disabled");

					} else {
						alert("해당 회원이 없습니다. 다시 입력해주세요.")
					}
				},
				error : function(e) {
					console.log(e);
					console.log("통신 실패!");
				}
			});

		}

		function simplePwdFind() {

			var id = $.trim($("#userId").val());
			var name = $.trim($("#userName_2").val());
			var answer = $.trim($("#answer").val());

			if (!id) {
				alert("아이디를 입력하세요.");
				$("#userName").focus();
				return false;
			} else if (!name) {
				alert("이름을 입력해주세요.");
				$("#userName_2").focus();
				return false;
			} else if (!answer) {
				alert("비밀번호 확인 답변을 입력해주세요.");
				$("#answer").focus();
				return false;
			}

			var userInfoString2 = $("form[name=pwdFindForm]").serialize();

			$.ajax({
				url : "mfindPwd.do",
				data : userInfoString2,
				type : "post",
				success : function(data) {
					if (data.isUsable == false) {
						console.log("data.isUsable?" + data.isUsable);
						alert("비밀번호 답변이 일치합니다. 비밀번호 재설정 페이지로 이동합니다.");
						resetPwd();
					} else {
						alert("비밀번호 답변이 일치하지 않습니다.");
					}
				},
				error : function(e) {
					console.log(e);
					console.log("통신 실패!");
				}
			});

			return true;
		}

		function resetPwd() {
			$("form[name=pwdFindForm]").submit();
		}

		function simpleIdFind() {
			var name = $.trim($("#userName").val());
			var birth = $.trim($("#userBirth").val());
			var phone = $.trim($("#userPhone").val());

			if (!name) {
				alert("이름을 입력하세요.");
				$("#userName").focus();
				return false;
			} else if (!birth) {
				alert("생년월일을 입력해주세요.");
				$("#userBirth").focus();
				return false;
			} else if (!phone) {
				alert("휴대폰 번호를 입력해주세요.");
				$("#userPhone").focus();
				return false;
			}

			// 아이디 찾기            	
			$.ajax({
				url : "mfindId.do",
				type : "post",
				data : {
					userName : name,
					userBirth : birth,
					userPhone : phone
				},

				// 그냥 아이디값
				dataType : "json",
				success : function(data) {
					console.log("성공!");
					if (data != null) {
						console.log("data" + data);

						console.log("id : " + data.userId);
						console.log("date : " + data.userEnrollDate)

						$('#myModal').show();

						var beforeId = data.userId;
						var afterId = beforeId
								.substring(0, beforeId.length - 3)
								+ "***";

						console.log(afterId);

						$("#resultId").text("회원님의 아이디는 " + afterId + "입니다.");
						$("#resultDate").text("가입일 : " + data.userEnrollDate);
					} else {
						alert("일치하는 회원이 없습니다.");
						$("#userName").val("");
						$("#userBirth").val("");
						$("#userPhone").val("");
					}
				},
				error : function() {
					console.log("실패!");
				}
			});

			return true;

		}

		function close_pop(flag) {
			$('#myModal').hide();
		};

		function ok() {
			$('#myModal').hide();
			location.href = "${ contextPath }";
		}
	</script>
</body>
</html>