<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kh.kass.common.*" %>
<%@ page import="com.kh.kass.movie.model.vo.*" %>
<%@ page import="com.kh.kass.movie.controller.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.text.SimpleDateFormat"%> 

<!doctype html>
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
	
	<!-- 날짜변환 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>



	


    <!-- 캘린더 전용 -->
     <script src="https://code.jquery.com/jquery-3.2.1.js"></script>

        <link rel="stylesheet" href="${ contextPath }/resources/css/jquery-ui.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>


        <script type='text/javascript' src='http://code.jquery.com/jquery-1.8.3.js'></script>



        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">

        <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>

        <script src="${ contextPath }/resources/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
     
        <!-- 바로 위까지 -->
        <script type='text/javascript'>

            $(function(){
        
                $('.input-group.date').datepicker({
        
                    calendarWeeks: false,
        
                    todayHighlight: true,
        
                    autoclose: true,
        
                    format: "yyyy/mm/dd",
        
                    language: "kr"
        
                });
        
            });

         
        
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
            width: 100;
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
            height: 2000px;
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



        /* 로고 */
        #logo_img {
            display: block;
            margin: auto;
            margin-top: 20px;
        }

        /* 로고 */
      
   

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
        #stay1 {
            width: 100%;
            border: 1px white solid;
            background: rgb(145, 145, 145);
        }

        #stay2 {
            width: 100%;
            height: 2000px;
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
            width: 80%;
            height: 80%;
            border: 3px solid black;
            margin: auto;
            margin-top: 40px;
            background: white;
        }

        #content1-1 {
            width: 80%;
            margin: auto;
            margin-top: 130px;
        }

        #content1-h1-1 {
            width: 290px;
            margin: auto;
        }
        
        /* 메인 단 */

        #manager02{
            width: 100%;
            height: 70px;
            display: block;
            background-color: #d9edf7;
            
        }

        #manager02-1{
            width:25%;
            height:50px;
            float: left;
            margin: 10px;
        }
		
		

        #dropdownMenu1{
            width: 100%;
            height: 50px;
        }
        
        #dropdownMenu1_A{
        	 width: 100%;
            height: 50px;
            margin-top: 10px;
        }
        
        #dropdownMenu2{
            width: 100%;
            height: 50px;
            
        }
        
        #dropdownMenu3{
            width: 100%;
            height: 50px;
            
        }
        
        #dropdownMenu4{
        	width: 100%;
            height: 50px;
        }
        
        #dropdownMenu_selete01, #dropdownMenu_selete02{
        	text-align:center;
    	  	width: 40%;
            height: 50px;
            font-size:20px;
        }
        
        #dropdownMenu_selete02{
        	margin-left: 90px;
        }
        
        #dropdownMenu5{
    	  	  width: 100%;
            height: 50px;
            font-size:20px;
        }

        #manager03{
            width:35%;
            height:50px;
            display: block;
            float: left;
        }

        #manager04{
            width:25%;
            height:50px;
            display: block;
            float: left;
            margin-top: 10px;
        }

        #manager05{
            width:12%;
            height:50px;
            display: block;
            float: left;
            margin-top: 10px;
        }

        #manager06{
            margin: auto;
            margin-top: 10px;
            margin-left:47%;
            float: left;
        }

        #movie-manager04-button1, #movie-manager04-button2{
            width: 70%;
            height: 20%;
            margin-left:50px;
            margin-top:20px; 
        }

        #button-01{
            width: 80%;
            height:80%;
            margin: auto;
            margin-left: 18px;
            margin-top: 3px;
        }

        #table-div-01{
            width: 100%;
            height: 500px;
            border:1px solid black;
            padding:10px;
        }

        #table-02{
            font-size: 23px;
            text-align: center;
        }
        
        #manager2-01{
            width: 50%;
            height: 1025px;
            border: 1px solid black;
            float: left;
            background-color: #d9edf7;
        }

        #manager2-02{
            width: 50%;
            height: 1025px;
            border: 1px solid black;
            float: left;
            background-color: #d9edf7;
            
        }

        .manager2-div{
            width:80%;
            margin-left: 60px;
            height: 10%;
            float:left;
        }

       .manager2-2-div{
            width:80%;
            margin-left: 60px;
            margin-top: 40px;
            height: 30%;
            border: 1px solid black;
            float:left;
       }

       #manager2-id-div1{
           margin-top: 95px;
           height: 400px;
           background-color: white;
       }
        
       

            /* 영역 나누기 */


        /* 달력 부분 */

        #container-1{
            width: 100%;
            height: 100%;
            background-color: white;
        }

        .datepicker{
         	left: 833px !important;
		    top: -1284px !important;
		    
		    width: 430px;
		    height: 260px;
		    position: relative;
        }

        .datepicker table tr td, .datepicker table tr th {
        text-align: center;
        width: 30px;
        height: 30px;
        border-radius: 4px;
        border: none;
        font-size: 15px;
        }

        .datepicker .datepicker-switch {
            width: 550px;
        }

        .table-condensed>tbody>tr>td, .table-condensed>tbody>tr>th, .table-condensed>tfoot>tr>td, .table-condensed>tfoot>tr>th, .table-condensed>thead>tr>td, .table-condensed>thead>tr>th {
            padding: 5px;
        }
        
        
