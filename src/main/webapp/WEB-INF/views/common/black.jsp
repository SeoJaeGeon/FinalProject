<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 검색 창 */
#search-form {
   height: 50px;
   width: 300px;
   background: #ffffff;
   border: 1px solid black;
   margin: auto;
   margin-top: 40px;
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

#search_img {
   width: 30px;
   height: 30px;
}

#search_Btn {
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
   height: 100%
}

#navi>li {
   float: left;
   width: 20%;
   height: 100%
}

#navi li a {
   display: block;
   text-decoration: none;
   text-align: center;
   color: white;
   font-weight: bold;
   padding-top: 5px;
   font-size: 21px;
   line-height: 40px;
   height: 100%
}

#navi li a:hover {
   color: white;
   border-bottom: 1px solid red;
}
/* 네비게이션 바*/
</style>
</head>
<body>
   <header>
      <section id="header-1">
         <form id="search-form">
            <input type="text" id="search_Text" name="search_Text"
               placeholder="영화 입력">
            <button type="submit" id="search_Btn" name="search_Btn">
               <img src="<%= request.getContextPath() %>/resources/images/search.png" id="search_img">
            </button>
         </form>
      </section>
      <section id="header-2">
         <img src="<%= request.getContextPath() %>/resources/images/logo_white.png" id="logo_img">
      </section>
      <section id="header-3">
         <a href="#" class="login_bar">회원가입</a> <a href="#" class="login_bar">로그인</a>
      </section>
   </header>

   <nav>
      <ul id="navi">
         <li><a href="#">영화</a></li>
         <li><a href="#">예매</a></li>
         <li><a href="#">극장</a></li>
         <li><a href="#">VOD</a></li>
         <li><a href="#">스토어</a></li>
      </ul>
   </nav>
</body>
</html>