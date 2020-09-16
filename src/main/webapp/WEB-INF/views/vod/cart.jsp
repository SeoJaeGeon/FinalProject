<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
   <link href="${ contextPath }/resources/css/vod/vodcart.css"
	rel="stylesheet" type="text/css">
</head>
<body>

    
    
   <jsp:include page="../../views/common/white.jsp" />
    <div id="vod">　VOD 장바구니</div> <!-- 상단 띠-->
    <br>
    <button id="buy-btn" type="button" class="btn btn-outline-primary">VOD 더 담기</button>
    <button id="buy-btn1" type="button" class="btn btn-outline-primary">내 VOD 위시리스트</button>
    <br>
    <br>
    <div id="cart">
        <div id="cate"> 
            <input style="margin : 8px 20px"  type="checkbox" aria-label="Checkbox for following text input">
            <label style="margin-left: 260px;"> VOD제목</label>
            <label style="margin-left: 480px;"> 가격</label>
        </div>
    <div id="cartvod">
        <input style="float: left; margin: 20px ; margin-top: 55px;"  type="checkbox" aria-label="Checkbox for following text input">
        <div id="vodimg"><img id="movieImg" src="../수업자료/sample/image/city1.PNG"></div>
        <label style="margin-top: 50px; margin-left: 114px;" >으아으</label>
        <label style="margin-left: 485px;">18,000</label>
        
    </div>
   
    
    
    <div id="delete">
          <button id="back-btn" type="button" class="btn btn-secondary">선택 상품 삭제</button>
    </div>

    <div id="price">
        <label style="margin-left: 817px; margin-top: 38px;">총 주문금액 : </label><label>25,000</label>
  </div>

  <div id="buy">
    <button id="buy-btn2" type="button" class="btn btn-secondary">메인으로</button>
    <button id="buy-btn3" type="button" class="btn btn-outline-primary">주문하기</button>
  </div>

</div>


</body>
</html>