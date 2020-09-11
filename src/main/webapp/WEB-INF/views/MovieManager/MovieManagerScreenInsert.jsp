<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kh.kass.common.*" %>
<%@ page import="com.kh.kass.movie.model.vo.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>손만두</title>
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
            width: 100%;
            background: white;
            margin: auto;
        }

        header {
            width: 100%;
            height: 150px;
        }

        nav {
            width: 100%;
            height: 70px;
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
            background: rgb(197, 197, 197);
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
            align-content: center;
            margin: auto;
        }
        
        /* 메인 단 */

        #manager02{
            width: 100%;
            height: 50px;
            display: block;
            
            
        }

        #manager02-1{
            width:25%;
            height:50px;
            float: left;
            
        }


        #dropdownMenu1{
            width: 100%;
            height: 50px;
            
        }
        
        #dropdownMenu1_A{
        	 width: 100%;
            height: 50px;
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
        }

        #manager05{
            width:15%;
            height:50px;
            display: block;
            float: left;
        }

        #manager06{
            margin: auto;
            margin-top: 10px;
            margin-left:57%;
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
            height: 1047px;
            border: 1px solid black;
            float: left;
        }

        #manager2-02{
            width: 50%;
            height: 1047px;
            border: 1px solid red;
            float: left;
            
            
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
            margin-top: 100px;
            height: 30%;
            border: 1px solid black;
            float:left;
       }

       #manager2-id-div1{
           margin-top: 30px;
           height: 450px;
       }
        
       

            /* 영역 나누기 */


        /* 달력 부분 */

        #container-1{
            width: 100%;
            height: 100%;
        }

        .datepicker{
            top:1130px !important;
            width: 430px;
            height: 260px;
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



    </style>
    
</head>




<body>
        <!-- 드롭박스 선택 시 알러트 뜨는 script -->
        


     <jsp:include page="../../views/common/manager.jsp" />
    <section id="content">
        <div id="stay2">
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
                               <!-- 맨위 날짜 선택 부분 -->
                            <c:forEach var="movieListName" items="${movieListName}">
                                    <select id ="dropdownMenu1" name="dd6" onchange="movieNameChange(this.value);">
                                            <option value="${movieListName.movieName}" id="dropdown-a">${movieListName.movieName}</option>
                         	<%
		                    ArrayList<Movie> list = (ArrayList<Movie>)request.getAttribute("movListFile");
		                    for(int i = 0; i<list.size();i++){
		                    %>	
		                    				<option value="<%=list.get(i).getMovieName()%>"><%=list.get(i).getMovieName()%></option>
                    		<%
		                    }
                    		%>
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
                        <div id="table-div-01" style="overflow:scroll" >
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
                                    <select id ="dropdownMenu1" onchange="movieNameChange(this.value);" name="dd6">
                                            <option value="${movieListName.movieName}" id="dropdown-a">${movieListName.movieName}</option>
                                            
                         	<%
		                    ArrayList<Movie> list = (ArrayList<Movie>)request.getAttribute("movListFile");
		                    for(int i = 0; i<list.size();i++){
		                    %>	
		                    				<option value="<%=list.get(i).getMovieName()%>"><%=list.get(i).getMovieName()%></option>
                    		<%
		                    }
                    		%>
                                    </select>
                            </c:forEach>
                            <%
                            	ArrayList<Attachment> ATClist1 = (ArrayList<Attachment>)request.getAttribute("movieAttachment1");
		                    %>
                                    
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
                                    	if(you_value.value =='건대'){
                                    		document.getElementById("1").value="1";
                                    		document.getElementById("2").value="2";
                                    		document.getElementById("3").value="3";
                                    	} else if(you_value.value =='강변'){
                                    		document.getElementById("1").value="4";
                                    		document.getElementById("2").value="5";
                                    		document.getElementById("3").value="6";
                                    	} else if(you_value.value =='명동'){
                                    		document.getElementById("1").value="7";
                                    		document.getElementById("2").value="8";
                                    		document.getElementById("3").value="9";
                                    	} else if(you_value.value =='상봉'){
                                    		document.getElementById("1").value="10";
                                    		document.getElementById("2").value="11";
                                    		document.getElementById("3").value="12";
                                    	} else if(you_value.value =='구로'){
                                    		document.getElementById("1").value="13";
                                    		document.getElementById("2").value="14";
                                    		document.getElementById("3").value="15";
                                    	}
                                    	}
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
                                    	if(you_value.value =='건대'){
                                    		document.getElementById("1").value="1";
                                    		document.getElementById("2").value="2";
                                    		document.getElementById("3").value="3";
                                    	} else if(you_value.value =='강변'){
                                    		document.getElementById("1").value="4";
                                    		document.getElementById("2").value="5";
                                    		document.getElementById("3").value="6";
                                    	} else if(you_value.value =='명동'){
                                    		document.getElementById("1").value="7";
                                    		document.getElementById("2").value="8";
                                    		document.getElementById("3").value="9";
                                    	} else if(you_value.value =='상봉'){
                                    		document.getElementById("1").value="10";
                                    		document.getElementById("2").value="11";
                                    		document.getElementById("3").value="12";
                                    	} else if(you_value.value =='구로'){
                                    		document.getElementById("1").value="13";
                                    		document.getElementById("2").value="14";
                                    		document.getElementById("3").value="15";
                                    	}
                                    	}
                                    }
                                    
                                    
                                    </script>
                            </div>
                            <div class="manager2-div" id="manager2-01-04">
                           <!-- 상영 시간대 선택 -->
                                    <input type="text" id="dropdownMenu5" placeholder="상영시간대 예) 09:00~10:00" maxlength="11"name="dd4">
                            </div>
                            <div id="imgdiv1">
                            <img id="thumbnailImg1" src="<%=request.getContextPath()%><%=ATClist1.get(0).getFilePath()%><%=ATClist1.get(0).getRenameFileName()%>">
                            </div>


                        </div>

                        <div id="manager2-02">
                            <!-- 달력 쪽-->
                            <div class="manager2-2-div">
                                    <div class="container" id="container-1">

                                           <p></p>
                                    
                                            <div class="input-group date">
                                    
                                                <input type="text" id="dropdownMenu6" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    
                                            </div>
                                    
                                        </div>
                            </div>
                            
                            
                            
                            
                            
                            <div class="manager2-2-div" id="manager2-id-div1">
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
                                    var tableDatas = []
                                    function table_make(){
                                    // 특정 버튼을 누르면 테이블의 td 가 1줄씩 추가되는데 이 모든것을 다 controller로 가져가야함
                                     
                                    	var num1 = document.getElementById("dropdownMenu1").value; // 영화 이름
                                    	var num2 = document.getElementById("dropdownMenu3").value; // 영화관 지역
                                    	var num3 = document.getElementById("dropdownMenu4").value; // 영화관 번호
                                    	var num4 = document.getElementById("dropdownMenu5").value; // 시간 09:00~11:00 기준 (~로 split해서 값 출력)
                                    	var num5 = document.getElementById("dropdownMenu6").value; // 날짜 2020/09/10 기준 (date 포멧으로 변경)
                                    	
                                    	function parse(str) {
                                    	    var y = str.substr(0, 4);
                                    	    var m = str.substr(5, 2);
                                    	    var d = str.substr(8, 2);
                                    	    return new Date(y,m-1,d);
                                    	}
                                    	var dateA = parse(num5);
                                    	var dateB = new Date();
                                    	
                                    	dateB = moment(dateA).format('YY/MM/DD');
                                    	
                                    	var Stime = num4.split("~")[0];
                                    	var Etime = num4.split("~")[1];
                                    	
                                    	if(num2 == "지역을 선택 해 주세요"){
                                    		alert("지역을 선택해 주시기 바랍니다.");
                                    	} else {
                                    	tableDatas.push({movieName : num1, maName : num2, roomNo: num3 ,startTime: Stime, endTime: Etime, resDate: dateA});
                                    	console.log(tableDatas);
                                    	$("#movie-table").append("<tr><td name='movieName'>" + num1 + "</td>" + 
                                   								 "<td name='maName'>" + num2 + "</td>" +
                                   								 "<td name='roomNo'>" + num3 + "</td>" +
                                   								 "<td name='movieTime'>" + num4 + "</td>" +
                                   								 "<td name='resDate'>" + num5 + "</td></tr>");
                                    	}
                                    
                                    
                                    }
        								
        								function MovieManagerResinsert() { 
        								$.ajax({ 
        									url: "MovieManagerResinsert.do",
        									type: "post",
        									data: JSON.stringify(tableDatas),
        									dataType: "json",
        									contentType: "application/json; charset=utf-8",
        									success: function(data) {
        										alert("성공"); 
        										},
        										error: function(errorThrown) {
        											alert("실패함");
        											alert(errorThrown.statusText); 
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