<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


	
	
	
	
	<script>
	window.onload = function() {
		
		var result = ${resultOX};
		
		if(result == 0){
			alert("영화정보 등록에 실패했습니다.")
			console.log("resultOX == 0");
		} else if(result == 2){
			console.log("resultOX == 2");
		} else if(result == 1){
			alert("영화 정보 등록에 성공하였습니다!!");
			console.log("resultOX == 1");
		} else if(result == 3){
			alert("영화 정보 수정에 성공하였습니다!!");
			location.href="MovieManagerUpdatePage.do";
		} else if(result == 4){
			alert("해당 영화의 이름은 존재하지 않습니다!");
			location.href="MovieManagerUpdatePage.do";
		} else if(result == 5){
			alert('해당 영화의 이름은 존재하지 않습니다!');
			location.href="MovieManagerScreenInsert.do";
		}
		
	}
	</script>


	
  	<!-- 이미지 업로드 자바 스크립트 -->
  	<script type="text/javascript">
  	
  			 
    function uploadImgPreview(num_id) {
		
    	
    	
    	// @breif 업로드 파일 읽기

    	switch (num_id) {
		case "upImgFile1" :
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

        };



        // @details onload 대신 addEventListener( ) 사용가능

    	// reader.addEventListener("load", function() {

        //    document.getElementById("thumbnailImg").src = reader.result;

        //    document.getElementById("thumbnailUrl").innerText = reader.result;

    	// }, false);

				

    	if( fileInfo ) {

    		

            // @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.

            reader.readAsDataURL( fileInfo );

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
            width: 100%;
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
            border-bottom: 3px solid black;
    		border-left: 3px solid black;
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
            background: white;
            background-color: #f2fbff;
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
            border: 3px solid black;
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
            background-color: #f2fbff;
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
            background-color: #e9f5ff;
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
        	display: none;
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
            margin-left:50px;
            margin-top:20px; 
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
       
       select[name="movieAge"], select[name="genreCode"], select[name="movieRstatus"]{
       	width: 300px;
       	height: 40px;
       }
       
     

    </style>
</head>




<body>


    <jsp:include page="../../views/common/manager.jsp" />
        
    <section id="content">
        <div id="stay2">
            <div id="wrap_stay">
                <div class="content1">
                    <!-- 내부 시작 부분 -->
                    <div id="content1-1">

                        <h1 id="content1-h1-1" style="align-content: center">영화 정보 등록</h1>
                    </div>
                    <form method="post" action="upload.do" enctype="multipart/form-data">
                    <div class="manager-formQ1" id="manager01">
                    
                    
                    	<div class="movie-div" id="movie-div-id1"><br> 영화제목<br><input type="text" name="movieName" required></div>
                        <div class="movie-div" id="movie-div-id2"><br>감독<br><input type="text" name="movieForeman" required></div>
                        <div class="movie-div" id="movie-div-id3"><br>영화 연령<br><select name="movieAge" required>
                        	<option value="0">전체이용가</option>
                        	<option value="12">12세 이용가</option>
                        	<option value="15">15세 이용가</option>
                        	<option value="19">청소년 관람불가</option>
                        </select></div>
                        <div class="movie-div" id="movie-div-id4"><br>프로듀서<br><input type="text" name="movieProducer" required></div>
                        <div class="movie-div" id="movie-div-id5"><br>영화 장르<br>
                        <select name="genreCode"  required>
                        <c:forEach var="movieGenreList" items="${ movieGenreList }">
                        	<option value="${ movieGenreList.genreCode }">${ movieGenreList.genreName }</option>
                        </c:forEach>
                        </select></div>
                        <div class="movie-div" id="movie-div-id6"><br>배우<br><input type="text" name="movieActor" required></div>
                        <div class="movie-div" id="movie-div-id7"><br>개봉 날짜<br><input type="date" name="movieRdate" required></div>
                        <div class="movie-div" id="movie-div-id8"><br>상영 시간<br><input type="text" name="movieStime" required></div>
                        <div class="movie-div" id="movie-div-id9"><br>개봉 상태<br><select name="movieRstatus" required>
                        	<option value="Y">상영등록 가능</option>
                        	<option value="N">상영등록 불가</option>
                        </select></div>
                        <div class="movie-div" id="movie-div-id10"><br>제작 국가<br><input type="text" name="movieCountry" required></div>
                        <div class="movie-div" id="movie-div-id11"><br>영화 가격<br><input type="text" name="moviePrice" required></div>
                        <div class="movie-div" id="movie-div-id12"><br>예고편 링크<br><textarea style="resize: none;" name="movieLink" required></textarea></div>
                        <div class="movie-div" id="movie-div-id13">영화 내용<br><textarea id="movie-textarea" style="resize: none;" name="movieContent" required></textarea></div>
                    </div>
                    <div class="manager-formQ1" id="manager02">
                    
                    <p id="manager02_p1">사진 포스터</p>
                        <div class="movie-div2" id="movie-div2-id1"><img onclick="funimg1()" id="thumbnailImg1" src=""><br>
                            <label class="btn btn-primary btn-file" id="file-button1">
                                + <input multiple="multiple" type="file" name="file1" id="upImgFile1" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" required>
                            </label>
                        </div>
                    <p id="manager02_p2">VOD 파일</p>
                        <div class="movie-div" id="movie-div2-id2"><br><textarea id="thumbnailvod5" onclick="funimg5()" style="resize: none;">VOD경로</textarea><br><label class="btn btn-primary btn-file" id="file-button5">
                            + <input multiple="multiple" type="file" name="file5" id="upvodFile5" onchange="uploadImgPreview(this.id);" accept="video/*" style="display: none;" required>
                        </label></div>
                    </div>
                    
                    <div class="manager-formQ1" id="manager03">
                            <p id="manager03_p1">영화 스틸컷</p>
                        <div class="movie-div" id="movie-div3-id1"><img id="thumbnailImg2" onclick="funimg2()" src=""><br><label class="btn btn-primary btn-file" id="file-button2">
                            + <input multiple="multiple" type="file" name="file2" id="upImgFile2" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" required>
                        </label></div>
                        <div class="movie-div" id="movie-div3-id2"><img id="thumbnailImg3" onclick="funimg3()" src=""><br><label class="btn btn-primary btn-file" id="file-button3">
                            + <input multiple="multiple" type="file" name="file3" id="upImgFile3" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" required>
                        </label></div>
                        <div class="movie-div" id="movie-div3-id3"><img id="thumbnailImg4" onclick="funimg4()" src=""><br><label class="btn btn-primary btn-file" id="file-button4">
                            + <input multiple="multiple" type="file" name="file4" id="upImgFile4" onchange="uploadImgPreview(this.id);" accept="image/*" style="display: none;" required>
                        </label></div>
                    </div>
                    
                    <script>
                    
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
                    
                    
                    
                    
                    <div class="manager-formQ1" id="manager04">
                           
                            <button type="submit" class="btn btn-primary" id="movie-manager04-button1" value="upload">등록</button>
                            <button type="button" class="btn btn-primary" id="movie-manager04-button2">취소</button>

                    </div>
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