<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KASS CINEMA</title>
<script type="text/javascript"
   src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
   integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
   crossorigin="anonymous">
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
   integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
   crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
   href="https://cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/nanumbarungothicsubset.css">
    <c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />

<style>
header, nav, section, article, aside, footer {
   box-sizing: border-box;
   display: block;
}

body {
   width: 100%;
   background: black;
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

#footer3 {
   width: 20%;
   height: 70%;
   float: left;
}

.content1 {
   width: 100%;
   height: 700px;
   padding-top: 55px;
}

.content2, .content1-1 {
   margin-left: 220px;
}

#img1, #img2, #img3 {
   width: 500px !important;
   height: 600px !important;
   margin: auto;
}

.carousel {
   width: 100%;
}

/* 영역 나누기 */
#stay1 {
   width: 100%;
   background: black;
}

#stay2 {
   width: 100%;
   background: black;
}

#stay3 {
   width: 100%;
   background: white;
}

#stay4 {
   width: 100%;
   background: rgb(31, 69, 97);
}

#stay_footer {
   width: 100%;
   height: 150px;
   background: lightgray;
}

#wrap_stay {
   width: 1500px;
   margin: auto;
}
/* 영역 나누기 */
/* 영화 예매 사진 */
.title {
   color: white;
   font-weight: bold;
   margin-bottom: 30px;
   padding-top: 30px;
}

.movie {
   display: inline-block;
   margin: 50px 50px;
   margin-bottom: 50px;
   width: 250px;
   height: 380px;
}

.poster {
   width: 100%;
   height: 300px;
    border-radius: 10px;
}

.movie a {
   text-decoration: none;
}

.movie p {
   text-align: center;
   color: white;
   font-size: 20px;
   margin-top: 22px;
}

#stay3 p {
   color: black;
}

.onScrenn {
   background: rgb(46, 204, 113);
   width: 70px;
   height: 30px;
   color: white;
   font-size: 15px;
   float: left;
   margin-left: 30px;
   margin-top: 30px;
   text-align: center;
   padding-top: 4px
}

.resevation {
   background: rgb(231, 76, 60);
   width: 100px;
   height: 40px;
   border-radius: 40px;
   color: white;
   border: 1px solid rgb(231, 76, 60);
   margin-left: 30px;
   margin-top: 24px;
}
/* 영화 예매 사진 */
</style>
</head>
<body>
   <div id="stay1">
      <div id="wrap_stay">
		<jsp:include page="../views/common/black.jsp"/>
      </div>
   </div>
   <section id="content">
      <div id="stay2">
         <div id="wrap_stay">
            <div class="content1">
               <div id="demo" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <img class="d-block w-100" src="${ contextPath }/resources/images/devil.jpg"
                           alt="First slide" id="img1">
                        <div class="carousel-caption d-none d-md-bl ock"></div>
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="${ contextPath }/resources/images/rain.jpeg"
                           alt="Second slide" id="img2">
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="${ contextPath }/resources/images/alive.jpg"
                           alt="Third slide" id="img3">
                     </div>
                     <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <!-- <span>Previous</span> -->
                     </a> <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     </a>
                     <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                     </ul>
                  </div>
               </div>
            </div>

            <div class="content2">
               <h1 class="title"># 영화</h1>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/rain.jpeg" class="poster">
                     </div>
                  </a>
                  <div class="onScrenn">상영중</div>
                  <button class="resevation">예매하기</button>
               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/devil.jpg" class="poster">
                     </div>
                  </a>
                  <div class="onScrenn">상영중</div>
                  <button class="resevation">예매하기</button>
               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/alive.jpg" class="poster">
                     </div>
                  </a>
                  <div class="onScrenn">상영중</div>
                  <button class="resevation">예매하기</button>
               </article>
            </div>
         </div>
      </div>
      <div id="stay3">
         <div id="wrap_stay">
            <section class="content1-1">
               <h1 class="title" style="color: black;"># 스낵</h1>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/pop1.jpeg" class="poster">
                        <p>팝콘</p>
                     </div>
                  </a>
               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/pop2.jpeg" class="poster">
                        <p>토르망치</p>
                     </div>
                  </a>

               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/pop3.jpeg" class="poster">
                        <p>뱃지</p>
                     </div>
                  </a>

               </article>
            </section>
         </div>
      </div>
      <div id="stay4">
         <div id="wrap_stay">
            <section class="content1-1">
               <h1 class="title"># VOD</h1>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/aladin.jpeg" class="poster">
                        <p>알라딘</p>
                     </div>
                  </a>
               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/spirit.jpg" class="poster">
                        <p>미녀와 야수</p>
                     </div>
                  </a>
               </article>
               <article class="movie">
                  <a href="#">
                     <div class="photoDiv">
                        <img src="${ contextPath }/resources/images/begina.jpeg" class="poster">
                        <p>비긴어게인</p>
                     </div>
                  </a>
               </article>
            </section>
         </div>
      </div>
   </section>
   <div id="stay_footer">
      <div id="wrap_stay">
         <jsp:include page="../views/common/footer.jsp"/>
      </div>
   </div>
</body>
</html>