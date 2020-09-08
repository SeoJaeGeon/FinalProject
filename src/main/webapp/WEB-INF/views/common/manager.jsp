<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<title>KASS CINEMA</title>

<style>

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
/* 헤더 */

/* 관리자 페이지 글 */
#Manager-p1{
	font-size:20px;
	margin-left:100px;
	margin-top:60px;
}

/* 로고 */
#logo_img {
	display: block;
	margin: auto;
	margin-top: 20px;
}
/* 로고 */

/* 네비게이션 바*/
#navi {
	list-style-type: none;
	padding: 0;
	margin: 0;
	height: 100%;
}

ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
}

#navi>li {
	display: inline-block;
	width: 19%;
	height: 100%;
	float: left;
}

#navi li a {
	height: 100%;
	display: block;
	text-decoration: none;
	text-align: center;
	padding-top: 5px;
	color: black;
	font-weight: bold;
	font-size: 21px;
	line-height: 40px;
}

li a {
	display: block;
	background-color: white;
	text-decoration: none;
	font-weight: bold;
	color: #000000;
	text-align: center; 
	padding:10px;
	transition: all 0.5s;
	
} 

li a:hover {
	background-color: #aaaaaa;
	color: white;
}  

#navi li ul {
	opacity: 0;
	transition: all 0.3s;
}

#navi li:hover ul {
	opacity:1;
}

#navi li ul li {
	height: 0;
	transition : all 0.3s;
	/* 가시성 -> 숨김 */
	visibility: hidden; 
}

#navi li:hover ul li {
	height:40px;
	visibility: visible; 
}
		
		
		

#navi li a:hover {
	border-bottom: 1px solid rgb(31, 69, 97);
}


/* 네비게이션 바*/
</style>
</head>
<body>
	<c:if test="${ !empty msg }">
		<script>
			alert('${msg}');
		</script>
		<c:remove var="msg" />

	</c:if>
	<header>
		<section id="header-1">
			
				<p id=Manager-p1>관리자 페이지</p>
			
		</section>
		<section id="header-2">
			<a href="${ contextPath }"> 
				<img src="<%=request.getContextPath()%>/resources/images/logo_navy.png" id="logo_img">
			</a>
		</section>
		<section id="header-3">
			
		</section>
	</header>

	<nav>
		<ul id="navi">
           <li><a href="#">영화설정</a>
	           	<ul>
	           		<li><a href="MovieManagerInsertPage.do">영화 정보 등록</a></li>
	           		<li><a href="MovieManagerUpdatePage.do">영화 정보 수정</a></li>
	           		<li><a href="MovieManagerDeletePage.do">영화 정보 삭제</a></li>
	           		<li><a href="MovieManagerScreenInsert.do">영화 상영 등록</a></li>
	           		<li><a href="MovieManagerCancel.do">영화 상영 취소</a></li>
	           	</ul>
      	   </li>
           <li><a href="#">VOD 설정</a>
           		<ul>
	           		<li><a href="#">VOD 정보 등록</a></li>
	           		<li><a href="#">VOD 정보 삭제</a></li>
	           	</ul>
           </li>
           <li><a href="#">스낵 설정</a>
           		<ul>
	           		<li><a href="#">스낵 상품 등록</a></li>
	           		<li><a href="#">스낵 상품 수정</a></li>
	           	</ul>
           </li>
           <li><a href="#">굿즈 설정</a>
	           <ul>
		         	<li><a href="#">굿즈 상품 등록</a></li>
	           		<li><a href="#">굿즈 상품 등록</a></li>
		       </ul>
           </li>
           <li><a href="#">관리</a>
           		<ul>
	           		<li><a href="MovieManagerSalesPage.do">지점 수익 관리</a></li>
	           		<li><a href="#">영화 예매 취소 관리</a></li>
	           	</ul>
           </li>
       </ul>
	</nav>



  

</body>
</html>