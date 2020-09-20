<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kh.kass.common.*" %>
<%@ page import="com.kh.kass.movie.model.vo.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">

<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>KASS CINEMA</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<!-- c:set 설정 -->
    <c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />







  	<!-- 이미지 업로드 자바 스크립트 -->
  	<script type="text/javascript">
  	
  			 
    function uploadImgPreview(num_id) {
		
    	
    	
    	
    	// @breif 업로드 파일 읽기

    	switch (num_id) {
		case "upImgFile1" :
			console.log("1번에 안착");
			var fileInfo = document.getElementById("upImgFile1").files[0];
			break;
		case "upImgFile2" :
			var fileInfo = document.getElementById("upImgFile2").files[0];
			break;
		case "upImgFile3" :
			var fileInfo = document.getElementById("upImgFile3").files[0];
			break;
		case "upImgFile4":
			var fileInfo = document.getElementById("upImgFile4").files[0];
			break;
		case "upvodFile5":
			var fileInfo = document.getElementById("upvodFile5").files[0];
			
		}
    	var reader = new FileReader();
    	console.log("fileInfo : " + fileInfo);
		console.log("reader : " + reader);
		

        // @details readAsDataURL( )을 통해 파일을 읽어 들일때 onload가 실행

        reader.onload = function() {

        	

            // @details 파일의 URL을 Base64 형태로 가져온다.
        	if(num_id == 'upImgFile1'){ // 매개변수 num_id가 upImgFile 이라면 == 포스터 id값이 upImgFile
            document.getElementById("thumbnailImg1").src = reader.result;
            document.getElementById("thumbnailImg1").style.width="496px";
            document.getElementById("thumbnailImg1").style.height="496px";
            document.getElementById("file-button1").style.display="none";
            console.log(document.getElementById(num_id).value);
          
        	} else if (num_id == 'upImgFile2'){ 
                document.getElementById("thumbnailImg2").src = reader.result;
                document.getElementById("thumbnailImg2").style.width="246px";
                document.getElementById("thumbnailImg2").style.height="192px";
                document.getElementById("file-button2").style.display="none";
                
                console.log(document.getElementById(num_id).value);
            }  else if (num_id == 'upImgFile3'){ 
                document.getElementById("thumbnailImg3").src = reader.result;
                document.getElementById("thumbnailImg3").style.width="246px";
                document.getElementById("thumbnailImg3").style.height="192px";
                document.getElementById("file-button3").style.display="none";
                
                console.log(document.getElementById(num_id).value);
            }  else if (num_id == 'upImgFile4'){ 
                document.getElementById("thumbnailImg4").src = reader.result;
                document.getElementById("thumbnailImg4").style.width="246px";
                document.getElementById("thumbnailImg4").style.height="192px";
                document.getElementById("file-button4").style.display="none";
                
                console.log(document.getElementById(num_id).value);
            } else if (num_id == 'upvodFile5'){
            	document.getElementById("file-button5").style.display="none";
            	document.getElementById("thumbnailvod5").style.display="inline";
            	
            	// 파일명 구하는 코드
            	var fileValue = $("#upvodFile5").val().split("\\");
            	var fileName = fileValue[fileValue.length-1]; 
            	console.log(fileName);
            	
            	
            	
            	document.getElementById("thumbnailvod5").innerHTML="/resources/images/movie_vod/" + fileName;
            	console.log(document.getElementById(num_id).value);
            }
        	console.log("벨류값 : " + document.getElementById("upImgFile1").value);
        };



        // @details onload 대신 addEventListener( ) 사용가능

    	// reader.addEventListener("load", function() {

        //    document.getElementById("thumbnailImg").src = reader.result;

        //    document.getElementById("thumbnailUrl").innerText = reader.result;

    	// }, false);

				

    	if( fileInfo ) {

    		

            // @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.

            reader.readAsDataURL( fileInfo );
            console.log("마지막1 : " + reader.velue);
            console.log("마지막2 : " + reader.result);
			console.log("마지막3 : " + reader.readAsDataURL);
        }
    	
    	

    }

