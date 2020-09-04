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
	


    <!-- 캘린더 전용 -->
     <script src="https://code.jquery.com/jquery-3.2.1.js"></script>

        <link rel="stylesheet" href="${ contextPath }/resources/css/jquery-ui.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>


        <script type='text/javascript' src='http://code.jquery.com/jquery-1.8.3.js'></script>



        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">

        <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>

        <script src="${ contextPath }/resources/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
     
        <!-- 바로 위까지 -->
        <script type='text/javascript'>

            $(function(){
        
                $('.input-group.date').datepicker({
        
                    calendarWeeks: false,
        
                    todayHighlight: true,
        
                    autoclose: true,
        
                    format: "yyyy/mm/dd",
        
                    language: "kr"
        
                });
        
            });

         
        
            </script>


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
            height: 2000px;
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
        
        /* 메인 단 */

        #manager02{
            width: 100%;
            height: 50px;
            display: block;
            
            
        }

        #manager02-1{
            width:25%;
            height:50px;
            float: left;
            
        }


        #dropdownMenu1{
            width: 100%;
            height: 50px;
            
        }

        #manager03{
            width:35%;
            height:50px;
            display: block;
            float: left;
        }

        #manager04{
            width:25%;
            height:50px;
            display: block;
            float: left;
        }

        #manager05{
            width:15%;
            height:50px;
            display: block;
            float: left;
        }

        #manager06{
            margin: auto;
            margin-top: 10px;
            margin-left:57%;
            float: left;
        }

        #movie-manager04-button1, #movie-manager04-button2{
            width: 70%;
            height: 20%;
            margin-left:50px;
            margin-top:20px; 
        }

        #button-01{
            width: 80%;
            height:80%;
            margin: auto;
            margin-left: 18px;
            margin-top: 3px;
        }

        #table-div-01{
            width: 100%;
            height: 500px;
            border:1px solid black;
        }

        #table-02{
            font-size: 23px;
            text-align: center;
        }
        
        #manager2-01{
            width: 50%;
            height: 1047px;
            border: 1px solid black;
            float: left;
        }

        #manager2-02{
            width: 50%;
            height: 1047px;
            border: 1px solid red;
            float: left;
            
            
        }

        .manager2-div{
            width:80%;
            margin-left: 60px;
            height: 25%;
            float:left;
        }

       .manager2-2-div{
            width:80%;
            margin-left: 60px;
            margin-top: 100px;
            height: 30%;
            border: 1px solid black;
            float:left;
       }

       #manager2-id-div1{
           margin-top: 30px;
           height: 450px;
       }
        
       

            /* 영역 나누기 */


        /* 달력 부분 */

        #container-1{
            width: 100%;
            height: 100%;
        }

        .datepicker{
            top:1030px !important;
            width: 430px;
            height: 260px;
        }

        .datepicker table tr td, .datepicker table tr th {
        text-align: center;
        width: 30px;
        height: 30px;
        border-radius: 4px;
        border: none;
        font-size: 15px;
        }

        .datepicker .datepicker-switch {
            width: 550px;
        }

        .table-condensed>tbody>tr>td, .table-condensed>tbody>tr>th, .table-condensed>tfoot>tr>td, .table-condensed>tfoot>tr>th, .table-condensed>thead>tr>td, .table-condensed>thead>tr>th {
            padding: 5px;
        }
    </style>
</head>




