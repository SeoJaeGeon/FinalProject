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
    <link href="${ contextPath }/resources/css/vod/vodlast.css"
	rel="stylesheet" type="text/css">
</head>
<body>

    
    
   
    <div id="vod"> 주문/결제</div> <!-- 상단 띠-->
    <br>
    <button id="buy-btn" type="button" class="btn btn-outline-primary">내 장바구니</button>
    <br>
    <br>
    
    
    
    
      <form action="vpaypay.do" method="post" id="vodpayForm"  onsubmit="return validate();" >
      
      
    <div id="cart">
        <div id="cate"> 
           
            <label style="margin-left: 260px;"> ${m.movieName }</label>
            <label style="margin-left: 480px;"> 가격</label>
        </div>


	<c:forEach var="v" items="${ list }">
	
	
      	<div id="cartvod">
            <div id="vodimg"><img id="movieImg" src="../수업자료/sample/image/city1.PNG"></div>
            <label style="margin-top: 50px; margin-left: 110px;" >${v.movieName }</label>
            <label style="margin-left: 480px;" id="aa" class="aa" name="aa">18,000</label>
            
        </div>
        
        
        
        </c:forEach>





        <div id="info">
            <div id="left">
                <pre style="margin-top: 20px; margin-left: 10px; font-weight: bold;">재생가능 기간</pre>
                <div style="width: 120px;"><hr></div>
                <pre style="font-size: 10px;">  VOD 이용시작은 결제 후 7일 이내 진행해야 하며 , 이후 자동으로 재생 기간이 
    시작 됩니다 재생가능 기간은 대여- 이용시작 후 7일 입니다 </pre><br>
<pre style="margin-top: 20px; margin-left: 10px; font-weight: bold;">결제 및 환불 안내</pre>
                <div style="width: 150px;"><hr></div>
                <pre style="font-size: 10px;">  결제는 무통장입금 또는 카카오페이로 진행합니다. 환불은 결제방식에 따라 상이하며
    자세한 문의는 고객센터(1577-1577)로 문의해주세요</pre>
                
            </div>
            
            
            
            
            <div id="right">
                <label style="font-weight: bold; font-size: 15px; color: white; margin-left: 25px;">총 상품 금액</label>
                <label  id="price">1,8000</label>
                <label style="font-weight: bold; font-size: 20px; color: white;">　원</label>
                <div style="width: 300px; margin-left: 30px;"><hr></div>

                <div id="radio">
                    
                    <input id="xhdwkd" type="radio" name="rufwp" value="무통장"  checked aria-label="Radio button for following text input"><label for="xhdwkd"  style="margin-left: 5px; font-weight: 300px; color: white; font-size: 12px;">무통장입금</label>
                    <input id="kakao" type="radio"  name="rufwp" value="카드" aria-label="Radio button for following text input"><label for="kakao" style="margin-left: 5px; font-weight: 300px; color: white; font-size: 12px;" >카카오페이</label>
                  
                    <input type="hidden" name="payPrice" value=${sum }>
                    <input type="hidden" name="userNo" value=${loginUser.userNo  }>
                    
                </div>

            </div>
           

        </div>

        <div id="btn">

            <button id="buy-btn2" type="button" class="btn btn-secondary" >메인으로</button>
        <button id="buy-btn3" type="submit" class="btn btn-outline-primary">결제하기</button>

        </div>
        
       
    
    

</div>
</form>




</body>
</html>