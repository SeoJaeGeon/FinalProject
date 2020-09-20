<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
    <c:set var="contextPath" 	value="${ pageContext.servletContext.contextPath }" scope="application" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>list</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
        crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/nanumbarungothicsubset.css">
     <style>
     #wrap_stay {
				width: 1500px;
				margin: auto;
     			overflow : hidden;
			}
        ul{
            list-style-type: none;
            margin: 0;
			padding: 0;
          

        }
        li .bb {
			display: block;
			text-decoration: none !important;
			color: black;
			transition: all 0.5s;
            font-weight: 520;
            font-size: 13px;
		} 
       
        li .bb:hover {
            color: black;
			text-transform:uppercase;
		}  

        li .bb:after {
             display:block;
             content: '';
             border-bottom: solid 3px rgb(31, 69, 97);  
             transform: scaleX(0);  
             transition: transform 250ms ease-in-out;
            }

            li .bb:hover:after { transform: scaleX(1); }
            li .bb.fromRight:after{ transform-origin:100% 50%; }
            li .bb.fromLeft:after{  transform-origin:  0% 50%; }
        .menu{
           display: block;
            float: left;
            margin-left: 100px;
            background-color: rgba(224, 224, 224, 0.3);
            width: 160px;
            height: 700px;
        }
      

        #t{/* 상단 바 */
            margin: auto;
            margin-top : 25px;
            margin-bottom: 50px;
            width: 1500px;
            height: 70px;
            background-color: rgb(31, 69, 97);
            font-size: 40px;
           font-weight : bold;
            color: white;
        }
     
        #search{
            float: left;
            width: 200px;
        }
        #search-btn{
          
            background-color: darkgrey;
            border: darkgrey;
            margin-left: 15px;
            float: left;
        }
        #cate1{
            margin-top: 12px;
            margin-left: 300px;
            border-radius: 40px;
           float: left;
            background-color: darkgrey;
            width: 15px;
            height: 15px; 
           
        }
        #cate1text{
            margin-top: 11px;
            margin-left: 4px;
            float: left;
            width: 80px;
            height: 20px; 
        }
        #cate2{
            margin-top: 12px;
            margin-left: 20px;
            border-radius: 40px;
           float: left;
            background-color: darkgrey;
            width: 15px;
            height: 15px; 
           
        }
        #cate2text{
            margin-top:11px;
            margin-left: 4px;
            float: left;
            width: 80px;
            height: 20px; 
        }

        #cate3{
            margin-top: 12px;
            margin-left: 20px;
            border-radius: 40px;
           float: left;
            background-color: darkgrey;
            width: 15px;
            height: 15px; 
        }
        #cate3text{
            margin-top: 11px;
            margin-left: 4px;
            float: left;
            width: 80px;
            height: 20px; 
        }
        #cate4{
            margin-top: 12px;
            margin-left: 20px;
            border-radius: 40px;
           float: left;
            background-color: darkgrey;
            width: 15px;
            height: 15px; 
        }
        #cate4text{
            margin-top: 11px;
            margin-left: 4px;
            float: left;
            width: 80px;
            height: 20px; 
        }
        .ca{
            display: block;
			text-decoration: none !important;
			color: black;
            font-weight: 570;
            font-size: 11px;
      
        }
        .ca:hover {
             color: black;
             }
        #vod-div2{
            
           display: block;
           position: absolute;
            margin-left: 350px;
            width: 1150px;
            height: 400px;
         
          
        }
        #vod-div{
            
           display: block;
           margin-top: auto;
            margin-left: 350px;
            width: 1100px;
            height: 40px;
        }
  

        #vod{
            
           float: left;
            width: 180px;
            margin: 90px 50px;
            height: 250px;
            

        }
        #vodImg{
            width: 180px;
            height: 250px;
        }

      

     
        #movieName
        { color: black;
            font-size: 15px;
        }
        #moviePrice{ color: black;
            font-size: 15px;
        }
        
        .pagination {
    /* border: 1px solid rgb(16, 157, 182); */
    
   
}

.pageInnerDiv {
    width:auto;
    margin: auto;
    text-align: center;
}