/* 4번째 div flaot:left 해제*/
.manager2-div{
	float:none;
}

#imgdiv1{
	width:80%;
	height:550px;
	margin-left:60px;
	border: 1px solid black;
	background-color: white;
}

#thumbnailImg1{
       
       width:100%;
       height: 550px;
       }
       
/*테이블 텍스트 굵게 하기*/       
.table_td1{
	font-weight: bold;
}

select{
font-weight: bold;
font-size:20px;
}


#manager2-01-01{
	margin-top: 35px;
}
#backimg{
width: 1500px;
height: 2000px;
opacity : 5%;
position: absolute;
pointer-events: none;
margin: auto;
}

#dateText01{
	width:80%;
	height:45px;
	margin-left: 60px;
	margin-top:40px;
}

    </style>
    
</head>




<body>
        <!-- 드롭박스 선택 시 알러트 뜨는 script -->
         		<%
                            	ArrayList<Attachment> ATClist1 = (ArrayList<Attachment>)request.getAttribute("movieAttachment1");
            	%>
            	
            	
     <jsp:include page="../../views/common/manager.jsp" />
    <section id="content">
        <div id="stay2">
        <img id="backimg" src="<%=request.getContextPath()%><%=ATClist1.get(0).getFilePath()%><%=ATClist1.get(0).getRenameFileName()%>">
            <div id="wrap_stay">
                <div class="content1">
                    <!-- 내부 시작 부분 -->
                    <div id="content1-1">
                        <h1 id="content1-h1-1" style="align-content: center">영화 상영 등록</h1>
                    </div>
                    <div id="manager01">
               			<div id="manager02">
                            <!-- 위에 상단바 -->
                            <div class="dropdown" id="manager02-1">
                            <c:forEach var="movieListName" items="${movieListName}">
                                    <select id ="dropdownMenu1" name="dd6" onchange="movieNameChange(this.value);">
                                            <option value="${movieListName.movieName}" id="dropdown-a">${movieListName.movieName}</option>
		                    		<c:forEach var="list" items="${ movListFile }">
		                    		<c:if test="${ movieListName.movieNo ne list.movieNo }">
		                    				<option value="${ list.movieName }">${ list.movieName }</option>
                    				</c:if>
		                    		</c:forEach>
                                    </select>
                            <script>
		                    	function movieNameChange(obj){   		
		                  		return location.href="MovieManagerScreenInsertName.do?MovieName="+obj;
		                    	}
                    	
                    	
                    		</script>
                            
                            </c:forEach>
                            
                                
                            </div>
                            <div id="manager03">
                            <!-- 중앙 빈 공간 -->
                            </div>

                            <!-- 지역선택하는 부분 -->
                            <div id="manager04">
                                    <select id ="dropdownMenu2" name="dd2">
                            <% 
                            ArrayList<Movie_Area> list_Area = (ArrayList<Movie_Area>)request.getAttribute("movieArea");
                           
                            for(int j = 0; j < list_Area.size(); j++){ 
                            %>                
                                            <option value="<%= list_Area.get(j).getMaName()%>" id="list_Area_name"><%= list_Area.get(j).getMaName()%></option>
                            <%
                            }
                            %> 
                                    </select>

                            </div>

                            <div id="manager05">
                                <button type="button" class="btn btn-primary" onclick="listset(this)" id="button-01">확인</button>
                            </div>
                            <script type="text/javascript">
                            function listset(num){
                            	if(num.id == 'button-01'){
                            		var list_AreaName = document.getElementById("dropdownMenu2");
                                	var list_MovieName = document.getElementById("dropdownMenu1");
                                	var itemList = list_AreaName.value;
                                	itemList += "/" + list_MovieName.value;
                                	return location.href="MovieManagerScreenInsertbutton.do?itemList="+itemList;
                            	} else if(num.id == 'dropdownMenu3') {
                            		var list_AreaName = document.getElementById("dropdownMenu3");
                                	var list_MovieName = document.getElementById("dropdownMenu1");
                                	var itemList = list_AreaName.value;
                                	itemList += "/" + list_MovieName.value;
                                	return location.href="MovieManagerScreenInsertbutton.do?itemList="+itemList;
                            	} else if(num.id == 'list_Area_name'){
                            		var list_AreaName = document.getElementById("dropdownMenu3");
                                	var list_MovieName = document.getElementById("dropdownMenu1");
                                	var itemList = list_AreaName.value;
                                	itemList += "/" + list_MovieName.value;
                                	return location.href="MovieManagerScreenInsertbutton.do?itemList="+itemList;
                            	}
                            	/* select 된 지역과 영화 이름을 변수로 가져옴*/
                            	
                            	}
                            
                            
                            </script>
                        </div>
                        <div id="table-div-01" style="overflow:auto;" >
                            <table class="table table-striped" id="table-02">
                                <thead>
                                    <tr>
                                        <td class="table_td1" scope="col">영화</td>
                                        <td class="table_td1" scope="col">날짜</td>
                                        <td class="table_td1" scope="col">관</td>
                                        <td class="table_td1" scope="col">시간</td>
                                        <td class="table_td1" scope="col">지점</td>

                                    </tr>
                                </thead>
                                <tbody>
                                    
                            <% 
	                            ArrayList<Movie_Res> list_movieRes = (ArrayList<Movie_Res>)request.getAttribute("movieResList");
	                            ArrayList<Movie> listMovieName = (ArrayList<Movie>)request.getAttribute("movieListName");
	                           
	                           	int l = 0;
	                            for(int k = 0; k < list_movieRes.size(); k++)
	                            { 
                            %> 
                            		<tr>
                                        <td style="width:350px"><%=listMovieName.get(l).getMovieName() %></td> <!-- 영화 제목 들어갈 곳-->
                                        <td><%=list_movieRes.get(k).getResDate() %></td>
                                        <td><%=list_movieRes.get(k).getRoomNo() %>관</td> <!-- 관이 들어갈 곳-->
                                        <td><%=list_movieRes.get(k).getStartTime() %>&nbsp~&nbsp<%=list_movieRes.get(k).getEndTime() %></td> <!-- 시간 -->
                                        <td><%=list_movieRes.get(k).getMaName() %></td> <!-- 지점 명 -->
                                    </tr>
                            <%
	                            }
	                            l++;
                            %>
                                </tbody>
                            </table>

                        </div>
                        <!-- 위에까지가 위쪽 영역 -->
                        <div id="manager2-01">
                            <!-- 선택 쪽 -->
                            <div class="manager2-div" id="manager2-01-01">
                                <!-- 영화 선택 -->
                               
                            <c:forEach var="movieListName" items="${movieListName}">
                                    <select id="dropdownMenu1" class="dropdownMenu1_01" onchange="movieNameChangebottom(this.value);" name="dd6">
                                            <option value="${movieListName.movieName}" id="dropdown-a">${movieListName.movieName}</option>
                                            
		                    <c:forEach var="list" items="${ movListFile }">
	                    		<c:if test="${ movieListName.movieNo ne list.movieNo }">
	                    				<option value="${ list.movieName }">${ list.movieName }</option>
                   				</c:if>
                    		</c:forEach>
                                    </select>
                            </c:forEach>
                            <div style="margin-top:3px;">
                            <input type="text" id="search01" style="width: 80%;height: 45px;font-size:20px;font-weight:bold;"><button type="button" style="width:15%;height:45px;margin-left:23px;" onclick="Search();">검색</button>
                            </div>
                            
                            
                            
                            <!-- 아래쪽 이름 바꿀 시 실행되는 function과 Ajax -->
                            <script>
                            // 검색했을떄 들어옴
                            function Search(){
                            	var search = $("#search01").val();
                            	location.href = "MovieManagerResAjaxSearch.do?search="+search;
                            }
                            
                            
                            
                            
                            function movieNameChangebottom(obj){
                            	$.ajax({ 
									url: "MovieManagerResAjax.do",
									type: "post",
									data: obj,
									contentType: "application/json; charset=utf-8",
									success: function(data) {
										var image = document.getElementById("thumbnailImg1");
										image.src = "${ contextPath }"+data;
										var image2 = document.getElementById("backimg");
										image2.src = "${ contextPath }"+data;
										},
										error: function(errorThrown) {
										alert("상영등록에 실패했습니다.")
										},
									});
                            	
                            	$.ajax({ 
									url: "MovieManagerResAjax2.do",
									type: "post",
									data: obj,
									contentType: "application/json; charset=utf-8",
									success: function(data) {
										var date1 = document.getElementById("dateText01");
										date1.value = + data;
										},
										error: function(errorThrown) {
										alert("상영등록에 실패했습니다.")
										},
									});
                            	
                            	
								}
                            </script>
                            
                            
                            
                           
                                    
                            </div>
                            <div class="manager2-div" id="manager2-01-02">
                            
                            
                            
                             <!-- 지점 선택 -->
		                           <select id ="dropdownMenu3" onchange="change_A()" name="dd2">
                                   			
                            <% 
                            ArrayList<Movie_Area> list_Area1 = (ArrayList<Movie_Area>)request.getAttribute("movieArea");
                            String list_AreaName = (String)request.getAttribute("MovieAreaName");
                            %>
                            				<option value="<%= list_AreaName %>"  id="list_Area_name1"><%= list_AreaName %></option>
                            <%
                            for(int p = 0; p < list_Area1.size(); p++){ 
                            %>                
                                            <option value="<%= list_Area1.get(p).getMaName()%>" id="list_Area_name"><%= list_Area1.get(p).getMaName()%></option>
                            <%
                            }
                            %> 
                                    </select>
                                    
                                
                            </div>
                            <div class="manager2-div" id="manager2-01-03">
                                <!-- 상영관 선택 -->
                                    <select id ="dropdownMenu4"  name="dd5" >
                                            <option value='' id="1">1관</option>
                                            <option value='' id="2">2관</option>
                                            <option value='' id="3">3관</option>
                                    </select>
                                    
                                    <!-- 지역별로 value값을 바꿔 DB에 넣기위함 -->
                                    <script>
                                    window.onload = function () {
                                    	var you_null = document.getElementById("dropdownMenu3");
                                    	if(you_null.value == 'null'){
                                    		document.getElementById("list_Area_name1").innerHTML="지역을 선택 해 주세요";
                                    		document.getElementById("list_Area_name1").value="지역을 선택 해 주세요";
                                    		document.getElementById("list_Area_name1").text="지역을 선택 해 주세요";
                                    	} else {
                                    	// null 값이 아니라면
                                    	var you_value = document.getElementById("dropdownMenu3");
                                    	var you_value = document.getElementById("dropdownMenu3");
                                    	var roomNo;
                                    	var idnum = 1;
                                    	$.ajax({ 
        									url: "MovieManagerResRoomNoAjax.do",
        									type: "post",
        									data: you_value.value,
        									contentType: "application/json; charset=utf-8",
        									success: function(data) {
        										for(i in data){
        										  console.log("아자스 for문 : " + i + " " + data[i].roomNo);
        										  roomNo = data[i].roomNo;
        										  
        										  console.log("roomNo : " + roomNo);
        										  document.getElementById(idnum).value=roomNo;
        										  console.log("들어가는 값 : " + document.getElementById(idnum).value);
        										  idnum++;
        										}
        										},
        										error: function(errorThrown) {
        										alert("상영등록에 실패했습니다.")
        										},
        									}); 
                                    	}
                                    	
                                    	
                                    	var num1 = $(".dropdownMenu1_01").val(); 
                                        	   $.ajax({ 
                                    				url: "MovieManagerResAjax2.do",
                                    				type: "post",
                                    				data: num1,
                                    				contentType: "application/json; charset=utf-8",
                                    				success: function(data) {
                                    					var date1 = document.getElementById("dateText01");
                                    					date1.value = + data;
                                    					},
                                    					error: function(errorThrown) {
                                    					alert("상영등록에 실패했습니다.")
                                    					},
                                    				});
                                    }
                                    
                                    function change_A(){
                                    	var you_null = document.getElementById("dropdownMenu3");
                                    	if(you_null.value == 'null'){
                                    		document.getElementById("list_Area_name1").innerHTML="지역을 선택 해 주세요";
                                    		document.getElementById("list_Area_name1").value="지역을 선택 해 주세요";
                                    		document.getElementById("list_Area_name1").text="지역을 선택 해 주세요";
                                    	} else {
                                    	// null 값이 아니라면
                                    	var you_value = document.getElementById("dropdownMenu3");
                                    	var roomNo;
                                    	var idnum = 1;
                                    	$.ajax({ 
        									url: "MovieManagerResRoomNoAjax.do",
        									type: "post",
        									data: you_value.value,
        									contentType: "application/json; charset=utf-8",
        									success: function(data) {
        										for(i in data){
        										  console.log("아자스 for문 : " + i + " " + data[i].roomNo);
        										  roomNo = data[i].roomNo;
        										  
        										  console.log("roomNo : " + roomNo);
        										  document.getElementById(idnum).value=roomNo;
        										  console.log("들어가는 값 : " + document.getElementById(idnum).value );
        										  idnum++;
        										}
        										
        										
        										},
        										error: function(errorThrown) {
        										alert("상영등록에 실패했습니다.")
        										},
        									}); 
        								}
                                    }
                                    
                                    
                                    </script>
                            </div>
                            <div class="manager2-div" id="manager2-01-04">
                           <!-- 상영 시간대 선택 -->
                                    <select id="dropdownMenu_selete01">
                                      <option value="07">07시</option>
                                      <option value="08">08시</option>
                                      <option value="09">09시</option>
                                      <option value="10">10시</option>
                                      <option value="11">11시</option>
                                      <option value="12">12시</option>
                                      <option value="13">13시</option>
                                      <option value="14">14시</option>
                                      <option value="15">15시</option>
                                      <option value="16">16시</option>
                                      <option value="17">17시</option>
                                      <option value="18">18시</option>
                                      <option value="19">19시</option>
                                      <option value="20">20시</option>
                                      <option value="21">21시</option>
                                      <option value="22">22시</option>
                                      <option value="23">23시</option>
                                      <option value="24">24시</option>
                                      <option value="01">25시</option>
                                    </select>
                                    <select id="dropdownMenu_selete02">
                                      <option value="00">00분</option>
                                      <option value="10">10분</option>
                                      <option value="20">20분</option>
                                      <option value="30">30분</option>
                                      <option value="40">40분</option>
                                      <option value="50">50분</option>
                                    </select>
                                    
                                    
                                  
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                            </div>
                            <div id="imgdiv1">
                            <img id="thumbnailImg1" src="<%=request.getContextPath()%><%=ATClist1.get(0).getFilePath()%><%=ATClist1.get(0).getRenameFileName()%>">
                            </div>


                        </div>

                        <div id="manager2-02">
                        	<input type="hidden" id="dateText01" readonly="readonly">
                            <!-- 달력 쪽-->
                            <div class="manager2-2-div">
                                    <div class="container" id="container-1">

                                           <p></p>
                                    
                                            <div class="input-group date">
                                    
                                                <input type="text" id="dropdownMenu6" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    
                                            </div>
                                    
                                        </div>
                            </div>
                            
                            
                            
                            
                            
                            <div class="manager2-2-div" id="manager2-id-div1" style="overflow:auto;">
                                <table class="table" id="movie-table">
                                    <thead class="thead-light" id="movie-table1">
                                        <th scope="col">이름</th>
                                        <th scope="col">지역</th>
                                        <th scope="col">영화관</th>
                                        <th scope="col">시간</th>
                                        <th scope="col">날짜</th>
                                    </thead>
	                                    <tbody id="my-tbody">
	                                    
	                                    </tbody>
                                    </table>
                                    <script>
                                    var tableDatas = [];
                                    var tableStartTime = [];
                                    var tableMovie;
                                    var resultNum = 0;
                                    function table_make(){
                                    // 특정 버튼을 누르면 테이블의 td 가 1줄씩 추가되는데 이 모든것을 다 controller로 가져가야함
                                    	var num1 = $(".dropdownMenu1_01").val(); // 영화 이름
                                    	var num2 = document.getElementById("dropdownMenu3").value; // 영화관 지역
                                    	var num3 = document.getElementById("dropdownMenu4").value; // 영화관 번호
                                    	var num5 = document.getElementById("dropdownMenu6").value; // 날짜 2020/09/10 기준 (date 포멧으로 변경)
                                    	
                                    	var str1 = num5.substr(0,4);
                                    	var str2 = num5.substr(5,2);
                                    	var str3 = num5.substr(8,2);
                                    	var str4 = str1 + str2 + str3 + "000000";
                                    	var str5 = $("#dateText01").val();
                                    	console.log("str4 : " + str4);
                                    	console.log("str5 : " + str5);
                                    	if(str5 > str4){
                                    		alert("해당 영화는 개봉전에 상영을 하실 수 없습니다.");
                                    	} else {	
                                    		
                                   		var num6 = document.getElementById("dropdownMenu_selete01").value; // 이제 추가하려는 시간의 H
                                       	var num7 = document.getElementById("dropdownMenu_selete02").value; // 이제 추가하려는 시간의 M
                                       	
                                       	var numA1 = num6 + "" +num7;
                                       	console.log("이제 추가하려는 시간의 시작시간 : " + numA1);
                                       	
                                    	var numX1 = 0;
                                    	var numX1_1 = 0;
                                    	var numX1_2 = 0;
                                       	var numX2 = 0;
                                       	var numX2_1 = 0;
                                       	var numX2_2 = 0;
                                       	
                                       	var sumX1 = 0;
                                       	var sumX2 = 0;
                                    	// 현재 선택된 영화들의 시작과 끝 시간을 차례대로 가져옴
                                    	// 이제 이거를 숫자로 만든 뒤 >= && <= && 으로 비교를 해야함
                                    	
                                    	var num8 = num6 + ":" + num7; // 시간형 07:00 String값
                                    	var num9 = document.getElementById("dropdownMenu4"); // 1관 2관 2관을 구분하기 위함
                                    	num9.options[num9.selectedIndex].text
                                    	function parse(str) {
                                    	    var y = str.substr(0, 4);
                                    	    var m = str.substr(5, 2);
                                    	    var d = str.substr(8, 2);
                                    	    return new Date(y,m-1,d);
                                    	}
                                    	var dateA = parse(num5);
                                    	
                                    	var num10 = num5 +"/"+ num6 + "/"+  num7 + "/00";
                                    	console.log("num10 : " + num10);
                                    	
                                    	// 날짜 + 시간을 가져옴
                                    	// 2020/09/17/12/40/00 
                                    	function parse2(str) {
                                    	    var y = str.substr(0, 4);
                                    	    var m = str.substr(5, 2);
                                    	    var d = str.substr(8, 2);
                                    	    var hh = str.substr(11,2);
                                    	    var mm = str.substr(14,2);
                                    	    var ss = str.substr(17,2);
                                    	    console.log(y);
                                    	    console.log(m);
                                    	    console.log(d);
                                    	    console.log(hh);
                                    	    console.log(mm);
                                    	    console.log(ss);
                                    	    return new Date(y,m-1,d,hh,mm,ss);
                                    	}
                                    	var dateB = parse2(num10);
                                    	console.log("num10 : " + num10);
                                    	console.log("date B : " + dateB);
                                    	
                                    	
                                   
                                    	var dateE4 = 0;
                                    	var dateEnd; // 끝값
                                    	var movieName = $(".dropdownMenu1_01").val();
                                    	var obj0 = {movieName : movieName , startTime : numA1};
                                    	<%
                                    	if(list_movieRes.size() == 0){
                                    	%>	
                                    	if(resultNum==0){
                                    		$.ajax({ 
            									url: "MovieArrAjaxselect1.do",
            									type: "post",
            									data: JSON.stringify(obj0),
            									async:false,
            									contentType: "application/json; charset=utf-8",
            									success: function(data) {
            										dateEnd = data;
            										console.log("아자스 직후 : " + dateEnd);
            										},
            										error: function(errorThrown) {
            										alert("상영등록에 실패했습니다.")
            										},
            									});
                                    	}
                                    	resultNum = 1;
                                     <%	} else{
                                    	for (int i = 0; i < list_movieRes.size(); i++) {
                                    	%>
                                    	console.log("서재건의 테스트 공간");
										numX1 = <%="'" + list_movieRes.get(i).getStartTime() + "'"%>;
										numX2 = <%="'" + list_movieRes.get(i).getEndTime() + "'"%>;   
										
										numX1_1 = numX1.substr(0,2);
										numX1_2 = numX1.substr(3,2);
										numX2_1 = numX2.substr(0,2);
										numX2_2 = numX2.substr(3,2);
										
										
										sumX1 = numX1_1 + numX1_2; // int형 현재 선택된 시작시간
										sumX2 = numX2_1 + numX2_2; // int형 현재 선택된 종료시간
										console.log("sumX1 : " + sumX1);
										console.log("sumX2 : " + sumX2);
										
										<% Date dateS1 = list_movieRes.get(i).getResDate(); %>; //문제4
										<% 
										MovieManagerMain main = new MovieManagerMain();
										
										String dateE5 = main.result001(dateS1);
										
										
										%>
										
										var dateE4 = <%=dateE5%>;
										
										
										
										
										
										
										
										
										
										
										
										$.ajax({ 
        									url: "MovieArrAjaxselect1.do",
        									type: "post",
        									data: JSON.stringify(obj0),
        									async:false,
        									contentType: "application/json; charset=utf-8",
        									success: function(data) {
        										dateEnd = data;
        										console.log("아자스 직후 : " + dateEnd);
        										},
        										error: function(errorThrown) {
        										alert("상영등록에 실패했습니다.")
        										},
        									}); 
										
										console.log("dateE4 : " + dateE4);
										console.log("아자스 나온 후 dateEnd : " + dateEnd);
										console.log("str4 : " + str4);
										console.log("str5 : " + str5);
										if(str4 == dateE4){ // 날짜값을 int로 환산해서 비교함 동일한 경우 아래로
											if(num3 == <%=list_movieRes.get(i).getRoomNo()%>){ // 현재 추가하려는 상영 영화관과 for문속의 영호관을 비교함 맞을시 아래로
												console.log("numA1 : " + numA1); // for문의 상영 시작 값
												console.log("sumX1 : " + sumX1); // for문의 상영 종료 값
												console.log("sumX2 : " + sumX2); // 추가하려는 상영의 시작 값
												if(numA1 >= sumX1 && dateEnd <= sumX2){ // 1차 검사 추가하려는 상영의 시작시간이 선택된 시간보다 빠르고 종료시간보다 느릴경우
													alert("해당 시간대는 이미 영화 상영 예정입니다.");
													return;
													} else if(dateEnd >= sumX1 && numA1 <= sumX2){// 2차 검사 추가하려는 상영의 종료시간이 선택된 시간 사이에 존재함.
													alert("해당 시간대는 이미 영화 상영 예정입니다.");
													return;
													}
												}
											}
										
										<% }
                                    	}%>
										
										
										
                                        if(tableStartTime == null || tableStartTime == ""){
                                        } else {
                                        	var moviename = num1; // 영화 이름
                                        	var roomNo = num3;    // 룸 번호
                                        	var maName = num2;    // 영화관 지역
                                       		var resDate = dateA;   // 상영 날짜
                                       		var startTime = numA1; // 시작 시간
                                       		var endTime = dateEnd;   // 종료 시간
                                       		
                                       		
                                       		console.log("moviename : " + num1);
                                       		console.log("roomNo : " + num3);
                                       		console.log("maName : " + num2);
                                       		console.log("resDate : " + dateA);
                                       		console.log("startTime : " + numA1);
                                       		console.log("endTime : " + dateEnd);
                                       		
                                        	for(var key in tableStartTime){
                                        		console.log("key : " + key, tableStartTime[key].resDate);
                                        		if(resDate.getTime() == tableStartTime[key].resDate.getTime()){
                                        			if(maName == tableStartTime[key].maName){
                                        				if(roomNo == tableStartTime[key].roomNo){
                                        					alert("startTime : " + startTime + " 뒤에 : " + tableStartTime[key].startTime);
                                        					if(startTime >= tableStartTime[key].startTime && endTime <= tableStartTime[key].endTime){
                                        						alert("해당 시간대는 이미 영화 상영 예정입니다.");
                                        						return;
                                        					}
                                        					alert("endTime : " + endTime + " 뒤에 : " + tableStartTime[key].endTime);
                                        					if(endTime >= tableStartTime[key].startTime && startTime <= tableStartTime[key].endTime){
                                        						alert("해당 시간대는 이미 영화 상영 예정입니다.");
                                        						return;
                                        					}
                                        				}
                                        			}
                                        		}
                                        		
                                        		
                                        	}
                                        	
                                        }
                                    	
                                    	// 날짜 + 시간을 가져옴
                                    	// 2020/09/17/12/40/00 
                                    	function parse2(str) {
                                    	    var y = str.substr(0, 4);
                                    	    var m = str.substr(5, 2);
                                    	    var d = str.substr(8, 2);
                                    	    var hh = str.substr(11,2);
                                    	    var mm = str.substr(14,2);
                                    	    var ss = str.substr(17,2);
                                    	    console.log(y);
                                    	    console.log(m);
                                    	    console.log(d);
                                    	    console.log(hh);
                                    	    console.log(mm);
                                    	    console.log(ss);
                                    	    return new Date(y,m-1,d,hh,mm,ss);
                                    	}
                                    	var dateB = parse2(num10);
                                    	console.log("num10 : " + num10);
                                    	console.log("date B : " + dateB);
                                    	
                                    	// 이제 dateB와 
                                    	
                                    	
                                    	
                                    	
                                    	
                                    	
                                    	
                                    	
                                    	
                                    	
                                    	if(num2 == "지역을 선택 해 주세요"){
                                    		alert("지역을 선택해 주시기 바랍니다.");
                                    	} else {
                                    	tableDatas.push({movieName : num1, maName : num2, roomNo: num3 ,startTime: num8, endTime: dateEnd, resDate: dateA});
                                    	tableStartTime.push({movieName : num1, maName : num2, roomNo: num3, startTime: numA1, endTime: dateEnd, resDate: dateA});
                                    	console.log(tableStartTime);
                                    	
                                    	
                                    	console.log(tableDatas);
                                    	$("#movie-table").append("<tr><td name='movieName'>" + num1 + "</td>" + 
                                   								 "<td name='maName'>" + num2 + "</td>" +
                                   								 "<td name='roomNo'>" + num9.options[num9.selectedIndex].text + "</td>" +
                                   								 "<td name='movieTime'>" + num8 + "</td>" +
                                   								 "<td name='resDate'>" + num5 + "</td></tr>");
                                    	}
                                    
                                    
                                    }// 이 괄호가 else 의 끝
                                    
                                }
        								
        								function MovieManagerResinsert() { 
        								$.ajax({ 
        									url: "MovieManagerResinsert.do",
        									type: "post",
        									data: JSON.stringify(tableDatas),
        									contentType: "application/json; charset=utf-8",
        									success: function(data) {
        										alert("상영등록이 성공하였습니다!");
        										location.href="MovieManagerScreenInsert.do";
        										},
        										error: function(errorThrown) {
        										alert("상영등록에 실패했습니다.")
        										},
        									}); 
        								}
                                   
                                    </script>
                                    
                                  
                            
                            </div>

                            <div class="manager-formQ1" id="manager06">
                           
                                <button type="button" class="btn btn-primary" onclick="table_make()" id="movie-manager04-button1">목록에 추가</button>
                                <button type="submit" class="btn btn-primary" onclick="MovieManagerResinsert()"id="movie-manager04-button2">상영 개시</button>
                            </div>

                        </div>
                        



                        
                    </div>
                   
                </div>
               
            </div>
          

            <!--아래부터 캘린더 코드-->

            <!-- 위 까지가 지점 선택 영역-->



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