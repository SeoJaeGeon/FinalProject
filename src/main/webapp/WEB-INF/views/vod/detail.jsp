<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" 	value="${ pageContext.servletContext.contextPath }" scope="application" />
<!DOCTYPE html>
<html>
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
    
     #vod{/* 상단 바 */
            margin: auto;
            margin-top : 25px;
            width: 1500px;
            height: 70px;
            background-color: rgb(31, 69, 97);
            font-size: 40px;
           font-weight : bold;
            color: white;
        }

        /*$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$*/
        #info-div{ /* 상세 정보 div*/
            position: relative;
            margin: auto;
            width: 1000px;
            height: 400px;
           
        }
        #movieImg-div{
            position: absolute;
            left: 25px;
            top: 37px;
            width: 210px;
            height: 280px;
          
        }
        #movieImg{
            width: 210px;
            height: 280px;
        }
        #movieName{
         font-weight : bold;
            position: absolute;
            left: 280px;
            top: 45px;
            width: 600px;
            height: 40px;
           
            font-size: 30px;
        }
        
        /*좋아요 싫어요 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/
        #GB1{
            position: absolute;
            left: 280px;
            top: 120px;
            width: 100px;
            height: 10px;
            font-size: 13px;
            
           
        }
        #GB2{
            position: absolute;
            left: 370px;
            top: 120px;
            width: 100px;
            height: 10px;
            font-size: 13px;
            color: red;
        }
        #GB3{
            position: absolute;
            left: 490px;
            top: 120px;
            width: 100px;
            height: 10px;
            font-size: 13px;
            color: blue;
        }
        /*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*/


        /*영화 상세 정보----------------*/
        #line{    /*라인*/
            position: absolute;
            left: 280px;
            top: 140px;
            width: 600px;
            height: 40px;
        }

        

        #detail1{
            position: absolute;
            left: 280px;
            top: 170px;
        }
        #detail2{
            position: absolute;
            left: 280px;
            top: 190px;
        }
        #detail3{
            position: absolute;
            left: 280px;
            top: 210px;
        }
        #detail4{
            position: absolute;
            left: 280px;
            top: 230px;
        }
        #detail5{
            position: absolute;
            left: 280px;
            top: 250px;
        }



        #search_img {
            width: 30px;
            height: 30px;
        }
        #wish-btn{
            color: rgb(31, 69, 97);
            font-weight : bold;
            position: absolute;
            left: 270px;
            top: 300px;
            width: 124px;
            height: 50px;
            border : 1px solid  rgb(31, 69, 97);
          
        }
        #wish-btn:hover{
            background-color:rgb(31, 69, 97) ;
            color: white;
        }
        #cart-btn{
            color: rgb(31, 69, 97);
            font-weight : bold;
            position: absolute;
            left: 420px;
            top: 300px;
            width: 124px;
            height: 50px;
            border : 1px solid  rgb(31, 69, 97);
        }
        #cart-btn:hover{
            background-color:rgb(31, 69, 97) ;
            color: white;
        }
        #buy-btn{
            color: rgb(31, 69, 97);
            position: absolute;
            left: 570px;
            top: 300px;
            width: 124px;
            height: 50px;
            font-weight : bold;
            border-color: rgb(31, 69, 97);
        }
        #buy-btn:hover{
           color: white;
            background-color:rgb(31, 69, 97) ;
            border-color: rgb(31, 69, 97);
        }

        #back-btn{
            position: absolute;
            left: 800px;
            top: 320px;
            width: 100px;
            height: 25px;
            font-size: 12px;
            
           
        
            
        }
        /*-----------------------------*/



        /*$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$*/


        

        /*%%%%줄거리%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/
        #story-div{
            font-weight : bold;
            width: 1000px;
            height: 400px;
            position: relative;
            margin: auto;
        }
        #story{
            
            width: 800px;
            height: 300px;
            position: absolute;
            left: 100px;
        }
        /*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/





        /*yyyyy예고편yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy*/ 
        #trailer-div{
            font-weight : bold;
            width: 1000px;
            height: 500px;
            position: relative;
            margin: auto;
        }
        #trailer{
           
            width: 800px;
            height: 400px;
            position: absolute;
            left: 100px;
        }
        /*yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy*/



        /*+++스틸컷++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
        #cut-div{
            font-weight : bold;
            width: 1000px;
            height: 50px;
            position: relative;
            margin: auto;
        }

        /*GLOBALS*/
        *{margin:0; padding:0; list-style:none;}
        a{text-decoration:none; color:#666;}
        a:hover{color:#1bc1a3;}
        body, hmtl{background: #ecf0f1; font-family: 'Anton', sans-serif;}


        #wrapper{
            width:800px;
            margin:50px auto;
            height:500px;
            position:relative;
            color:#fff;
            text-shadow:rgba(0,0,0,0.1) 2px 2px 0px;    
        }

        #slider-wrap{
            width:800px;
            height:500px;
            position:relative;
            overflow:hidden;
        }

        #slider-wrap ul#slider{
            width:100%;
            height:100%;
            
            position:absolute;
            top:0;
            left:0;     
        }

        #slider-wrap ul#slider li{
            float:left;
            position:relative;
            width:800px;
            height:500px;   
        }

        #slider-wrap ul#slider li > div{
            position:absolute;
            top:20px;
            left:35px;  
        }

        #slider-wrap ul#slider li > div h3{
            font-size:36px;
            text-transform:uppercase;   
        }

        #slider-wrap ul#slider li > div span{
            font-family: Neucha, Arial, sans serif;
            font-size:21px;
        }

        #slider-wrap ul#slider li img{
            display:block;
            width:100%;
        height: 100%;
        }


        /*btns*/
        .btns{
            position:absolute;
            width:50px;
            height:60px;
            top:50%;
            margin-top:-25px;
            line-height:57px;
            text-align:center;
            cursor:pointer; 
            background:rgba(0,0,0,0.1);
            z-index:100;
            
            
            -webkit-user-select: none;  
            -moz-user-select: none; 
            -khtml-user-select: none; 
            -ms-user-select: none;
            
            -webkit-transition: all 0.1s ease;
            -moz-transition: all 0.1s ease;
            -o-transition: all 0.1s ease;
            -ms-transition: all 0.1s ease;
            transition: all 0.1s ease;
        }

        .btns:hover{
            background:rgba(0,0,0,0.3); 
        }

        #next{right:-50px; border-radius:7px 0px 0px 7px;}
        #previous{left:-50px; border-radius:0px 7px 7px 7px;}
        #counter{
            top: 30px; 
            right:35px; 
            width:auto;
            position:absolute;
        }

        #slider-wrap.active #next{right:0px;}
        #slider-wrap.active #previous{left:0px;}


        /*bar*/
        #pagination-wrap{
            min-width:20px;
            margin-top:450px;
            margin-left: auto; 
            margin-right: auto;
            height:15px;
            position:relative;
            text-align:center;
        }

        #pagination-wrap ul {
            width:100%;
        }

        #pagination-wrap ul li{
            margin: 0 4px;
            display: inline-block;
            width:5px;
            height:5px;
            border-radius:50%;
            background:#fff;
            opacity:0.5;
            position:relative;
        top:0;
        
        
        }

        #pagination-wrap ul li.active{
        width:12px;
        height:12px;
        top:3px;
            opacity:1;
            box-shadow:rgba(0,0,0,0.1) 1px 1px 0px; 
        }




        /*Header*/
        h1, h2{text-shadow:none; text-align:center;}
        h1{ color: #666; text-transform:uppercase;  font-size:36px;}
        h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 




        /*ANIMATION*/
        #slider-wrap ul, #pagination-wrap ul li{
            -webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
            -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
            -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
            -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
            transition: all 0.3s cubic-bezier(1,.01,.32,1); 
        }

        /*스틸컷+++++++++++++++++++++++++++++++++++++++++++++++++++*/



        /*리뷰!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/

        #review-div{
         font-weight : bold;
           
           width: 1000px;
           height: 700px;
           position: relative;
           margin: auto;
           
       }

       #review{
        position: relative;
           margin : 30px 50px;
          
           width: 400px;
           height: 150px;
           float: left;
       }
       #profileimg{
           border-radius: 40px;
           position: absolute;
           top : 20px;
           left: 20px;
       }
        #userid{
            width: 100px;
            position: absolute;
           top : 20px;
           left: 130px;

        }
        #gnb{
            width: 100px;
            position: absolute;
           top : 20px;
           left: 300px;
           color: red;
        }
        #userreview{
            width: 300px;
            height: 200px;
            position: absolute;
           top : 70px;
           left: 130px;
        }
        .pagingbar{
            width: 250px;
            margin: auto;
            
        }
    </style>
</head>
<body>

    
   
    <c:import url="../common/white2.jsp"/> 
   
    <div id="vod">　VOD</div> <!-- 상단 띠-->
    <br><br>
    <c:import url="../vod/detail22.jsp"/>
    
    <div id="info-div">   <!-- 영화정보 div -->
        <!-- 영화 제목 포스터---------------------->
        <div id="movieName">${m.movieName }</div><!--영화 제목 div-->
        <div id="movieImg-div"><img id="movieImg" src="${ contextPath }${ m.attachList[1].filePath }${ m.attachList[0].renameFileName }"></div> <!-- 영화 이미지 div-->
        
        

        <!-- 좋아요 싫어요 ----------------------->
        <div id="GB1">관람객 평 </div>
        <div id="GB2"><span>좋아요 ${g}</span></div>
        <div id="GB3"><span>별로에요 ${b}</span></div>

        <!-- 영화 상세 정보 --------------------->
        <div id="line"><hr></div> <!-- 라인 -->
        <div id="detail1" ><span>감독 : ${ m.movieForeman }</span></div>
        <div id="detail2" ><span>장르 : ${ bb }</span></div>
        <div id="detail3"><span>상영 시간 : ${ m.movieStime }</span></div>
        <div id="detail4"><span>제작 국가 : ${ m.movieCountry }</span></div>
        <div id="detail5"><span>개봉 : ${ m.movieRdate }</span></div>
        


        <!-- 위시     담기    구매하기  버튼 -->
        <c:url var="vwish" value="vwish.do">
				<c:param name="userNo" value="${ loginUser.userNo }"/>
				<c:param name="movieNo" value="${ m.movieNo }"/>
		</c:url>
					
					
        
		<button onclick="wish();" id="wish-btn" type="button" class="btn btn-default">좋아요</button>
		
		
		
		
		<c:url var="vcart" value="vcart.do">
				<c:param name="userNo" value="${ loginUser.userNo }"/>
				<c:param name="movieNo" value="${ m.movieNo }"/>
		</c:url>
					
					
       <button onclick="cart();" id="cart-btn" type="button" class="btn btn-default">담기</button>
		
		
		
		
		
		 <c:url var="vbuy" value="vbuy.do">
				
				<c:param name="movieNo" value="${ m.movieNo }"/>
		</c:url>
		
      	 <button onclick="vbuy();" id="buy-btn" type="button" class="btn btn-default">구매하기</button>
        
        <button id="back-btn" type="button" class="btn btn-secondary">목록으로</button>
        
        
    </div>
<br><br><br>

    <div id="story-div"> <!--  줄거리 -->
    　　　줄거리 
         <hr>
        <div id="story" ><span>
        ${m.movieContent }
        </span></div> 
        
    </div>


    <br><br><br>

    <!-- 예고편 &&&&&&&&&&&&&&&&&&&&&&-->
    <div id="trailer-div">
        　　　예고편 
         <hr>
         <div id="trailer">${m.movieLink }</div>
    </div>

    <br><br><br>

    <!-- 스틸컷 ^^^^^^^^^^^^^^^^^^^-->
    <div id="cut-div">
        　　　스틸컷
        <hr>
    </div>
       
    <div id="wrapper">
        <div id="slider-wrap">
            <ul id="slider">
                <li>
                                 
    <img id="cutimg1" src="${ contextPath }${ m.attachList[1].filePath }${ m.attachList[1].renameFileName }"> <!-- 이미지 1-->
                </li>
                
                <li>
                 
    <img  id="cutimg2"  src="${ contextPath }${ m.attachList[1].filePath }${ m.attachList[2].renameFileName }"> <!-- 이미지 2-->
                </li>
                
                <li>
              
    <img id="cutimg3"  src="${ contextPath }${ m.attachList[1].filePath }${ m.attachList[3].renameFileName }"> <!-- 이미지 3-->
                </li>
                
      
                
                
            </ul>
            
            <!--controls-->
            <div class="btns" id="next">▶</div>
            <div class="btns" id="previous">◀</div>
            <div id="counter"></div>
            
            <div id="pagination-wrap">
                <ul>
                </ul>
            </div>
            <!--controls-->  
                    
        </div>
  
   </div>


   <!-- 스틸컷 자바스크립@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
   <!-- 스틸컷 자바스크립@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
   <script>
            //current position
        var pos = 0;
        //number of slides
        var totalSlides = $('#slider-wrap ul li').length;
        //get the slide width
        var sliderWidth = $('#slider-wrap').width();


        $(document).ready(function(){
            
            
            /*****************
             BUILD THE SLIDER
            *****************/
            //set width to be 'x' times the number of slides
            $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
            
            //next slide    
            $('#next').click(function(){
                slideRight();
            });
            
            //previous slide
            $('#previous').click(function(){
                slideLeft();
            });
            
            
            
            /*************************
             //*> OPTIONAL SETTINGS
            ************************/
            //automatic slider
            var autoSlider = setInterval(slideRight, 3000);
            
            //for each slide 
            $.each($('#slider-wrap ul li'), function() { 

            //create a pagination
            var li = document.createElement('li');
            $('#pagination-wrap ul').append(li);    
            });
            
            //counter
            countSlides();
            
            //pagination
            pagination();
            
            //hide/show controls/btns when hover
            //pause automatic slide when hover
            $('#slider-wrap').hover(
            function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
            function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
            );
            
            

        });//DOCUMENT READY
            


        /***********
         SLIDE LEFT
        ************/
        function slideLeft(){
            pos--;
            if(pos==-1){ pos = totalSlides-1; }
            $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));    
            
            //*> optional
            countSlides();
            pagination();
        }


        /************
         SLIDE RIGHT
        *************/
        function slideRight(){
            pos++;
            if(pos==totalSlides){ pos = 0; }
            $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
            
            //*> optional 
            countSlides();
            pagination();
        }



            
        /************************
         //*> OPTIONAL SETTINGS
        ************************/
        function countSlides(){
            $('#counter').html(pos+1 + ' / ' + totalSlides);
        }

        function pagination(){
            $('#pagination-wrap ul li').removeClass('active');
            $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
        }
        
        function wish() {
        	
        	if(${ empty loginUser}  == false){
				location.href="${vwish}";
        		
        	}else{
        		alert("로그인 해주세요.")
        	}
			
		}
        
