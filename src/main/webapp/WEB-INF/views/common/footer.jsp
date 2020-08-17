<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

/* 하단 풋터 부분 */
#footer1>a {
   text-decoration: none;
   font-weight: 600;
   line-height: 25px;
   color: black;
   margin: 0 10px;
}

#footer1>a:hover {
   color: rgb(53, 115, 160);
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