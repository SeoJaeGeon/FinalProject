<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ contextPath }/resources/css/member/moviePurchaseList.css" rel="stylesheet" type="text/css">
	<title>영화 예매 내역</title>
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
				<p class="listArrange">My KASS > Movie 내역 > 영화 예매 내역</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">영화 예매 내역</h2>
						<table class="contentTable">
							<c:if test="${ empty list }">
								<tr>
									<td colspan="2">
										<div class="emptyList"> 예매한 영화가 존재하지 않습니다.</div>
									</td>
								</tr>
							</c:if>
							<c:if test="${ list ne null }">
								<c:forEach var="mpl" items="${ list }">
									<tr class="oneBox">
										<td class="left"><img src="${ contextPath }/resources/images/movie_image/${ mpl.attachment.renameFileName }"
											 class="poster"></td>
										<td class="right">
											<div>
												<div class="movieTitle">${ mpl.movieName }</div>
												<p class="datetime">
													<span class="date startDate" id="startDate">${ mpl.resDate }</span> | <span class="time startTime" id="startTime">${
														mpl.startTime }</span> -
													<span class="time" id="endTime">${ mpl.endTime }</span>
												</p>
												<p class="areacount">
													<span class="area">${ mpl.maName } ${ mpl.roomNumber }관</span>
													/
													<c:if test="${ mpl.urPeople gt 0 && mpl.urPeople2 eq 0}">
														<span class="count">일반 ${ mpl.urPeople }명 관람 ( 좌석 : ${ mpl.urRes } )</span>
													</c:if>
													<c:if test="${ mpl.urPeople eq 0 && mpl.urPeople2 gt 0}">
														<span class="count">청소년 ${ mpl.urPeople2 }명 관람 ( 좌석 : ${ mpl.urRes } )</span>
													</c:if>
													<c:if test="${ mpl.urPeople gt 0 && mpl.urPeople2 gt 0}">
														<span class="count">일반 ${ mpl.urPeople }명, 청소년 ${ mpl.urPeople2 } 명 관람 ( 좌석 : ${ mpl.urRes } )</span>
													</c:if>

												</p>

											</div>
											<div class="bottomTdDiv">
												<div>
													<div class="scoreDiv1">
														<c:if test="${ mpl.reScore eq null}">
															<a href="javascript:openReviewInsertForm('${ mpl.resDate }', '${
														mpl.startTime }', ${ mpl.movieNo }, '${ mpl.movieName }');" class="goReview">평가해
																주세요!</a>
														</c:if>
														<c:if test="${ mpl.reScore eq 'G'}">
															<img src="${ contextPath }/resources/images/up_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
														</c:if>
														<c:if test="${ mpl.reScore eq 'B'}">
															<img src="${ contextPath }/resources/images/down_white.png" class="score">&nbsp;&nbsp;<span class="scoreText">별로에요</span>
														</c:if>
													</div>
												</div>
												<div>

													<div class="buttons1">
														<button id="movieCancel" class="cancel" onclick="movieCancel();">예매 취소</button>
													</div>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
						<!-- 페이징바 -->
						<c:if test="${ pi.listCount ne 0 }">
						<div class="pagination">
							<div class="pageOuterDiv">
								<div class="pageInnerDiv">
									<!-- 이전 -->
									<c:if test="${ pi.currentPage <= 1 }">
										<a class="pageNone">&lt;</a>
									</c:if>
									<c:if test="${ pi.currentPage > 1 }">
										<c:url var="before" value="moviePurchaseList.do">
											<c:param name="page" value="${ pi.currentPage -1 }" />
										</c:url>
										<a class="pageOne" href="${ before }">&lt;</a>
									</c:if>

									<!-- 페이지 숫자 -->
									<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
										<c:if test="${ p eq pi.currentPage }">
											<a class="pageNone">${ p }</a>
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url var="pagination" value="moviePurchaseList.do">
												<c:param name="page" value="${ p }" />
											</c:url>
											<a class="pageOne" href="${ pagination }">${ p }</a>
										</c:if>
									</c:forEach>

									<!-- 이후 -->
									<c:if test="${ pi.currentPage >= pi.maxPage }">
										<a class="pageNone">&gt;</a>
									</c:if>
									<c:if test="${ pi.currentPage < pi.maxPage }">
										<c:url var="after" value="moviePurchaseList.do">
											<c:param name="page" value="${ pi.currentPage + 1 }" />
										</c:url>
										<a class="pageOne" href="${ after }">&gt;</a>
									</c:if>
									<!-- 버튼 비활성화 일 때-->
									<!-- <a class="pageNone">&lt;&lt;</a> -->
								</div>
							</div>
						</div>
						</c:if>
					</section>
				</section>
			</section>
		</div>
	</div>
	<div id="myModal" class="modal">
		<div class="contentDiv">
			<div class="contentModal">
				<form id="rinsertForm" name="rinsertForm" method="post">
					<input type="hidden" name="movieNo" id="modalMovieNo">
					
					<table class="reviewTable">
						<tr>
							<td colspan="3" class="topTd">
								<p class="modalMovieTitle" id="modalMovieName"></p>
							</td>
						</tr>
						<tr>
							<td class="side tr2">
								<div class="tabs cf">
									<input type="radio" name="tabs" id="tab1" value="G" onclick="change(this.value);" checked> <label for="tab1">
										<div class="scoreDiv2">
											<img src="${ contextPath }/resources/images/up_black.png" class="scoreImg goodImg">
										</div> <span class="scoreText2 goodText">좋았어요^^</span>
									</label>
								</div>
							</td>
							<td class="tr2">
								<div class="imgAlign">
									<c:if test="${ loginUser.attachment.renameFileName != null }">
										<img src="${ contextPath }/resources/images/muploadFiles/${ loginUser.attachment.renameFileName }" class="profileImg">
									</c:if>
									<c:if test="${ loginUser.attachment.renameFileName == null }">
										<img src="${ contextPath }/resources/images/defaultPropfieImg.png" class="profileImg" id="profileImg">
									</c:if>
								</div>
							</td>
							<td class="side tr2">
								<div class="tabs cf">
									<input type="radio" name="tabs" id="tab2" value="B" onclick="change(this.value);"> <label for="tab2">
										<div class="scoreDiv2">
											<img src="${ contextPath }/resources/images/down_white.png" class="scoreImg badImg">
										</div> <span class="scoreText2 badText">별로에요;;</span>
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="3"><textarea cols="80" rows="5" maxlength="190" placeholder="내용을 입력해주세요." name="reContent" class="rContent"
								 id="rContent" required></textarea></td>
						</tr>
						<tr>
							<td colspan="3">
								<div id="textLimit" class="textLimit" id="textLimit">
									(<span class="count" id="count">0</span> / 최대 190글자)
								</div>
							</td>
						</tr>
					</table>

					<div class="buttons">
						<button id="cancel" class="cancel" onclick="close_pop();">취소</button>
						<button id="next" class="next" onclick="insertReview();">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function () {
			// 예매 취소 버튼 처리
			$(".oneBox").each(function () {
				var startDate = $(this).find(".startDate").text();
				var year = startDate.split("-")[0];
				var month = startDate.split("-")[1];
				var date = startDate.split("-")[2];

				var startTime = $(this).find(".startTime").text();
				var hour = startTime.split(":")[0];
				var minute = startTime.split(":")[1];

				var resultDate = new Date(year, month - 1, date, hour, minute, '00');
				var today = new Date();

				if (today < resultDate) {
					$(this).find(".cancel").show();
				} else {
					$(this).find(".cancel").hide();
				}

			});
		});


		// 리뷰작성 view
		function openReviewInsertForm(startDate, startTime, movieNo, movieName) {
				// 상영 시작 전 리뷰 작성 처리
				var year = startDate.split("-")[0];
				var month = startDate.split("-")[1];
				var date = startDate.split("-")[2];
				
				var hour = startTime.split(":")[0];
				var minute = startTime.split(":")[1];

				console.log(year + "년" + month + "월" + date + "일 " + hour + "시 " + minute + "분 입니다");

				var resultDate = new Date(year, month - 1, date, hour, minute, '00');
				var today = new Date();
				
				if (today.getTime() < resultDate.getTime()) {
					alert("상영이 시작되지 않은 영화입니다. 영화 관람 후 리뷰 작성이 가능합니다.");
					return false;
				}

			$("#modalMovieNo").val(movieNo);
			$("#modalMovieName").text(movieName);
			document.getElementById("myModal").style.display = "block";

		};

		//팝업 Close 기능
		function close_pop() {
			document.getElementById("myModal").style.display = "none";
		};

		function change(value) {
			console.log(value);

			if (value == "G") {
				$(".goodImg").attr("src",
					"${ contextPath }/resources/images/up_black.png");
				$(".badImg").attr("src",
					"${ contextPath }/resources/images/down_white.png");

			} else {
				$(".goodImg").attr("src",
					"${ contextPath }/resources/images/up_white.png");
				$(".badImg").attr("src",
					"${ contextPath }/resources/images/down_black.png");
			}
		}

		$("#rContent").keyup(function (e) {
			var rContent = $(this).val();
			$("#count").html(rContent.length); // 글자수 실시간 카운팅
			console.log(rContent.length);
			if (rContent.length > 190) {
				alert("최대 190자까지 입력 가능합니다.");
			}
		});

		function insertReview() {
			var rContent = $("#rContent").val();

			/* 공란 검사 변수*/
			var rContent2 = $.trim($("#rContent").val());

			/* 공란 검사 */
			if (!rContent2) {
				alert("내용을 10글자 이상 입력해주세요.");
				$("#rContent").focus();
				return false;
			}

			if (rContent.length < 10) {
				alert("내용을 10글자 이상 입력해주세요.");
				$("#rContent").focus();
				return false;
			}

			var rinsertForm = $("form[name=rinsertForm]").serialize();

			$.ajax({
				url: "mrinsert.do",
				data: rinsertForm,
				type: "post",
				success: function (data) {
					document.getElementById("myModal").style.display = "none";
					alert("리뷰가 등록되었습니다. 내가 쓴 영화 리뷰에서 확인해 주세요.");
				},
				error: function (e) {
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