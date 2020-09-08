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
<link href="${ contextPath }/resources/css/member/myVODView.css"
	rel="stylesheet" type="text/css">
<title>VOD 다시보기</title>
</head>
<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />


		<div class="content">
			<div class="listArrangeDiv">
				<p class="listArrange">My KASS > Movie 내역 > VOD 구매 내역 > VOD 바로
					보기</p>
			</div>
			<jsp:include page="../../views/common/memberMenu.jsp" />

			<section class="rightContent">
				<section class="content-1">
					<section class="content-1-1">
						<h2 class="title">VOD 바로보기</h2>
						<table class="contentTable">
							<tr class="topLine">
								<td>
									<p class="movieTitle">겨울왕국</p>
								</td>
							</tr>
							<tr>
								<td>
									<div class="vodDiv">
										<video src="../video/169.mp4" controls="controls" class="vod"
											poster="../images/겨울왕국2.jpg"></video>
									</div> <!-- <div class="vodDiv">
                                            <video src="../video/11.mp4" controls="controls" class="vod"></video>
                                        </div>
                                        <div class="vodDiv">
                                            <video src="../video/full.mp4" controls="controls" class="vod"></video>
                                        </div> -->
								</td>
							</tr>
						</table>

						<div class="buttons">
							<button id="goList" class="goList">목록으로</button>
							<button id="insertReview" class="insertReview">평가해주세요!</button>
						</div>

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
</body>
</html>