function cart() {
        	
        	if(${ empty loginUser}  == false){
				location.href="${vcart}";
        		
        	}else{
        		alert("로그인 해주세요.")
        	}
			
		}
		
		
function vbuy() {
	
	if(${ empty loginUser}  == false){
		location.href="${vbuy}";
		
	}else{
		alert("로그인 해주세요.")
	}
	
}
        
   </script>
   <!-- 스틸컷 자바스크립@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
   <!-- 스틸컷 자바스크립@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->


   <br><br><br>

   <!--리뷰$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
   
   
    <div id="review-div">
    　　　리뷰
   <c:if test="${ ck > 1 }">
    <hr>
    <div id="line2-div" style="position: absolute; height: 600px; top: 100px; left: 485px;"><img id="line2" style="height: 600px;" src="../수업자료/sample/image/줄.PNG"></div>
    
     <c:forEach var="v" items="${ vr }">
    <div id="review" style="margin-right: 50px;">
    
      <c:if test="${ v.reeScore eq 'G' }">
        	<div id="gnb"><span>좋아요</span></div>				
		</c:if>
		
		 <c:if test="${ v.reeScore eq 'B' }">
				<div id="gnb"><span>별로에요</span></div>				
		</c:if>
		
        <div id="userreview"><span>${v.reeContent }</span></div>
    </div>
    </c:forEach>
    </c:if>






    
   </div>

       <!-- 페이징바 -->
<div class="pagingbar">
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
  <!--리뷰$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
  
  <script>
  
  </script>

</body>
</html>