.pageOne {
    border: 1px solid rgb(224, 224, 224);
    display: inline-block;
    text-decoration: none;
    text-align: center;
    width: 30px;
    height: 30px;
    padding-top: 7px;
    padding-left: 3px;
    padding-right: 3px;
    border-radius: 5px;
    color: rgb(51, 51, 51);
}

.pageOne:hover {
    border: 1px solid rgb(151, 151, 151);
    color: rgb(51, 51, 51);
    text-decoration: none;

}

.pageNone {
    border: 1px solid rgb(224, 224, 224);
    background: rgb(241, 241, 241);
    display: inline-block;
    text-decoration: none;
    text-align: center;
    width: 30px;
    height: 30px;
    padding-top: 7px;
    padding-left: 3px;
    padding-right: 3px;
    border-radius: 5px;
    color: rgb(51, 51, 51);
}
      
      
      #stay_footer {
	width: 100%;
	height: 150px;
	background: lightgray;
}

#stay_footer_inner {
	width: 1500px;
	height: 150px;
	display: block;
	margin: auto;
}






    </style>
</head>
<body>

   <div id="wrap_stay">
  		<jsp:include page="../../views/common/white2.jsp"/>
  		<br clear="div">
    <div id="t">VOD</div>
    <div class="menu">
        
            <table>
               
                <tr>
                    <td>
                        <ul class="list" style="-webkit-padding-start:10px;">
                            <li style="font-weight: bold;">장르별</li>
                            <hr>
                            	
                            <li style="width: 30px;"><a class="bb" href="#" onclick="cate1(); return false;">전체</a></li><br>
                            <li style="width: 40px;"><a class="bb" href="#" onclick="cate2(); return false;">드라마</a></li><br>
                            <li style="width: 40px;"><a class="bb" href="#" onclick="cate3(); return false;">코미디</a></li><br>
                            <li style="width: 40px;"><a class="bb" href="#" onclick="cate4(); return false;">스릴러</a></li><br>
                            <li style="width: 30px;"><a class="bb" href="#" onclick="cate5(); return false;">액션</a></li><br>
                            <li style="width: 30px;"><a class="bb" href="#" onclick="cate6(); return false;">SF</a></li><br>
                            <li style="width: 60px;"><a  class="bb" href="#" onclick="cate7(); return false;">공포</a></li><br>
                            <li style="width: 70px;"><a class="bb"  href="#" onclick="cate8(); return false;">미스터리</a></li><br>
                            <li style="width: 70px;"><a class="bb"  href="#" onclick="cate9(); return false;">판타지</a></li><br><br><br>
                            
                        </ul>
                    </td>
                </tr>

                <tr>
                    <td>
                        <ul class="list" style="-webkit-padding-start:10px;">
                            <li style="font-weight: bold;">MY VOD</li>
                            <hr>
                            
                            <c:url var="mycart" value="mycart.do">
    							<c:param name="userNo" value="${ loginUser.userNo }"/>
			
							</c:url>
							
							<c:url var="mywish" value="mywish.do">
    							<c:param name="userNo" value="${ loginUser.userNo }"/>
			
							</c:url>
								
                            <li><a class="bb" href="${ mycart }">VOD 장바구니</a></li><br>
                            <li><a  class="bb" href="${ mywish }">VOD 위시리스트</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
       
    </div>

    <div id="vod-div">

        
        <form action="vsearch.do" method="post" id="vodpayForm">
            <input id="search" name="search" type="text" class="form-control" placeholder="VOD 제목입력">
            <input id="search-btn" type="submit" class="btn btn-primary" value="검색"></input>
        </form>

       
                                      
</div>