</script>
  	
    
    
    
    
    
    
    
    <style>
        header,
        nav,
        section,
        article,
        aside,
        footer {
            /*border: 1px solid rgb(236, 159, 159);*/
            box-sizing: border-box;
            display: block;
        }

         body {
            width: 100%;
            background: white;
            margin: auto;
        }

        header {
            width: 1500px;
            height: 150px;
            margin: auto;
        }

        nav {
            width: 1500px;
            height: 70px;
            margin: auto;
        }

        #content {
            width: 100%;
            /* border: 1px rgb(236, 159, 159) solid; */
        }

        footer {
            width: 1500px;
            height: 150px;
            float: left;
            background: rgb(145, 145, 145);
            margin: auto;
        }

        header>section {
            float: left;
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
            height: 1700px;
            /* border: 1px rgb(236, 159, 159) solid;  */

        }

        #img1,
        #img2,
        #img3 {
            width: 500px !important;
            height: 400px !important;
            margin: auto;
        }

        .carousel {
            width: 100%;
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

        /* 하단 풋터 부분 */
        #footer1>a {
            text-decoration: none;
            font-weight: 600;
            line-height: 25px;
            color: black;
            margin: 0 10px;
        }

        #footer1>a:hover {
            color: deepskyblue;
        }

        #footer2>p {
            margin: 0;
            font-size: 12px;
        }

        #footer_logo {
            float: left;
            margin-right: 30px;
            width: 300px;
            height: 50px;
        }

        #footer3>* {
            margin-left: 25px;
        }

        /* 하단 풋터 부분 */

        /* 영역 나누기 */
        

        #stay2 {
            width: 100%;
            border: 1px white solid;
            background: white;
        }

        #stay_footer {
            width: 100%;
            height: 150px;
            border: 1px black solid;
            background: rgb(145, 145, 145);
        }

        #wrap_stay {
            width: 1500px;
            margin: auto;
        }
       

        #manager01 {
            width: 50%;
            height: 1189px;
            border-bottom:3px solid black;
            border-left:3px solid black;
            margin: auto;
            margin-top: 40px;
            background: white;
        }

        #manager02 {
            width: 50%;
            height: 1189px;
            border: 3px solid black;
            margin: auto;
            margin-top: 40px;
            background: #f2fbff;
        }

        #manager03 {
            width: 75%;
            height: 249px;
            border: 3px solid black;
            margin: auto;
            margin-top: 40px;
            background: #f2fbff;
            
        }

        #manager04{
            width: 20%;
            height:249px;
            margin: auto;
            margin-top: 40px;
            margin-left:5%;
            background: white;
            border: none;
        }

        #content1-1 {
            width: 80%;
            margin: auto;
            margin-top: 130px;
        }

        #content1-h1-1 {
        	
            width: 290px;
            align-content: center;
            margin: auto;
        }

        .manager-formQ1 {
            width: 20%;
            height: 100%;
            border: 1px solid black;
            display: block;
            float: left;
        }

            /* 영역 나누기 */
        
        .movie-div{
            width: 50%;
            height:14.3%;
            border: 1px solid black;
            float:left;
            font-size: 25px;
            text-align: center;
            background-color: #e9f5ff;
        }

        

        #movie-div-id13{
            width: 100%;
        }

        #movie-textarea{
            width: 80%;
            height: 70%;
            font-size: 15px;
        }

        #movie-div2-id1{
            width: 500px;
            height: 500px;
            margin: auto;
            margin-top: 10px;
            font-size: 25px;
        }

        #movie-div2-id2{
            width:600px;
            height:200px;
            margin-left: 70px;
            margin-top: 10px;
        }

        #movie-vod{
            width: 80%;
        }
        
        #file-button1{
            margin-left: 175px;
            margin-top: 140px;
            padding-left:50px;
            padding-right:50px;
            font-size: 100px;
            color:black;
            background-image: none;
            border: none;
            background-color: white;
            outline: none;
            text-shadow:none;
            -webkit-box-shadow: none;
            box-shadow:none;
        }

        #file-button2, #file-button3, #file-button4, #file-button5{
            margin-top: 20px;
            font-size: 60px;
            color:black;
            background-image: none;
            border: none;
            background-color: white;
            outline: none;
            text-shadow:none;
            -webkit-box-shadow: none;
            box-shadow:none;
        }
        
        #file-button5{
        	margin-top:-20px !important;
        }
        
        #thumbnailvod5{
        	margin-top:-12px;
        	width:450px;
        	height:170px;
        }


        #movie-div3-id1, #movie-div3-id2, #movie-div3-id3, #movie-div3-id4{
            height: 80%;
            width: 250px;
            margin-top: -5px;
            margin-left: 95px;
            float: left;
        }
        

        #movie-div3-input1{
            width: 100%;
        }

        #movie-manager04-button1, #movie-manager04-button2{
            width: 70%;
            height: 20%;
            margin-left:90px;
            margin-top:40px; 
        }

        #movie-manager04-button1{
            margin-top:100px; 
        }
		
		/* 이미지 첨부 p 태그들 */
       #manager02_p1{
       	font-size: 25px;
       	margin-left:120px;
       	margin-top:250px;
       }

       #manager03_p1{
           font-size:25px;
           margin-left:45%
       } 
       
       #manager02_p2{
       		font-size:25px;
       		padding-top:80px;
       		margin-left:70px;
       }
       
       select[name="movieAge"], select[name="genreCode"], select[name="movieRstatus"], select[name="movieName"]{
       	width: 300px;
       	height: 40px;
       }
       
       #thumbnailImg2, #thumbnailImg3, #thumbnailImg4{
       width:246px;
       height: 192px;
       }
       
       #thumbnailImg1{
       
       width:496px;
       height: 496px;
       }
       
     /* 배경 이미지 */
     #backimg{
	width: 1500px;
	height: 1830px;
	opacity : 5%;
	position: absolute;
	pointer-events: none;
	margin: auto;
	}
	
	#stay3{
	 width:1500px;
	 margin: auto;
	}

    </style>
