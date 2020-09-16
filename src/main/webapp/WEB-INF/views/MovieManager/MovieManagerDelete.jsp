<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kh.kass.common.*" %>
<%@ page import="com.kh.kass.movie.model.vo.*" %>
<!doctype html>
<html lang="ko">
 
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>KASS CINEMA</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
    

     <!-- 합쳐지고 최소화된 최신 CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

     <!-- 부가적인 테마 -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 
     <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

     <!-- c:set 설정 -->
	    <c:set var="contextPath"
		value="${ pageContext.servletContext.contextPath }" scope="application" />
	



    <style>
        header,
        nav,
        section,
        article,
        aside,
        footer {
            /*border: 1px solid rgb(236, 159, 159);*/
            box-sizing: border-box;
            display: block;
        }

        body {
            width: 100%;
            background: white;
            margin: auto;
        }

        header {
            width: 100%;
            height: 150px;
        }

        nav {
            width: 100%;
            height: 70px;
        }

        #content {
            width: 100%;
            /* border: 1px rgb(236, 159, 159) solid; */
        }

        footer {
            width: 100%;
            height: 150px;
            float: left;
            background: rgb(145, 145, 145);
        }

        header>section {
            float: left;
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

        .content1 {
            width: 100%;
            height: 2000px;
            /* border: 1px rgb(236, 159, 159) solid;  */

        }

        #img1,
        #img2,
        #img3 {
            width: 500px !important;
            height: 400px !important;
            margin: auto;
        }

        .carousel {
            width: 100%;
        }


       

        /* 로고 */
        #logo_img {
            display: block;
            margin: auto;
            margin-top: 20px;
        }

        /* 로고 */
      
       

        /* 하단 풋터 부분 */
        #footer1>a {
            text-decoration: none;
            font-weight: 600;
            line-height: 25px;
            color: black;
            margin: 0 10px;
        }

        #footer1>a:hover {
            color: deepskyblue;
        }

        #footer2>p {
            margin: 0;
            font-size: 12px;
        }

        #footer_logo {
            float: left;
            margin-right: 30px;
            width: 300px;
            height: 50px;
        }

        #footer3>* {
            margin-left: 25px;
        }

        /* 하단 풋터 부분 */

        /* 영역 나누기 */
        #stay1 {
            width: 100%;
            border: 1px white solid;
            background: rgb(145, 145, 145);
        }

        #stay2 {
            width: 100%;
            border: 1px white solid;
            background: white;
        }

        #stay_footer {
            width: 100%;
            height: 150px;
            border: 1px black solid;
            background: rgb(145, 145, 145);
        }

        #wrap_stay {
            width: 1500px;
            margin: auto;
        }

        #manager01 {
            width: 80%;
            height: 80%;
            border: 3px solid black;
            margin: auto;
            margin-top: 40px;
            background: white;
        }

        #content1-1 {
            width: 80%;
            margin: auto;
            margin-top: 130px;
        }

        #content1-h1-1 {
            width: 290px;
            align-content: center;
            margin: auto;
        }

        .manager-formQ1 {
            width: 20%;
            height: 100%;
            border: 1px solid black;
            display: block;
            float: left;
        }

        #manager02 {
            width: 100%;
            height: 100%;
            display: block;
			background-color: #f2fbff;

        }

        #movie-table{
            font-size: 25px;
            text-align: center
        }

       


            /* 위 까지가 캘린더 */

        /* 영화 상영 선택 */
        
        /*리스트 불러오기 대기*/
.movie-list-info {
	width: 230px;
	height: 600px;
	margin:30px;
	float:left;
}
.tit-area {
	text-align:center;
	width: 100%;
	padding-top: 10px;
	padding-left: 15px;
}


.age {
	float: left;
	font-size: 20px;
	font-weight: bold;
	width: 220px;
	white-space: nowrap;
}


.btn-util {
	width: 100%;
	height: 10%;
}


/* 이미지 크기 설정 */
.deleteImg{ 
	width: 240px;
	height:300px;
}

/* h1 크기 설정 */
.movie_list-h1{
	font-size:25px;
	width:240px;
	height:80px;
	float:left;
}
/* 상영 종료 버튼 */
.movie_statusN {
	float: left;
	margin-top: 2px;
	margin-left:75px;
	padding-top: 7px;
	background: rgb(231, 76, 60);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
}
/* 재 상영 버튼*/
.movie_statusY {
	float: left;
	margin-top: 2px;
	margin-left:75px;
	padding-top: 7px;
	background: rgb(114, 168, 98);
	color: white;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 19px;
	font-family: 'NanumBarunGothic', sans-serif;
}

/* 모달창 세팅 */
#Xspan{
margin-top:-20px;
}
/* 모달 창에서의 이미지 크기 설정*/
.deleteImgModal{
	width : 500px;
	height : 600px;
}
/*모달창 자체 크기 설정*/
.modal-content{
	width:530px;
	
}


    </style>
</head>



