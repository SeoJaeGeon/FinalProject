<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>손만두</title>
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

        .content1 {
            width: 100%;
            height: 1000px;
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


        /* 검색 창 */
        #Manager-form1 {
            height: 50px;
            width: 300px;
            margin: auto;
            margin-top: 40px;
        }

        #Manager-p1 {
            align-content: center;
            color: white;
            font-size: 40px;
            margin-left: 20px;

        }

        #search_Text {
            font-size: 16px;
            width: 80%;
            padding: 10px;
            border: 0px;
            outline: none;
            float: left;
            font-family: 'NanumBarunGothic', sans-serif;
        }

        #search_Btn {
            width: 20%;
            height: 100%;
            border: 0px;
            background: purple;
            outline: none;
            float: right;
            color: #ffffff;
            font-family: 'NanumBarunGothic', sans-serif;
        }

        /* 검색 창 */

        /* 로고 */
        #logo_img {
            display: block;
            margin: auto;
            margin-top: 20px;
        }

        /* 로고 */
        /* 로그인, 회원가입 */
        .login_bar {
            float: right;
            text-decoration: none;
            color: silver;
            font-weight: bold;
            font-size: 21px;
            margin-right: 50px;
            margin-top: 20px;
            font-family: 'NanumBarunGothic', sans-serif;
        }

        .login_bar:hover {
            text-decoration: none;
            color: gray;
        }

        /* 로그인, 회원가입 */

        /* 네비게이션 바*/
        #navi {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        #navi>li {
            float: left;
            width: 20%;
        }

        #navi li a {
            display: block;
            text-decoration: none;
            text-align: center;
            color: white;
            font-weight: bold;
            font-size: 21px;
            line-height: 40px;
        }

        #navi li a:hover {
            color: red;
        }

        /* 네비게이션 바*/

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
            background: rgb(197, 197, 197);
        }

        #stay_footer {
            width: 100%;
            height: 500px;
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
            margin-top: 30px;
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


        }

        #movie-table{
            font-size: 25px;
            text-align: center
        }

       


            /* 위 까지가 캘린더 */

        /* 영화 상영 선택 */

    </style>
</head>



<body>
    <div id="stay1">
        <div id="wrap_stay">
            <header>
                <section id="header-1">
                    <form id="Manager-form1">
                        <!-- 왼쪽 상단 관리자 페이지 부분 -->
                        <p id=Manager-p1>관리자 페이지</p>
                    </form>
                </section>
                <section id="header-2">
                    <img src="${ contextPath }/resources/images/logo_white.png" id="logo_img">
                </section>
                <section id="header-3">
                    <a href="#" class="login_bar">회원가입</a>
                    <a href="#" class="login_bar">로그인</a>
                </section>
            </header>

            <nav>
                <ul id="navi">
                    <li><a href="#">영화설정</a></li>
                    <li><a href="#">VOD 설정</a></li>
                    <li><a href="#">스낵 설정</a></li>
                    <li><a href="#">굿즈 설정</a></li>
                    <li><a href="#">관리</a></li>
                </ul>
            </nav>
        </div>
    </div>
    <section id="content">
        <div id="stay2">
            <div id="wrap_stay">
                <div class="content1">
                    <!-- 내부 시작 부분 -->
                    <div id="content1-1">
                        <h1 id="content1-h1-1" style="align-content: center">영화정보 삭제</h1>
                    </div>
                    <div id="manager01">
                        <div class="manager-formQ1" id="manager02" style="overflow: auto">
                                <table class="table" id="movie-table">
                                        <thead class="thead-light" id="movie-table1">
                                          <tr>
                                            <th scope="col">영화 번호</th>
                                            <th scope="col">영화 제목</th>
                                            <th scope="col"></th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <th scope="row">1</th>
                                            <td>태극기 휘날리며</td>
                                            <td><button type="button" class="btn btn-primary">정보 삭제</button></td>
                                          </tr>
                                          <tr>
                                            <th scope="row">2</th>
                                            <td>반도</td>
                                            <td><button type="button" class="btn btn-primary">정보 삭제</button></td>
                                          </tr>
                                          <tr>
                                            <th scope="row">3</th>
                                            <td>컨저링</td>
                                            <td><button type="button" class="btn btn-primary">정보 삭제</button></td>
                                          </tr>
                                          
                                        </tbody>
                                      </table>
                            <!--아래부터 캘린더 코드-->
                            <div id="calendar-wrap">
                                
                            </div>
                        </div>
                        <!-- 위 까지가 캘린더 코드 -->
            

                        
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