<body>
        <!-- 드롭박스 선택 시 알러트 뜨는 script -->
        <script>
                function jsFunction(value)
                      {
                          alert(value);
                      }
        </script>


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
                    <img src="image/logo_white.png" id="logo_img">
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
                        <h1 id="content1-h1-1" style="align-content: center">영화 상영 등록</h1>
                    </div>
                    <div id="manager01">
                        <div id="manager02">
                            <!-- 위에 상단바 -->
                            <div class="dropdown" id="manager02-1">
                               <!-- 맨위 날짜 선택 부분 -->
                                <select id ="dropdownMenu1" name="ddl" onmousedown="this.value='';" onchange="jsFunction(this.value);">
                                        <option value='컨저링' id="dropdown-a">컨저링</option>
                                        <option value='어벤져스' id="dropdown-a">어벤져스</option>
                                        <option value='반도' id="dropdown-a">반도</option>
                                        <option value='태극기 휘날리며' id="dropdown-a">태극기 휘날리며</option>
                                </select>
                                
                            </div>
                            <div id="manager03">
                            <!-- 중앙 빈 공간 -->
                            </div>

                            <!-- 지역선택하는 부분 -->
                            <div id="manager04">
                                    <select id ="dropdownMenu1" name="dd2" onmousedown="this.value='';" onchange="jsFunction(this.value);">
                                            <option value='강남' id="dropdown-a">강남</option>
                                            <option value='건대' id="dropdown-a">건대</option>
                                            <option value='서울대입구' id="dropdown-a">서울대입구</option>
                                            <option value='홍대입구' id="dropdown-a">홍대입구</option>
                                    </select>


                            </div>

                            <div id="manager05">
                                <button type="button" class="btn btn-primary" id="button-01">확인</button>


                            </div>
                        </div>
                        <div id="table-div-01">
                            <table class="table table-striped" id="table-02">
                                <thead>
                                    <tr>

                                        <td scope="col">영화</td>
                                        <td scope="col">관</td>
                                        <td scope="col">시간</td>
                                        <td scope="col">지점</td>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>반도</td> <!-- 영화 제목 들어갈 곳-->
                                        <td>1</td> <!-- 관이 들어갈 곳-->
                                        <td>09:00~11:00</td> <!-- 시간 -->
                                        <td>강남</td> <!-- 지점 명 -->
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <!-- 위에까지가 위쪽 영역 -->
                        <div id="manager2-01">
                            <!-- 선택 쪽 -->
                            <div class="manager2-div" id="manager2-01-01">
                                <!-- 영화 선택 -->
                                    <select id ="dropdownMenu1" name="dd3" onmousedown="this.value='';" onchange="jsFunction(this.value);">
                                            <option value='컨저링' id="dropdown-a">컨저링</option>
                                            <option value='어벤져스' id="dropdown-a">어벤져스</option>
                                            <option value='반도' id="dropdown-a">반도</option>
                                            <option value='태극기 휘날리며' id="dropdown-a">태극기 휘날리며</option>
                                    </select>
                                    
                            </div>
                            <div class="manager2-div" id="manager2-01-02">
                                <!-- 상영 시간대 선택 -->
                                    <select id ="dropdownMenu1" name="dd4" onmousedown="this.value='';" onchange="jsFunction(this.value);">
                                            <option value='컨저링' id="dropdown-a">상영 시간대 선택</option>
                                            <option value='어벤져스' id="dropdown-a">어벤져스</option>
                                            <option value='반도' id="dropdown-a">반도</option>
                                            <option value='태극기 휘날리며' id="dropdown-a">태극기 휘날리며</option>
                                    </select>
                            </div>
                            <div class="manager2-div" id="manager2-01-03">
                                <!-- 상영관 선택 -->
                                    <select id ="dropdownMenu1" name="dd5" onmousedown="this.value='';" onchange="jsFunction(this.value);">
                                            <option value='컨저링' id="dropdown-a">상영관 선택</option>
                                            <option value='어벤져스' id="dropdown-a">어벤져스</option>
                                            <option value='반도' id="dropdown-a">반도</option>
                                            <option value='태극기 휘날리며' id="dropdown-a">태극기 휘날리며</option>
                                    </select>
                            </div>
                            <div class="manager2-div" id="manager2-01-04">
                                <!-- 지점 선택 -->
                                    <select id ="dropdownMenu1" name="dd6" onmousedown="this.value='';" onchange="jsFunction(this.value);">
                                            <option value='컨저링' id="dropdown-a">컨저링</option>
                                            <option value='어벤져스' id="dropdown-a">어벤져스</option>
                                            <option value='반도' id="dropdown-a">반도</option>
                                            <option value='태극기 휘날리며' id="dropdown-a">태극기 휘날리며</option>
                                    </select>
                            </div>


                        </div>

                        <div id="manager2-02">
                            <!-- 달력 쪽-->
                            <div class="manager2-2-div">
                                    <div class="container" id="container-1">

                                           <p></p>
                                    
                                            <div class="input-group date">
                                    
                                                <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    
                                            </div>
                                    
                                        </div>
                            </div>
                            <div class="manager2-2-div" id="manager2-id-div1">
                                <table class="table" id="movie-table">
                                    <thead class="thead-light" id="movie-table1">
                                      <tr>
                                        <th scope="col">No</th>
                                        <th scope="col">시간</th>
                                        <th scope="col">삭제</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <th scope="row">1</th>
                                        <td>09:00~11:00</td>
                                        <td><button type="button" class="btn btn-primary">정보 삭제</button></td>
                                      </tr>
                                      <tr>
                                        <th scope="row">2</th>
                                        <td>10:20~12:30</td>
                                        <td><button type="button" class="btn btn-primary">정보 삭제</button></td>
                                      </tr>
                                      <tr>
                                        <th scope="row">3</th>
                                        <td>11:10~13:20</td>
                                        <td><button type="button" class="btn btn-primary">정보 삭제</button></td>
                                      </tr>
                                      
                                    </tbody>
                                  </table>
                            
                            </div>

                            <div class="manager-formQ1" id="manager06">
                           
                                <button type="submit" class="btn btn-primary" id="movie-manager04-button1">등록</button>
                                <button type="button" class="btn btn-primary" id="movie-manager04-button2">취소</button>
    
                            </div>


                        </div>
                        



                        
                    </div>
                   
                </div>
               
            </div>
          

            <!--아래부터 캘린더 코드-->

            <!-- 위 까지가 지점 선택 영역-->



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
                    <img src="image/logo_navy.png" id="footer_logo">
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