<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
    <c:set var="contextPath" 	value="${ pageContext.servletContext.contextPath }" scope="application" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>bb</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
        crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/nanumbarungothicsubset.css">
    <style>
       


        #cart{
            margin: auto;
          
            width: 1000px;
            height: 400px;
      

        }
      
        #cartvod{
            
            margin: auto;
            margin-top: 10px;
            border: rgb(0,0,0,0.2) 1px solid;
            width: 970px;
            height: 130px;
            border-radius: 5px;
        }
        #vodimg{
           
            width: 95px;
            height: 110px;
            float: left; 
            margin-left: 50px;
             margin-top: 10px;
        }
        #movieImg{
            width: 95px;
            height: 110px;
        }

    

        

      

    </style>
</head>
<body>

    
    <form action="insertvod.do" method="post" id="vodpayForm">
            <input id="search" name="search" type="text" class="form-control" placeholder="VOD 제목입력">
            <input id="search-btn" type="submit" class="btn btn-primary" value="검색"></input>
        </form>
   
    <c:forEach var="v" items="${ list }">
    
    <div id="cart">
    
      <div id="cartvod">
            <div id="vodimg"><img id="movieImg" src="../수업자료/sample/image/city1.PNG"></div>
            <label style="margin-top: 50px; margin-left: 110px;" >${ v.movieName }</label>
            <label style="margin-left: 480px;">18,000</label>
            <c:url var="bdetail" value="vodvod.do">
			   <c:param name="movieNo" value="${ v.movieNo }" />
			</c:url>
			<a href="${ bdetail}">등록</a> 
            
        </div>
	  </div>
     </c:forEach>


</body>
</html>