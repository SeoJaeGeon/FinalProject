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
<link href="${ contextPath }/resources/css/member/myMovieReviewList.css"
	rel="stylesheet" type="text/css">
<title>내가 쓴 영화 리뷰</title>
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
				<p class="listArrange">My KASS > My Menu > 내가 쓴 영화 리뷰</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />
			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">내가 쓴 영화 리뷰</h2>
						<table class="contentTable">
							<c:if test="${ empty list }">
								<tr>
									<td colspan="2">
										<div class="emptyList">등록된 리뷰가 존재하지 않습니다.</div>
									</td>
								</tr>
							</c:if>
							<c:if test="${ list ne null }">
								<c:forEach var="mrv" items="${ list }">
									<tr>
										<td class="left"><img
											src="${ contextPath }/resources/images/movie_image/${ mrv.attachment.renameFileName }"
											class="poster"></td>
										<td class="right">
											<div>
												<div class="movieTitle">${ mrv.movieName }</div>

												<div class="writerDate">${ mrv.reEnrollDate }</div>

												<div class="reviewContent">${ mrv.reContent }</div>
											</div>
											<div class="bottomTdDiv">
												<div>
													<div class="scoreDiv">
														<c:if test="${ mrv.reScore eq 'G'}">
															<img src="${ contextPath }/resources/images/up_white.png"
																class="score">&nbsp;&nbsp;<span class="scoreText">좋았어요</span>
														</c:if>
														<c:if test="${ mrv.reScore eq 'B'}">
															<img
																src="${ contextPath }/resources/images/down_white.png"
																class="score">&nbsp;&nbsp;<span class="scoreText">별로에요</span>
														</c:if>
													</div>
												</div>
												<div class="buttons">
													<a
														href="javascript:openReviewUpdateForm(${ mrv.movieNo },'${ mrv.movieName }', '${ mrv.reContent }', '${ mrv.reScore }');"
														id="update" class="update">수정</a> <a
														href="javascript:deleteReview(${ mrv.movieNo },'${ mrv.movieName }');"
														id="delete" class="delete">삭제</a>
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
										<c:url var="before" value="movieReviewList.do">
											<c:param name="page" value="${ pi.currentPage -1 }" />
										</c:url>
										<a class="pageOne" href="${ before }">&lt;</a>
									</c:if>

									<!-- 페이지 숫자 -->
									<c:forEach var="p" begin="${ pi.startPage }"
										end="${ pi.endPage }">
										<c:if test="${ p eq pi.currentPage }">
											<a class="pageNone">${ p }</a>
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url var="pagination" value="movieReviewList.do">
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
										<c:url var="after" value="movieReviewList.do">
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
	<div id="myModal" class="modal" data-backdrop="static"
		data-keyboard="false">
		<div class="contentDiv">
			<div class="contentModal">
				<form id="rupdateForm" name="rupdateForm" method="post">
					<input type="hidden" name="movieNo" value="" id="modalMovieNo">
					<table class="reviewTable">
						<tr>
							<td colspan="3" class="topTd">
								<p class="modalMovieTitle" id="modalMovieName"></p>
							</td>
						</tr>
						<tr>

							<td class="side tr2">
								<div class="tabs cf">

									<input type="radio" name="tabs" id="tab1" value="G"
										onclick="change(this.value);"> <label for="tab1">
										<div class="scoreDiv2">
											<img src="${ contextPath }/resources/images/up_black.png"
												class="scoreImg goodImg">
										</div> <span class="scoreText2 goodText">좋았어요^^</span>
									</label>
								</div>
							</td>
							<td class="tr2">
								<div class="imgAlign">
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
							</td>
							<td class="side tr2">
								<div class="tabs cf">

									<input type="radio" name="tabs" id="tab2" value="B"
										onclick="change(this.value);"> <label for="tab2">
										<div class="scoreDiv2">
											<img src="${ contextPath }/resources/images/down_white.png"
												class="scoreImg badImg">
										</div> <span class="scoreText2 badText">별로에요;;</span>
									</label>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="3"><textarea cols="80" rows="5" maxlength="190"
									placeholder="내용을 입력해주세요." name="reContent" class="rContent"
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

					<div class="buttons2">
						<button id="cancel" class="cancel" onclick="close_pop();">취소</button>
						<button id="next" class="next" onclick="updateMovieReview();">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script>
		// 리뷰작성 모달
		function openReviewUpdateForm(movieNo, movieName, reContent, reScore,
				event) {

			$("#modalMovieNo").val(movieNo);
			$("#modalMovieName").text(movieName);
			$("#rContent").val(reContent);
			console.log(reScore)
			if (reScore == "G") {
				$("#tab1").prop('checked', true);
				$(".goodImg").attr("src",
						"${ contextPath }/resources/images/up_black.png");
				$(".badImg").attr("src",
						"${ contextPath }/resources/images/down_white.png");
			} else {
				$("#tab2").prop('checked', true);
				$(".goodImg").attr("src",
						"${ contextPath }/resources/images/up_white.png");
				$(".badImg").attr("src",
						"${ contextPath }/resources/images/down_black.png");

			}
			//document.getElementById("myModal").style.display = "block";
			$("#myModal").show();
		};

		//팝업 Close 기능
		function close_pop() {
			//document.getElementById("myModal").style.display = "none";
			$("#myModal").hide();
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

		// 글자수 실시간 카운팅
		$("#rContent").keyup(function(e) {
			var rContent = $(this).val();
			$("#count").html(rContent.length);
			console.log(rContent.length);
			if (rContent.length > 190) {
				alert("최대 190자까지 입력 가능합니다.");
			}
		});

		// 리뷰 수정
		function updateMovieReview() {
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

			var rupdateForm = $("form[name=rupdateForm]").serialize();

			$.ajax({
				url : "mrupdate.do",
				data : rupdateForm,
				type : "post",
				async:false,
				success : function(data) {
					$("#myModal").hide();
					alert("리뷰가 수정되었습니다.");

				},
				error : function(e) {
					console.log(e);
					console.log("통신 실패!");
				}
			});

			return true;
		}

		// 리뷰 수정
		function deleteReview(movieNo, movieName) {
			console.log("movieNo" + movieNo);
			if (confirm("[" + movieName + "] 에 작성한 리뷰를 정말 삭제하시겠습니까?")) {
				location.href = 'mrdelete.do?movieNo=' + movieNo;
				alert("리뷰가 삭제되었습니다.");
			}

		}
	</script>
	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
</body>

</html>