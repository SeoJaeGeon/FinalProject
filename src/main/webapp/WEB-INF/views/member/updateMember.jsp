<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<link href="${ contextPath }/resources/css/member/updateMember.css"
	rel="stylesheet" type="text/css">
</head>
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
</style>

</head>
<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />


		<div class="content">
			<div class="listArrangeDiv">
				<p class="listArrange">My KASS > 회원 정보 > 개인정보 수정</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />


			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">개인정보 수정</h2>
						<ul style="-webkit-padding-start: 20px;">
							<li><p>회원님의 정보를 정확히 기입해주세요.</p></li>
						</ul>
						<form action="mupdate.do" id="updateFrm" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="userName"
								value="${ loginUser.userName }"> <input type="hidden"
								name="userBirth" value="${ loginUser.userBirth }"> <input
								type="hidden" name="userNo" value="${ loginUser.userNo }">

							<table class="contentTable">
								<tr class="topLine">
									<td class="left">프로필사진</td>
									<td>
										<div class="imgAlign">
											<c:if test="${ loginUser.attachment.renameFileName != null }">
												<img
													src="${ contextPath }/resources/images/muploadFiles/${ loginUser.attachment.renameFileName }"
													class="profileImg" id="profileImg">
											</c:if>
											<c:if test="${ loginUser.attachment.renameFileName == null }">
												<img
													src="${ contextPath }/resources/images/defaultPropfieImg.png"
													class="profileImg" id="profileImg">
											</c:if>
										</div>
										<div class="imgAlign">
											<input type="file" name="uploadfile" id="img"
												style="display: none;" /> <label for="img"><span
												class="changeImgBtn">이미지 변경</span></label>
										</div>
										<div class="imgAlign" style="font-size: 14px;">&nbsp;&nbsp;※
											개인정보가 포함된 이미지 등록은 자제하여 주시기 바랍니다.</div>
									</td>
								</tr>
								<tr>
									<td class="left">아이디</td>
									<td>${ loginUser.userId }</td>
									<td><input type="hidden" name="userId"
										value="${ loginUser.userId }"></td>
								</tr>
								<tr>
									<td class="left">비밀번호</td>
									<td>
										<button type="button" class="pwdUpdateBtn"
											onclick="location.href='updatePwdView.do'">비밀번호 변경</button>
									</td>
								</tr>
								<tr>
									<td class="left">이름</td>
									<td>${ loginUser.userName }</td>
								</tr>
								<tr>
									<td class="left">생년월일</td>
									<td>${ loginUser.userBirth }</td>
								</tr>

								<tr>
									<td class="left"><span>* </span>비밀번호 확인 질문</td>
									<td class="center" colspan="2"><select name="userPwdQ">
											<option value="기억에 남는 추억의 장소는?"
												<c:if test="${ loginUser.userPwdQ eq '기억에 남는 추억의 장소는?'}">selected</c:if>>기억에
												남는 추억의 장소는?</option>
											<option value="자신의 인생 좌우명은?"
												<c:if test="${ loginUser.userPwdQ eq '자신의 인생 좌우명은?'}">selected</c:if>>자신의
												인생 좌우명은?</option>
											<option value="자신의 보물 제 1호는?"
												<c:if test="${ loginUser.userPwdQ eq '자신의 보물 제 1호는?'}">selected</c:if>>자신의
												보물 제 1호는?</option>
											<option value="추억하고 싶은 날짜가 있다면?"
												<c:if test="${ loginUser.userPwdQ eq '추억하고 싶은 날짜가 있다면?'}">selected</c:if>>추억하고
												싶은 날짜가 있다면?</option>
											<option value="자신이 두번째로 존경하는 인물은?"
												<c:if test="${ loginUser.userPwdQ eq '자신이 두번째로 존경하는 인물은?'}">selected</c:if>>자신이
												두번째로 존경하는 인물은?</option>
											<option value="인상 깊게 읽은 책 이름은?"
												<c:if test="${ loginUser.userPwdQ eq '인상 깊게 읽은 책 이름은?'} ">selected</c:if>>인상
												깊게 읽은 책 이름은?</option>
											<option value="다시 태어나면 되고 싶은 것은?"
												<c:if test="${ loginUser.userPwdQ eq '다시 태어나면 되고 싶은 것은?'}">selected</c:if>>다시
												태어나면 되고 싶은 것은?</option>
											<option value="유년시절 가장 생각나는 친구 이름은?"
												<c:if test="${ loginUser.userPwdQ eq '유년시절 가장 생각나는 친구 이름은?'}">selected</c:if>>유년시절
												가장 생각나는 친구 이름은?</option>
											<option value="내가 좋아하는 캐릭터는?"
												<c:if test="${ loginUser.userPwdQ eq '내가 좋아하는 캐릭터는?'}">selected</c:if>>내가
												좋아하는 캐릭터는?</option>
									</select></td>
								</tr>

								<tr>
									<td class="left"><span>* </span>비밀번호 확인 답변</td>
									<td class="center" colspan="2"><input type="text"
										name="userPwdA" class="pwdAnswer" id="pwdAnswer"
										value="${ loginUser.userPwdA }"></td>
								</tr>
								<c:forTokens var="addr" items="${ loginUser.userAddr }"
									delims="," varStatus="status">
									<c:if test="${ status.index eq 0 }">
										<c:set var="addr1" value="${ addr }" />
									</c:if>
									<c:if test="${ status.index eq 1 }">
										<c:set var="addr2" value="${ addr }" />
									</c:if>
									<c:if test="${ status.index eq 2 }">
										<c:set var="addr3" value="${ addr }" />
									</c:if>
								</c:forTokens>
								<tr>
									<td rowspan="3" class="left">주소</td>
									<td><input type="text" class="zipCode" name="zipCode"
										id="zipCode" value="${ addr1 }">
										<button type="button" class="findAddrBtn"
											onclick="addressAPI();">우편번호</button></td>
								</tr>
								<tr>
									<td><input type="text" class="defaultAddress address"
										id="address1" name="address1" id="defaultAddress"
										placeholder="기본주소" value="${ addr2 }"></td>
								</tr>
								<tr>
									<td><input type="text" class="extraAddress address"
										name="address2" id="extraAddress" placeholder="상세주소"
										value="${ addr3 }"></td>
								</tr>
								<tr>
									<td class="left"><span>*</span> 휴대폰 번호</td>
									<td><input type="text" class="phone" name="userPhone"
										id="phone" value="${ loginUser.userPhone }"></td>
								</tr>
								<tr>
									<td class="left"><span>*</span>이메일</td>
									<td><input type="email" class="email" name="userEmail"
										id="email" value="${ loginUser.userEmail }"></td>
								</tr>
							</table>
							<div class="buttons">
								<button type="button" id="cancel" class="cancel">취소</button>
								<button id="next" class="next" onclick="return updateMember();">등록</button>
							</div>
						</form>
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
	<script>
		$("#img").change(function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();

                // 파일 내용을 읽어들여 dataURL 형식의 문자열로 설정
                reader.readAsDataURL(this.files[0]);

                reader.onload = function () {

                    // div에 이미지 넣기
                    $("#profileImg").attr("src", reader.result);
                }
            }
        });
		
		
		/* 다음 주소 API */
		function addressAPI() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('zipCode').value = data.zonecode;
					document.getElementById("address1").value = roadAddr;
				}
			}).open();
		}

		function updateMember() {
			var pwdAnswer = $.trim($("#pwdAnswer").val());
			var phone = $.trim($("#phone").val());
			var email = $.trim($("#email").val());

			if (!pwdAnswer) {
				alert("비밀번호 확인답변 항목을 입력해주세요.");
				$("#pwdAnswer").focus();
				return false;
			} else if (!phone) {
				alert("휴대폰 번호 항목을 입력하세요.");
				$("#phone").focus();
				return false;
			} else if (!email) {
				alert("이메일 항목을 입력하세요.");
				$("#email").focus();
				return false;
			}

			var phone = document.getElementById("phone");
			if (!chk(/^01[0179][0-9]{7,8}$/, phone,
					"휴대폰 번호는 '-'를 제외한 숫자만 입력해주세요."))
				return false;
			
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

</body>
</html>