<div id="vod-div2">


   <c:forEach var="v" items="${ list }">
    	<c:url var="vdetail" value="vdetail.do">
    		<c:param name="movieNo" value="${ v.movieNo }"/>
    		
			
		</c:url>
		<a class="voda" href="${ vdetail }">
        <div id="vod">
            <img id="vodImg"     src="${ contextPath }${ v.attachList[0].filePath }${ v.attachList[0].renameFileName }">
            <br><br>
            <label id="movieName">${v.movieName }</label><br>
            <label id="moviePrice">${v.moviePrice }</label>
          </div> </a>
        </c:forEach>



        
    
        




         
          <!-- 페이징 -->
          <!--   <div style="display: block; width: 100px; height: 200px; ">


             
                <div class="pagingbar" style=" float: left; margin-top: 50px;     margin-left: 470px;">
                    <nav aria-label="Page navigation example" class="text">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            
            </div> -->
        
        
        
        <c:if test="${ empty pp }">
		
		
		
		
			<div class="pagination" style="display: block; width: 800px; height: 200px; ">
							<div class="pageOuterDiv" style="  margin-top: 50px;     margin-left: 470px;">
								<div class="pageInnerDiv">
									<!-- 이전 -->
									<c:if test="${ pi.currentPage <= 1 }">
										<a class="pageNone">&lt;</a>
									</c:if>
									<c:if test="${ pi.currentPage > 1 }">
										<c:url var="before" value="vlist.do">
											<c:param name="page" value="${ pi.currentPage - 1 }"/>
											<c:param name="testa" value="${ cate }" />
										d</c:url>
										<a class="pageOne" href="${ before }">&lt;</a>
									</c:if>



									<!-- 페이지 숫자 -->
									<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
										<c:if test="${ p eq pi.currentPage }">
											<a class="pageNone">${ p }</a>
										</c:if>
										<c:if test="${ p ne pi.currentPage }">
											<c:url var="pagination" value="vlist.do">
													<c:param name="page" value="${ p }" />
													<c:param name="testa" value="${ cate }" />
											</c:url>
											<a class="pageOne" href="${ pagination }">${ p }</a>
										</c:if>
									</c:forEach>





									<!-- 이후 -->
									
									
									<c:if test="${ pi.currentPage >= pi.maxPage }">
										<a class="pageNone">&gt;</a>
									</c:if>
									
									
									<c:if test="${ pi.currentPage < pi.maxPage }">
										<c:url var="after" value="vlist.do">
												<c:param name="page" value="${ pi.currentPage + 1 }"/>
												<c:param name="testa" value="${ cate }" />
										</c:url>
										<a class="pageOne" href="${ after }">&gt;</a>
									</c:if>
									<!-- 버튼 비활성화 일 때-->
									<!-- <a class="pageNone">&lt;&lt;</a> -->
								</div>
							</div>
						</div>
        </c:if>
        
        
	<input type="hidden" id="category" value="${cate }">
	<input type="hidden" id="listlist" value="${listlist }">
	
	
	
	
<script>

console.log($("#category").val());
					function cate1() {
						
						console.log("전체");
						var testa = $("#category");
						testa.val("0")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate2() {
						
						console.log("드라마");
						var testa = $("#category");
						testa.val("1")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate3() {
						
						console.log("코미디");
						var testa = $("#category");
						testa.val("2")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate4() {
						
						console.log("스릴러");
						var testa = $("#category");
						testa.val("3")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate5() {
						
						console.log("액션");
						var testa = $("#category");
						testa.val("4")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate6() {
						
						console.log("SF");
						var testa = $("#category");
						testa.val("5")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate7() {
						
						console.log("공포");
						var testa = $("#category");
						testa.val("6")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate8() {
						
						console.log("미스터리");
						var testa = $("#category");
						testa.val("7")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					function cate9() {
						
						console.log("판타지");
						var testa = $("#category");
						testa.val("8")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					
					
					<!-- ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ-->
					
				function listlist1() {
						
						console.log("개봉순");
						var testa = $("#listlist");
						testa.val("8")
						console.log("확인 : "+testa.val());
						location.href="vlist.do?testa="+testa.val();
					}
					
				function listlist1() {
					
					console.log("판매순");
					var testa = $("#listlist");
					testa.val("8")
					console.log("확인 : "+testa.val());
					location.href="vlist.do?testa="+testa.val();
				}
				
				function listlist1() {
					
					console.log("평점순");
					var testa = $("#listlist");
					testa.val("8")
					console.log("확인 : "+testa.val());
					location.href="vlist.do?testa="+testa.val();
				}
				
				function listlist1() {
					
					console.log("가격순");
					var testa = $("#listlist");
					testa.val("8")
					console.log("확인 : "+testa.val());
					location.href="vlist.do?testa="+testa.val();
				}
</script>        
        
        

</div>



</div>


	
	
<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
	




    
</body>
</html>