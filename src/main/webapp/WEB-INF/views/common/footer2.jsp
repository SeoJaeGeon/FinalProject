<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

 header,
        nav,
        section,
        article,
        aside,
        footer {
            box-sizing: border-box;
            display: block;
        }

        body{
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
            height: 50px;
        }

        #content {
            width: 100%;
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

        #footer3{
            width: 20%;
            height: 70%;
            float: left;
        }

        .content1 {
            width: 100%;
            height: 500px;
            padding-top: 20px;
        }

      
        
        #img1,#img2,#img3{
            width: 500px !important;
            height: 400px !important;   
            margin:auto;
        }

        .carousel{
            width: 100%;  
        }


/* 검색 창 */
        #search-form{
            height: 50px;
            width: 300px;
            background: #ffffff;
            border: 1px solid;
            margin: auto;
            margin-top: 40px;
        }

        #search_Text{
            font-size: 16px;
            width: 80%;
            padding: 10px;
            border: 0px;
            outline: none;
            float: left;
            font-family: 'NanumBarunGothic', sans-serif;
        }

        #search_Btn{
            width: 20%;
            height: 100%;
            border: 0px;
            background: white;
            outline: none;
            float: right;
            color: #ffffff;
            font-family: 'NanumBarunGothic', sans-serif;
        }
/* 검색 창 */
        #search_img {
            width: 30px;
            height: 30px;
        }

/* 로고 */
        #logo_img{
            display: block;
            margin: auto;
            margin-top: 20px;
        }
/* 로고 */
/* 로그인, 회원가입 */
        .login_bar{
            float: right;
            text-decoration: none;
            color: silver;
            font-weight: bold;
            font-size: 21px;
            margin-right: 50px;
            margin-top: 20px;
            font-family: 'NanumBarunGothic', sans-serif;
        }
/* 하단 풋터 부분 */
</style>
</head>
<body>
   <footer>
      <div id="footer1">
         <a href="#">회사소개</a> | <a href="#">이용약관</a> | <a href="#">개인정보이용방침</a>
         | <a href="#">고객센터</a>
      </div>
      <div id="footer2">
         <img src="<%= request.getContextPath() %>/resources/images/logo_navy.png" id="footer_logo">
         <p>
            서울 특별시 테헤란로 10길 9 (우)06234 ARS 1544-XXXX<br> 대표자명 안태상 개인정보보호책임자
            안태상 사업자등록번호 XXX-XX-XXXXX · 통신판매업신고번호 제 833호<br>
            COPYRIGHT@Kasscinema, Inc, All rights reserved
         </p>
      </div>
      <div id="footer3">
         <a>F</a> <a>Y</a> <a>I</a>
      </div>
   </footer>
</body>
</html>