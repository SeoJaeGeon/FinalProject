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
    
    
    <form action="vpaylist.do" method="post" id="vodcartpayForm">
    
    <div id="cart">
        <div id="cate"> 
            <input style="margin : 8px 20px"  type="checkbox" id="allck" name="allck" aria-label="Checkbox for following text input"
            onclick="check();" class="allck" value="">
            <label style="margin-left: 260px;"> VOD제목</label>
            <label style="margin-left: 480px;"> 가격</label>
        </div>
       
      
      
     
     
      <h1>${v.movieNo }</h1>
      <c:forEach var="v" items="${ list }">
      
      
      
		    <div id="cartvod">
		    
		        <input style="float: left; margin: 20px ; margin-top: 55px;"  type="checkbox" aria-label="Checkbox for following text input"
		        class="ck" name="ck" id="ck" onclick="check2();" value="${v.movieNo }">
		        
		        
		        <div id="vodimg"><img id="movieImg" src="../수업자료/sample/image/city1.PNG"></div>
		        <label style="margin-top: 50px; margin-left: 114px;" >${v.movieName }</label>
		        <label style="margin-left: 485px;">${v.moviePrice }</label>
		       
		        
        		
           </div>
           
           
           
        </c:forEach>
    
     
     
    	 <input type="hidden" id="userNo" name="userNo" value="${ loginUser.userNo }">
     
     
     
     
   
    
    
    <div id="delete">
          <button id="back-btn" type="button" class="btn btn-secondary" onclick="del();">선택 상품 삭제</button>
    </div>

    <div id="price">
        <label style="margin-left: 817px; margin-top: 38px;">총 주문금액 : </label><label>${sum }</label>
  </div>

  <div id="buy">
    <button id="buy-btn2" type="button" class="btn btn-secondary">메인으로</button>
    <button id="buy-btn3" type="submit" class="btn btn-outline-primary">주문하기</button>
  </div>

</div>
</form>

<script>
function check() {
var count = 0;
if($("input:checkbox[name=allck]").is(":checked") == true) {
	  console.log("fdsfdsfs");
	  
	  $("input:checkbox[class='ck']").prop("checked", true);  
	}else{
		console.log("rrrrrrrrrrrrrrrrrrrrrrrrrr");
		$("input:checkbox[class='ck']").prop("checked", false); 

			
	}
}

function check2() {
	if($("input:checkbox[name=ck]").length != $("input:checkbox[name=is_ck]:checked").length){
		$("input:checkbox[class='allck']").prop("checked", false); 
	}
	
	 if($("input:checkbox[name=ck]:checked").length == '${ list.size() }')
	 {
		$("input:checkbox[class='allck']").prop("checked", true);
	} 
	
	}



	 function del() {
		 
		var a = $("input:checkbox[name=ck]:checked").length;
		
		var arr = [];
		var userNo = ${ loginUser.userNo };
		console.log(userNo);
		for (var i=0; i<a; i++) {
	        if (document.getElementsByName("ck")[i].checked == true) {
	            arr.push(document.getElementsByName("ck")[i].value);
	        }
	    }
		alert(arr[0]);
		alert(arr[1]);
		alert(arr[2]);
		alert(arr[3]);
		alert(arr[4]);
		location.href="cdelete.do?movieNo="+checkBoxArr +"&aa="+userNo;
	} 
	
</script>


</body>
</html>