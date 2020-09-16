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



    </style>
</head>
<body>

   <c:import url="../common/white2.jsp"/>
   
    <div id="t">　VOD</div>
    <div class="menu">
        
            <table>
               
                <tr>
                    <td>
                        <ul class="list" style="-webkit-padding-start:10px;">
                            <li style="font-weight: bold;">장르별</li>
                            <hr>
                            <li style="width: 30px;"><a class="bb" href="#">전체</a></li><br>
                            <li style="width: 30px;"><a class="bb" href="#">액션</a></li><br>
                            <li style="width: 40px;"><a class="bb" href="#">코미디</a></li><br>
                            <li style="width: 40px;"><a class="bb" href="#">드라마</a></li><br>
                            <li style="width: 30px;"><a class="bb" href="#">멜로</a></li><br>
                            <li style="width: 30px;"><a class="bb" href="#">공포</a></li><br>
                            <li style="width: 60px;"><a  class="bb" href="#">SF/판타지</a></li><br>
                            <li style="width: 70px;"><a class="bb"  href="#">애니메이션</a></li><br><br><br><br><br><br>
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
								
                            <li><a class="bb" href="${ mycart }">VOD 장바구니</a></li><br>
                            
                            
                            <li><a  class="bb" href="#">VOD 위시리스트</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
       
    </div>

    <div id="vod-div">

        
        <form>
            <input id="search" type="text" class="form-control" placeholder="VOD 제목입력">
            <input id="search-btn" type="submit" class="btn btn-primary" value="검색"></input>
        </form>

        <a class="ca" href="#"><div id="cate1"></div>
        <div id="cate1text">개봉순</div></a>

        <a class="ca" href="#"><div id="cate2"></div>
         <div id="cate2text">판매순</div></a>

         <a class="ca" href="#"><div id="cate3"></div>
         <div id="cate3text">평점순</div></a>

         <a class="ca" href="#"><div id="cate4"></div>
         <div id="cate4text">가격순</div></a>
                                      
</div>



<div id="vod-div2">


   <c:forEach var="v" items="${ list }">
    	<c:url var="vdetail" value="vdetail.do">
    		<c:param name="movieNo" value="${ v.movieNo }"/>
			
		</c:url>
		<a class="voda" href="${ vdetail }">
        <div id="vod">
            <img id="vodImg" src="../수업자료/sample/image/flower1.PNG">
            <br><br>
            <label id="movieName">${v.movieNo }</label><br>
            <label id="moviePrice">${v.movieName }</label>
          </div> </a>
        </c:forEach>



        
    
        




         
          <!-- 페이징 -->
            <div style="display: block; width: 100px; height: 200px; ">


               <c:if test="${ pi.currentPage <= 1 }">
					[이전] &nbsp;
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="vlist.do">
						<c:param name="page" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a href="${ before }">[이전]</a> &nbsp;
				</c:if>


				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<font color="red" size="4">[ ${ p } ]</font>
					</c:if>
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="pagination" value="vlist.do">
						<c:param name="page" value="${ p }"/>
						</c:url>
						<a href="${ pagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>


				<c:if test="${ pi.currentPage >= pi.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="after" value="vlist.do">
					
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url>
					<a href="${ after }">[다음]</a>
				</c:if>				
	
			</div>
            
            </div>
        






</div>










    
</body>
</html>