</head>




<body>
					<%
                    	ArrayList<Attachment> ATClist1 = (ArrayList<Attachment>)request.getAttribute("movieAttachment1");  
	                    ArrayList<Attachment> ATClist2 = (ArrayList<Attachment>)request.getAttribute("movieAttachment2");
	                    ArrayList<Attachment> ATClist3 = (ArrayList<Attachment>)request.getAttribute("movieAttachment3");
                    %>

    <jsp:include page="../../views/common/manager.jsp" />
        
    <section id="content">
        <div id="stay2">
        <div id="stay3">
        <img id="backimg" src="<%=request.getContextPath()%><%=ATClist1.get(0).getFilePath()%><%=ATClist1.get(0).getRenameFileName()%>">
        </div>
            <div id="wrap_stay">
                <div class="content1">
                    <!-- 내부 시작 부분 -->
                    <div id="content1-1">

                        <h1 id="content1-h1-1" style="align-content: center">영화 정보 수정</h1>
                    </div>
                    <form method="post" action="update.do" enctype="multipart/form-data">
                    <div class="manager-formQ1" id="manager01">
                    
                    
                    <c:forEach var="movieList1" items="${movieList1}">
                    
                    	<div class="movie-div" id="movie-div-id1"><br> 영화제목<br><select name="movieName" required onchange="movieNameChange(this.value)">
                    		<option value="${movieList1.movieName}">${movieList1.movieName}</option>
                    		<c:forEach var="movieList" items="${ movieList }">
                    <%-- <% 
                    ArrayList<Movie> list = (ArrayList<Movie>)request.getAttribute("movieList");
                    for(int i = 0; i<list.size();i++){
                    %>	 --%>	
                    	 <c:if test="${ movieList1.movieNo ne movieList.movieNo }">
                    		<option value="${ movieList.movieName }">${ movieList.movieName }</option>
                    	</c:if>
                    <%-- <% 
                    }
                    %>	 --%>
                    </c:forEach>	
                    	</select>
                    	<input type="text" id="search01" style="width: 235px;"><button type="button" onclick="Search();">검색</button>
                    	</div>
                    	<!-- movieName 바뀌면 전체가 바뀌는 function -->
                    	<script>
                    	function movieNameChange(obj){   		
                  		return location.href="MovieManagerUpdatePageName.do?MovieName="+obj;
                    	}
                    	// 검색 버튼을 누르면 오는 div
                    	function Search(){
                    		var search = $("#search01").val();
                    	return location.href="MovieManagerUpdatePageName.do?MovieName="+search;
                    	}
                    	
                    	</script>
                    
                        <div class="movie-div" id="movie-div-id2"><br>감독<br><input type="text" name="movieForeman" value="${ movieList1.movieForeman }" required></div>
                        <div class="movie-div" id="movie-div-id3"><br>영화 연령<br><select name="movieAge" required>
                        <c:choose>
                        	<c:when test="${ movieList1.movieAge eq 0 }">
                        	<option value="0">전체이용가(기존값)</option>
                        	<option value="12">12세 이용가</option>
                        	<option value="15">15세 이용가</option>
                        	<option value="19">청소년 관람불가</option>
                        	</c:when>
                        	<c:when test="${ movieList1.movieAge eq 12 }">
                        	<option value="12">12세 이용가(기존값)</option>
                        	<option value="0">전체이용가</option>
                        	<option value="15">15세 이용가</option>
                        	<option value="19">청소년 관람불가</option>
                        	</c:when>
                        	<c:when test="${ movieList1.movieAge eq 15 }">
                        	<option value="15">15세 이용가(기존값)</option>
                        	<option value="0">전체이용가</option>
                        	<option value="12">12세 이용가</option>
                        	<option value="19">청소년 관람불가</option>
                        	</c:when>
                        	<c:when test="${ movieList1.movieAge eq 19 }">
                        	<option value="19">청소년 관람불가(기존값)</option>
                        	<option value="0">전체이용가</option>
                        	<option value="12">12세 이용가</option>
                        	<option value="15">15세 이용가</option>
                        	</c:when>
                        </c:choose>
                        </select></div>
                        <div class="movie-div" id="movie-div-id4"><br>프로듀서<br><input type="text" name="movieProducer" value="${ movieList1.movieProducer }" required></div>
                        <div class="movie-div" id="movie-div-id5"><br>영화 장르<br><select name="genreCode"  required>
                        <option value="${ movieGenreListName.get(0).genreCode }">${ movieGenreListName.get(0).genreName }&nbsp(기존값)</option>
                        <c:forEach var="movieGenreList" items="${ movieGenreList }">
                        <c:if test="${ movieGenreList.genreCode ne movieGenreListName.get(0).genreCode  }">
                        	<option value="${ movieGenreList.genreCode }">${ movieGenreList.genreName }</option>
                        </c:if>
                        </c:forEach>
                        </select></div>
                        <div class="movie-div" id="movie-div-id6"><br>배우<br><input type="text" name="movieActor" value="${ movieList1.movieActor }" required></div>
                        <div class="movie-div" id="movie-div-id7"><br>개봉 날짜<br><input type="date" name="movieRdate" value="${ movieList1.movieRdate }" readonly="readonly" required></div>
                        <div class="movie-div" id="movie-div-id8"><br>상영 시간<br><input type="text" name="movieStime" value="${ movieList1.movieStime }" required></div>
                        <div class="movie-div" id="movie-div-id9"><br>개봉 상태<br><select name="movieRstatus" required>
                        	<option value="Y">상영등록 가능</option>
                        	<option value="N">상영등록 불가</option>
                        </select></div>
                        <div class="movie-div" id="movie-div-id10"><br>제작 국가<br><input type="text" name="movieCountry" value="${ movieList1.movieCountry }" required></div>
                        <div class="movie-div" id="movie-div-id11"><br>영화 가격<br><input type="text" name="moviePrice" value="${ movieList1.moviePrice }" required></div>
                        <div class="movie-div" id="movie-div-id12"><br>예고편 링크<br><textarea style="resize: none;" name="movieLink" required>${ movieList1.movieLink }</textarea></div>
                        <div class="movie-div" id="movie-div-id13">영화 내용<br><textarea id="movie-textarea" style="resize: none;" name="movieContent" required>${ movieList1.movieContent }</textarea></div>
					</c:forEach>
					
					
                    </div>
                    <div class="manager-formQ1" id="manager02">
                    
                    <p id="manager02_p1">사진 포스터</p>
                        <div class="movie-div2" id="movie-div2-id1"><img id="thumbnailImg1" onclick="funimg1()" src="<%=request.getContextPath()%><%=ATClist1.get(0).getFilePath()%><%=ATClist1.get(0).getRenameFileName()%>"><br>
                            <label class="btn btn-primary btn-file" id="file-button1" style="visibility: hidden;">
                                + <input multiple="multiple" type="file" name="file1" id="upImgFile1" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" >
                            </label>
                        </div>
                    <p id="manager02_p2">VOD 파일</p>
                        <div class="movie-div" id="movie-div2-id2"><br><textarea id="thumbnailvod5" style="resize: none;" onclick="funimg5()"><%=ATClist3.get(0).getFilePath()%><%=ATClist3.get(0).getOriginFileName()%></textarea><br><label class="btn btn-primary btn-file" style="visibility: hidden;" id="file-button5">
                            + <input multiple="multiple" type="file" name="file5" id="upvodFile5" onchange="uploadImgPreview(this.id);" accept="video/*" style="display: none;" >
                        </label></div>
                    </div>
                  
                    
                    <div class="manager-formQ1" id="manager03">
                            <p id="manager03_p1">영화 스틸컷</p>
                        <div class="movie-div" id="movie-div3-id1"><img id="thumbnailImg2" onclick="funimg2()"  src="<%=request.getContextPath()%><%=ATClist2.get(0).getFilePath()%><%=ATClist2.get(0).getRenameFileName()%>"><br><label class="btn btn-primary btn-file" style="visibility: hidden;" id="file-button2">
                            + <input multiple="multiple" type="file" name="file2" id="upImgFile2" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" >
                        </label></div>
                        <div class="movie-div" id="movie-div3-id2"><img id="thumbnailImg3" onclick="funimg3()"  src="<%=request.getContextPath()%><%=ATClist2.get(1).getFilePath()%><%=ATClist2.get(1).getRenameFileName()%>"><br><label class="btn btn-primary btn-file" style="visibility: hidden;"id="file-button3">
                            + <input multiple="multiple" type="file" name="file3" id="upImgFile3" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" >
                        </label></div>
                        <div class="movie-div" id="movie-div3-id3"><img id="thumbnailImg4" onclick="funimg4()"  src="<%=request.getContextPath()%><%=ATClist2.get(2).getFilePath()%><%=ATClist2.get(2).getRenameFileName()%>"><br><label class="btn btn-primary btn-file" style="visibility: hidden;"id="file-button4">
                            + <input multiple="multiple" type="file" name="file4" id="upImgFile4" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" >
                        </label></div>
                    </div>
                    <div class="manager-formQ1" id="manager04">
                           
                            <button type="button" class="btn btn-primary" id="movie-manager04-button1" onclick="test1()">등록</button>
                            <button type="button" class="btn btn-primary" id="movie-manager04-button2">취소</button>
							<button type="submit"  id="movie-manager04-button3" style="overflow: hidden;width: 0px; height: 0px;border: none;
    						padding: 0px !important;"></button>
                    </div>
                    
                    <!-- 이미지 클릭 시 파일 추가 function -->
                     <script>
                     
                     document.addEventListener('keydown', function(event) {
                    	  if (event.keyCode === 13) {
                    	    event.preventDefault();
                    	  };
                    	}, true);
                     
                     
                     function test1(){
                    		 $("#movie-manager04-button3").click();
                     }
                     window.onload = function () {
                    	 console.log("시작 test1값 : " + document.getElementById("upImgFile1").value);
                    	 
                    	}
                     
                        
                        function funimg1(){
                             	$("label[id='file-button1']").click();
                        }
                        
                        function funimg2(){
                         	$("label[id='file-button2']").click();
                    	}
                        
                        function funimg3(){
                         	$("label[id='file-button3']").click();
                    	}
                        
                        function funimg4(){
                         	$("label[id='file-button4']").click();
                    	}
                        
                        function funimg5(){
                         	$("label[id='file-button5']").click();
                    	}
                        
                       	
                       
                        </script>
                    
                </form>
                </div>
            </div>
        </div>
    </section>
    <div id="stay_footer">
        <div id="wrap_stay">
            <footer>
                <div id="footer1">
                    <a href="#">회사소개</a> |
                    <a href="#">이용약관</a> |
                    <a href="#">개인정보이용방침</a> |
                    <a href="#">고객센터</a>
                </div>
                <div id="footer2">
                    <img src="${ contextPath }/resources/images/logo_white.png" id="footer_logo">
                    <p>
                        서울 특별시 테헤란로 10길 9 (우)06234 ARS 1544-XXXX<br>
                        대표자명 안태상 개인정보보호책임자 안태상 사업자등록번호 XXX-XX-XXXXX · 통신판매업신고번호 제 833호<br>
                        COPYRIGHT@Kasscinema, Inc, All rights reserved
                    </p>
                </div>
                <div id="footer3">
                    <a>F</a>
                    <a>Y</a>
                    <a>I</a>
                </div>
            </footer>
        </div>
    </div>


    


</body>

</html>