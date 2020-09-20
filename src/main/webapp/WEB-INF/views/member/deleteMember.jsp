<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<link href="${ contextPath }/resources/css/member/deleteMember.css"
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


		<div class="content">
			<div class="listArrangeDiv">
				<p class="listArrange">My KASS > 회원정보 > 회원탈퇴</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">회원 탈퇴</h2>
						<ul style="-webkit-padding-start: 20px;">
							<li>
								<p>KASS CINEMA 회원 탈퇴를 신청하기 전에 안내사항을 꼭 확인해주세요.</p>
							</li>
						</ul>
						<form id="deleteForm" name="deleteForm" action="mdelete.do"
							method="post">
							<table class="contentTable">
								<tr class="topLine">
									<td>
										<h3>1. 탈퇴 후삭제 내역</h3>
									</td>
								</tr>
								<tr>
									<td>
										<ul style="-webkit-padding-start: 30px; margin-top: 0px;">
											<li style="margin-bottom: 5px;">영화 관람 내역</li>
											<li style="margin-bottom: 5px;">VOD 관람 내역</li>
											<li style="margin-bottom: 5px;">스낵 관람 내역</li>
											<li style="margin-bottom: 5px;">굿즈 관람 내역</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>
										<h3>2. 고객님께서 불편하셨던 점, 아쉬웠던 점을 알려주시면 앞으로 더 나은 모습으로
											찾아뵙겠습니다.</h3>
									</td>
								</tr>
								<tr>
									<td><label><input type="radio" name="wdReason"
											class="reason" value="서비스 장애가 잦아서" checked>서비스 장애가
											잦아서</label><br> <label><input type="radio"
											name="wdReason" class="reason"
											value="이벤트 및 무료 이벤트 서비스의 혜택이 적어서">이벤트 및 무료 이벤트 서비스의
											혜택이 적어서</label><br> <label><input type="radio"
											name="wdReason" class="reason"
											value="불만 및 불편사항에 대한 고객 응대가 나빠서">불만 및 불편사항에 대한 고객 응대가
											나빠서</label><br> <label><input type="radio"
											name="wdReason" class="reason"
											value="영화관람 시 시설 및 가격 등의 불만 때문에">영화관람 시 시설 및 가격 등의 불만
											때문에</label><br> <label><input type="radio"
											name="wdReason" class="reason"
											value="이용 빈도가 낮고 개인 정보 유출이 우려되어">이용 빈도가 낮고 개인 정보 유출이
											우려되어</label><br> <label><input type="radio"
											name="wdReason" class="reason" value="탈퇴 후 재 가입을 위해">탈퇴
											후 재 가입을 위해</label><br> <label><input type="radio"
											name="wdReason" class="reason" value="기타" id="etc">기타<input
											type="text" class="reasonText" id="reasonText" disabled></label><br>
										<label><input type="radio" name="wdReason"
											class="reason" value="휴먼 계정 만료">휴먼 계정 만료</label><br></td>
								</tr>
								<tr>
									<td>
										<h3>3. 회원님의 비밀번호를 입력하시고 [탈퇴] 버튼을 클릭해 주세요.</h3>
									</td>

								</tr>
								<tr>
									<td>
										<table class="pwdTable">
											<tr>
												<td class="left">비밀번호</td>
												<td><input type="password" name="userPwd"
													class="userPwd" id="userPwd1"></td>
											</tr>
										</table> <input type="hidden" name="userNo"
										value="${ loginUser.userNo }"> <input type="hidden"
										name="userId" value="${ loginUser.userId }">
									</td>
								</tr>
							</table>
							<div class="buttons">
								<button type="button" class="cancel">취소</button>
								<button type="button" class="next"
									onclick="return deleteMember();">탈퇴</button>
							</div>
						</form>
					</section>
				</section>
			</section>
		</div>
	</div>
	<script>
		$("input[name=wdReason]").change(function() {
			if ($("input[name=wdReason]:checked").val() == "기타") {
				$("#reasonText").removeAttr("disabled");
			} else {
				$("#reasonText").attr("disabled", "true").val("");
				;
			}
		});

		function deleteMember() {
			var input = $("#reasonText").val();
			console.log(input);
			$("#etc").val(input);
			if ($("#etc").is(':checked')) {
				$("#reasonText").removeAttr("disabled");
				console.log($("#etc").is(':checked'));
			} else {
				$("#reasonText").attr("disabled", "false");
			}

			/* 공란 검사 변수*/
			var pwd = $.trim($("#userPwd1").val());

			/* 공란 검사 */
			if (!pwd) {
				alert("비밀번호를  입력해주세요.");
				$("#userPwd1").focus();
				return false;
			}

			var userPwdString = $("form[name=deleteForm]").serialize();

			$.ajax({
				url : "checkPwd.do",
				data : userPwdString,
				type : "post",
				dataType : "json",
				success : function(data) {
					if (data.isEmpty == false) {
						$("#deleteForm").submit();
					} else {
						alert("비밀번호가 일치하지 않습니다.");
					}
				},
				error : function(e) {
					console.log(e);
					console.log("통신 실패!");
				}
			});

			return true;
		}
	</script>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>

</html>