<body>
     <jsp:include page="../../views/common/manager.jsp" />
    <section id="content">
        <div id="stay2">
            <div id="wrap_stay">
                <div class="content1">
                    <!-- 내부 시작 부분 -->
                    <div id="content1-1">
                        <h1 id="content1-h1-1" style="align-content: center">영화 개봉 변경</h1>
                    </div>
                <div id="manager01">
                    <div class="manager-formQ1" id="manager02" style="overflow: auto">
						<c:forEach var="movListFile" items="${ movListFile }">
							<div class="movie-list-info">
								<h1 class="movie_list-h1">${ movListFile.movieName }</h1>
									<img class="deleteImg" src="<%=request.getContextPath()%>${ movListFile.attachList[0].filePath }${ movListFile.attachList[0].renameFileName }">
									<input type="hidden" value="${ movListFile.movieNo }" id="movieNo"/>
								<div class="tit-area">
									<p class="age">${ movListFile.movieAge }세 이용가</p>
								</div>
								<div class="btn-util">
								<c:if test="${ movListFile.movieRstatus eq 'Y' }">
									<span class="movie_statusN" data-toggle="modal" data-target="#staticBackdrop2${movListFile.movieNo }">개봉 종료</span>
								</c:if>
								<c:if test="${ movListFile.movieRstatus eq 'N' }">
									<span class="movie_statusY" data-toggle="modal" data-target="#staticBackdrop3${movListFile.movieNo }">영화 개봉</span>
								</c:if>
								</div>
								
								
							</div>
							    <!-- 삭제하기 버튼을 누르면 생기는 모달창 -->
							<div class="modal fade" id="staticBackdrop2${movListFile.movieNo }" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="staticBackdropLabel">영화 개봉 변경하기</h5>
							        <button type="button" id="Xspan" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							       	<div id="modalbodysns1">
							       		<h1 id="snsh1_1">${ movListFile.movieName }&nbsp의<br>영화 상영을 정말로 중단하시겠습니까?</h1><br><br>
							       		<img class="deleteImgModal" src="<%=request.getContextPath()%>${ movListFile.attachList[0].filePath }${ movListFile.attachList[0].renameFileName }">
										<br>
							       	</div>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
							        <button type="button" class="btn btn-danger" id="${movListFile.movieNo }" onclick="movieDelete1(this.id)">상영종료</button>
							        <!-- 삭제버튼을 누르면 실행되는 function -->
										<script>
										function movieDelete1(id){
											alert("영화가 성공적으로 상영종료 했습니다!");
											return location.href="MoviemanagerDeletePageFile.do?MovieNo="+id;
										}
										</script>
							      </div>
							    </div>
							  </div>
							</div>
							<!-- 삭제하기 버튼을 누르면 생기는 모달창 여기까지 -->
							<!-- 재 상영 버튼을 누르면 생기는 모달창 -->
							<div class="modal fade" id="staticBackdrop3${movListFile.movieNo }" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="staticBackdropLabel">영화 개봉 변경하기</h5>
							        <button type="button" id="Xspan" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							       	<div id="modalbodysns1">
							       		<h1 id="snsh1_1">${ movListFile.movieName }&nbsp의<br>영화를 정말로 개봉하시겠습니까?</h1><br><br>
							       		<img class="deleteImgModal" src="<%=request.getContextPath()%>${ movListFile.attachList[0].filePath }${ movListFile.attachList[0].renameFileName }">
										<br>
							       	</div>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
							        <button type="button" class="btn btn-success" id="${movListFile.movieNo }" onclick="movieDelete2(this.id)">영화개봉</button>
							        <!-- 삭제버튼을 누르면 실행되는 function -->
										<script>
										function movieDelete2(id){
											alert("영화가 성공적으로 개봉되었습니다!");
											return location.href="MoviemanagerDeletePageFile2.do?MovieNo="+id;
										}
										</script>
							      </div>
							    </div>
							  </div>
							</div>
							<!-- 삭제하기 버튼을 누르면 생기는 모달창 여기까지 -->
						</c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="stay_footer">
        <div id="wrap_stay">
            <footer>
                <div id="footer1">
                    <a href="#">회사소개</a> |
                    <a href="#">이용약관</a> |
                    <a href="#">개인정보이용방침</a> |
                    <a href="#">고객센터</a>
                </div>
                <div id="footer2">
                    <img src="${ contextPath }/resources/images/logo_white.png" id="footer_logo">
                    <p>
                        서울 특별시 테헤란로 10길 9 (우)06234 ARS 1544-XXXX<br>
                        대표자명 안태상 개인정보보호책임자 안태상 사업자등록번호 XXX-XX-XXXXX · 통신판매업신고번호 제 833호<br>
                        COPYRIGHT@Kasscinema, Inc, All rights reserved
                    </p>
                </div>
                <div id="footer3">
                    <a>F</a>
                    <a>Y</a>
                    <a>I</a>
                </div>
            </footer>
        </div>
    </div>
    

    
    
</body>

</html>