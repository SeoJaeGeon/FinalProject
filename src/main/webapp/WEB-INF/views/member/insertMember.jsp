<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<link
	href="${ contextPath }/resources/css/member/insertMember.css?after"
	rel="stylesheet" type="text/css">

<title>회원가입</title>
</head>
<body>
	<div class="wrap">
		<div class="content">
			<div class="logoDiv">
				<a href="${ contextPath }"><img
					src="${ contextPath }/resources/images/logo_navy.png" class="logo"></a>
			</div>
			<div class="title">회원가입</div>

			<form action="minsert.do" id="joinFrm" method="post"
				onsubmit="return join();">
				<table align="center" class="join_table">
					<tr>
						<td class="left" rowspan="2"><span>* </span>아이디</td>
						<td class="center"><input type="text" name="userId"
							class="userId" id="userId" data-name="아이디"></td>
						<td class="right">
							<button type="button" class="idCheckBtn" id="idCheckBtn"
								onclick="idDupCheck();">중복확인</button>
						</td>
						<td><input type="hidden" name="idDuplicateCheck"
							id="idDuplicateCheck" value="0"></td>

					</tr>
					<tr>
						<td colspan="2">※ 영문 소문자로 시작하여 숫자를 조합해해 4~12자 입력해주세요.</td>
					</tr>

					<tr>
						<td class="left" rowspan="2"><span>* </span>비밀번호</td>
						<td class="center"><input type="password" name="userPwd"
							class="userPwd" id="userPwd" data-name="비밀번호"></td>
					</tr>

					<tr>
						<td colspan="2">※ 영문, 숫자, 특수문자를 조합하여 8자리 이상으로 입력해주세요.</td>
					</tr>

					<tr>
						<td class="left" rowspan="2"><span>* </span>비밀번호 확인</td>
						<td class="center"><input type="password" name="userPwd2"
							class="userPwd2" id="userPwd2" data-name="비밀번호 확인"></td>
					</tr>
					<tr>
						<td colspan="2">※ 영문, 숫자, 특수문자를 조합하여 8자리 이상으로 입력해주세요.</td>
					</tr>

					<tr>
						<td class="left"><span>* </span>비밀번호 확인 질문</td>
						<td class="center" colspan="2"><select name="userPwdQ">
								<option value="기억에 남는 추억의 장소는?" selected>기억에 남는 추억의
									장소는?</option>
								<option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
								<option value="자신의 보물 제 1호는?">자신의 보물 제 1호는?</option>
								<option value="추억하고 싶은 날짜가 있다면?">추억하고 싶은 날짜가 있다면?</option>
								<option value="자신이 두번째로 존경하는 인물은?">자신이 두번째로 존경하는 인물은?</option>
								<option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
								<option value="다시 태어나면 되고 싶은 것은?">다시 태어나면 되고 싶은 것은?</option>
								<option value="유년시절 가장 생각나는 친구 이름은?">유년시절 가장 생각나는 친구
									이름은?</option>
								<option value="내가 좋아하는 캐릭터는?">내가 좋아하는 캐릭터는?</option>

						</select></td>
					</tr>

					<tr>
						<td class="left"><span>* </span>비밀번호 확인 답변</td>
						<td class="center" colspan="2"><input type="text"
							name="userPwdA" class="pwdAnswer" id="pwdAnswer"
							data-name="비밀번호 확인 답변"></td>
					</tr>

					<tr>
						<td class="left"><span>* </span>이름</td>
						<td class="center" colspan="2"><input type="text"
							name="userName" class="userName" id="userName"
							placeholder="2자리 이상" data-name="이름"></td>
					</tr>

					<tr>
						<td class="left"><span>* </span>생년월일</td>
						<td class="center" colspan="2"><input type="text"
							maxlength="8" name="userBirth" class="birth" id="birth"
							placeholder="생년월일 8자리" data-name="생년월일"></td>
					</tr>

					<tr>
						<td class="left" rowspan="3">주소</td>
						<td class="center"><input type="text" name="zipCode"
							class="zipCode" id="zipCode" placeholder="우편번호">
							<button type="button" class="zipCodeBtn" id="zipCodeBtn"
								onclick="addressAPI();">우편번호</button></td>

					</tr>

					<tr>
						<td colspan="2" class="center"><input type="text"
							name="address1" class="address address1" id="address1"
							placeholder="기본주소"></td>
					</tr>

					<tr>
						<td colspan="2" class="center"><input type="text"
							name="address2" class="address address2" id="address2"
							placeholder="상세주소"></td>
					</tr>

					<tr>
						<td class="left"><span>* </span>휴대폰 번호</td>
						<td class="center" colspan="2"><input type="text"
							name="userPhone" class="phone" id="phone" placeholder="'-' 없이 입력"
							data-name="휴대폰 번호"></td>
					</tr>

					<tr>
						<td class="left" rowspan="2"><span>* </span>이메일</td>
						<td class="center"><input type="email" name="userEmail"
							class="email" id="email" placeholder="이메일" data-name="이메일">
							</td>
						<td class="right"><button type="button" class="certifyReq"
								id="certifyReq" onclick="emailSend();">인증요청</button></td>
					</tr>
					<tr>
						<td class="center"><input type="text" name="authNum"
							class="certifyCode" id="authNum" placeholder="인증 코드"
							data-name="인증코드" disabled> <input type="text"
							id="authNumCheck" value="0"></td>
						<td class="right"><button type="button" class="certifyRes"
								id="certifyRes" onclick="emailCheck();">인증확인</button></td>
					</tr>
					<tr>
						<td class="center" colspan="3"><button type="submit"
								id="joinBtn" class="joinBtn">가입하기</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<script>
		/* id 중복체크 */
		function idDupCheck() {
			var userId = $("#userId").val().trim();
			console.log("userId:" + userId);
			var id = document.getElementById("userId");
			console.log("id:" + id);

			if (!chk(/^[a-z][a-z\d]{3,11}$/, id,
					"아이디는 영문 소문자로 시작하여 숫자를 조합해 4~12자로 입력해주세요."))
				return false;

			else if (!chk(/[0-9]/, id, "아이디는 숫자를 한 개 이상 포함해주세요."))
				return false;

			else {
				$
						.ajax({
							url : "idDupCheck.do",
							data : {
								userId : userId
							},
							success : function(data) {
								console.log(data + " - ajax");
								console.log(data.isUsable);
								if (data.isUsable == false) {
									alert("사용할 수 없는 아이디입니다.");
									$("#idDuplicateCheck").val(0);
									$("#userId").focus();
								} else {
									if (confirm("이 아이디를 사용하시겠습니까? 확인 시 아이디 입력란이 비활성화 됩니다.")) {
										$("#userId").attr("readonly", true);
										$("#idDuplicateCheck").val(1);
									} else {
										$("#idDuplicateCheck").val(0);
									}
								}
							},
							error : function() {
								console.log("ajax 통신 실패");
							}
						});
			}

		}

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

		/* 인증번호 이메일 전송 */
		function emailSend() {
			$("#authNum").removeAttr("disabled");
			var userEmail = $("#email").val().trim();
			
			if (!userEmail) {
				alert("이메일을 입력 후 인증요청버튼을 클릭해주세요.");
				$("#userId").focus();
				return false;
			}
			
			$.ajax({
				url : "emailSend.do",
				data : {
					userEmail : userEmail,
				},
				success : function(data) {
					console.log(data);
					alert("입력한 이메일로 인증번호가 발송되었습니다. 인증번호를 입력해 주세요.");
				},
				error : function(e) {
					console.log("ajax 통신 실패" + e);
				}
			})
		}

		/* 인증번호 확인 */

		function emailCheck() {
			var userEmail = $("#email").val().trim();
			var authNum = $("#authNum").val().trim();
			console.log(authNum);
			$.ajax({
				url : "emailCheck.do",

				data : {
					userEmail : userEmail,
					authNum : authNum
				},
				success : function(data) {
					console.log(data + " - ajax");
					console.log(data.isEmpty);

					if (data.isEmpty == true) {
						alert("인증번호가 일치합니다.");
						$("#authNum").attr("readonly", true);
						$("#authNumCheck").val(1);
					} else {
						alert("인증번호가 일치하지 않습니다. 인증요청을 다시 시도해주세요.");
						$("#authNumCheck").val(0);
						$("#authNum").focus();
					}
				},
				error : function() {
					console.log("ajax 통신 실패");
				}
			});
		}

		/* 회원가입 유효성 검사 */
		function join() {
			/* 공란 검사 변수*/
			var id = $.trim($("#userId").val());
			var pwd = $.trim($("#userPwd").val());
			var pwd2 = $.trim($("#userPwd2").val());
			var pwdAnswer = $.trim($("#pwdAnswer").val());
			var name = $.trim($("#userName").val());
			var birth = $.trim($("#birth").val());
			var phone = $.trim($("#phone").val());
			var email = $.trim($("#email").val());
			var certifyCode = $.trim($("#authNum").val());

			/* 공란 검사 */
			if (!id) {
				alert($("#userId").attr("data-name") + " 항목을 입력하세요.");
				$("#userId").focus();
				return false;
			} else if (!pwd) {
				alert($("#userPwd").attr("data-name") + " 항목을 입력하세요.");
				$("#userPwd").focus();
				return false;
			} else if (!pwd2) {
				alert($("#userPwd2").attr("data-name") + " 항목을 입력하세요.");
				$("#userPwd2").focus();
				return false;
			} else if (!pwdAnswer) {
				alert($("#pwdAnswer").attr("data-name") + " 항목을 입력하세요.");
				$("#pwdAnswer").focus();
				return false;
			} else if (!name) {
				alert($("#userName").attr("data-name") + " 항목을 입력하세요.");
				$("#userName").focus();
				return false;
			} else if (!birth) {
				alert($("#birth").attr("data-name") + " 항목을 입력하세요.");
				$("#birth").focus();
				return false;
			} else if (!phone) {
				alert($("#phone").attr("data-name") + " 항목을 입력하세요.");
				$("#phone").focus();
				return false;
			} else if (!email) {
				alert($("#email").attr("data-name") + " 항목을 입력하세요.");
				$("#email").focus();
				return false;
			} else if (!certifyCode) {
				alert($("#authNum").attr("data-name") + " 항목을 입력하세요.");
				$("#authNum").focus();
				return false;
			}

			/* 정규식표현 변수 */
			var userId = document.getElementById("userId");
			var userPwd = document.getElementById("userPwd");
			var userPwd2 = document.getElementById("userPwd2");
			var userName = document.getElementById("userName");
			var birth = document.getElementById("birth");
			var phone = document.getElementById("phone");

			/* 정규표현식 검사 */
			// 아이디
			if (!chk(/^[a-z][a-z\d]{3,11}$/, userId,
					"아이디는 영문 소문자로 시작하여 숫자를 조합해 4~12자로 입력해주세요."))
				return false;

			if (!chk(/[0-9]/, userId, "아이디는 숫자를 한 개 이상 포함해주세요."))
				return false;

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

			// 이름
			if (!chk(/^[가-힣]{2,}$/, userName, "이름은 한글로 2글자 이상 입력해주세요."))
				return false;

			// 생년월일
			if (!chk(
					/^(19|20)[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/,
					birth, "생년월일 8자리를 입력해주세요."))
				return false;

			// 휴대폰번호(숫자만 입력)
			if (!chk(/^01[0179][0-9]{7,8}$/, phone,
					"휴대폰 번호는 '-'를 제외한 숫자만 입력해주세요."))
				return false;

			// 아이디 중복 체크 여부 
			if ($("#idDuplicateCheck").val() == 0) {
				alert("사용 가능한 아이디를 입력해 주세요.");
				$("#userId").focus();
				return false;
			}
			
			// 이메일 인증 여부
			if ($("#authCheck").val() == 0) {
				alert("이메일 인증을 해주세요.");
				$("#email").focus();
				return false;
			}

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