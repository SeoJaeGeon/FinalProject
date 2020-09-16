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
	
     <!-- 달력 부분 -->

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
            height: 1000px;
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
            height:1100px;
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
            height: 720px;
            border: 3px solid black;
            margin: auto;
            margin-top: 40px;
            background: #f2faff;
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
           
            display: block;
            float: left;
        }

        #manager02 {
            width: 700px;
            height: 667px;
            margin-top: 50px;
            margin-left: 50px;
            display: block;


        }

        #manager03 {
            width: 350px;
            height: 180px;
            display: block;
            margin-left: 50px;
            margin-top: 50px;
        }

        #manager04 {
            width: 350px;
            height: 180px;
            display: block;
            margin-left: 20px;
            margin-top: 50px;
            border: none;
        }

        #Calender-date {
            width: 100%;
        }



            /* 위 까지가 캘린더 */

        /* 영화 상영 선택 */

         #dropdownMenu1{
            width: 100%;
            margin-top: 15px;
        }

        #dropdown-a {
            width: 350px;
        }


        /* 상영 취소 버튼 */
        #button-1{
        	width:100px;
        	height:50px;
            margin-left: 275px;
            margin-top: 360px;
        }

        /* 달력 부분 */

        #container-1{
            width: 100%;
            height: 100%;
        }

        .datepicker{
            top:520px !important;
            width: 660px;
            height: 630px;
        }

        .datepicker table tr td, .datepicker table tr th {
        text-align: center;
        width: 30px;
        height: 30px;
        border-radius: 4px;
        border: none;
        font-size: 30px;
        }

        .datepicker .datepicker-switch {
            width: 550px;
        }

        .table-condensed>tbody>tr>td, .table-condensed>tbody>tr>th, .table-condensed>tfoot>tr>td, .table-condensed>tfoot>tr>th, .table-condensed>thead>tr>td, .table-condensed>thead>tr>th {
            padding: 5px;
            padding-top: 30px;
        }
        
/* 테이블 리스트 설정 */
		#table_list1{
		 width:94%;
		 height:90%;
		 margin:10px;
		 margin-left:15px;
		 border: 1px solid black;
		 
		}
		#table-02{
            font-size: 15px;
            text-align: center;
        }
        
        #dropdownMenu2{
            width: 100%;
            height: 50px;
            
        }
        
        #dd2{
        margin-left:-100px;
        }
        
        #manager05{
            width:15%;
            height:50px;
            display: block;
            float: left;
        }
        
        #dropdownMenu1{
            width: 100%;
            height: 50px;
            
        }
        
        #button-01{
        width:100px;
        height:50px;
        margin-left:250px;
        margin-top: 15px;
        }
        
        input[type=checkbox], input[type=radio]{
        width: 20px;
    	height: 20px;
        }
        
        #backimg{
		width: 100%;
		height:1100px;
		opacity : 5%;
		position: absolute;
		pointer-events: none;
		}
    </style>
</head>



<body>

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
                        <h1 id="content1-h1-1" style="align-content: center">영화 상영 취소</h1>
                    </div>
                    <div id="manager01">
                        <div class="manager-formQ1" id="manager02">
                            <!--아래부터 캘린더 코드-->
                            <div id="calendar-wrap">
                                    <div class="container" id="container-1">

                                           
                                    
                                            <div class="input-group date" >
                                    
                                                <input type="text" class="form-control" id="dropdownMenu6" onchange="listset(this.value);"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    
                                            </div>
                                    
                                        </div>
                            </div>
                             <!-- 위 까지가 캘린더 코드 -->
                            <div id="table_list1"  style="overflow:scroll">
                            	<table class="table table-striped" id="table-02">
                                <thead>
                                    <tr>
                                    	<td class="table_td1" scope="col">No</td>
                                        <td class="table_td1" scope="col">영화</td>
                                        <td class="table_td1" scope="col">날짜</td>
                                        <td class="table_td1" scope="col">관</td>
                                        <td class="table_td1" scope="col">시간</td>
                                        <td class="table_td1" scope="col">지점</td>

                                    </tr>
                                </thead>
                                <tbody class="tr_01">
                                    
                            <% 
	                            ArrayList<Movie_Res> list_movieRes = (ArrayList<Movie_Res>)request.getAttribute("movieResList");
	                            ArrayList<Movie> listMovieName = (ArrayList<Movie>)request.getAttribute("movieListName");
	                           
	                           	int l = 0;
	                            for(int k = 0; k < list_movieRes.size(); k++)
	                            { 
                            %> 
                            
                            
                            		<tr value="<%=list_movieRes.get(k).getResNo()%>" >
                            			<td><input type="checkbox"  class="checkRow" name="chk" onclick="trclickfunction(this)" id="check<%=list_movieRes.get(k).getResNo() %>" value="<%=list_movieRes.get(k).getResNo() %>"></td>
                                        <td style="width:230px"><%=listMovieName.get(l).getMovieName() %></td> <!-- 영화 제목 들어갈 곳-->
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
                        </div>
                        
                        <!-- 테이블의 tr을 클릭했을 시 이동하는 function -->
                       <script>
                    // style="background:red;"
                       var tableDate = [];
                       function trclickfunction(obj){
                    	  $(obj).prop("checked");
                    	  console.log(obj);
                    	  
                       var checkBox = document.getElementById("check" + obj.value);
                   	   if (checkBox.checked == true){
                   			 console.log("체크되었습니다.");
	                   	   } else {
	                   		console.log("체크가 풀렸습니다.");
	                   	   }
                       }
                   	   
                   	function nsdelete(){
                        var check ="";
                         $(".checkRow:checked").each(function(){
                            check = check + $(this).val() + ",";
                         });
                         check = check.substring(0, check.lastIndexOf(","));
                         console.log("check : " + check);
                         
                         if(check == ""){
                            alert("삭제할 게시글을 선택해주세요");
                            return false;
                         }else{
                            confirm("선택한 게시글을 삭제하시겠습니까?");
                            location.href = "MovieManagerCancelOfButton.do?check="+ check;
                        }
                           alert("선택된 게시글가 삭제되었습니다");
                        }
                       
                       
                       </script>
            
                        <div class="manager-formQ1" id="manager04">
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
							
							<!--                                             -->
							
							<div class="dropdown" id="manager02-1">
                            <c:forEach var="movieListName" items="${movieListName}">
                                    <select id ="dropdownMenu1" name="dd6" onchange="movieNameChange(this.value);">
                                            <option value="${movieListName.movieName}" id="dropdown-a">${movieListName.movieName}</option>
                         	<%-- <%
		                    ArrayList<Movie> list = (ArrayList<Movie>)request.getAttribute("movListFile");
		                    for(int i = 0; i<list.size();i++){
		                    %>	 --%>
		                    		<c:forEach var="list" items="${ movListFile }">
		                    		<c:if test="${ movieListName.movieNo ne list.movieNo }">
		                    				<option value="${ list.movieName }">${ list.movieName }</option>
                    				</c:if>
		                    		</c:forEach>
                    		<%-- <%
		                    }
                    		%> --%>
                                    </select>
                            <script>
		                    	function movieNameChange(obj){   		
		                  		return location.href="MovieManagerScreenCancelName.do?MovieName="+obj;
		                    	}
                    	
                    	
                    		</script>
                            
                            </c:forEach>
							
							
							
							<div id="manager05">
                                <button type="button" class="btn btn-primary" onclick="listset(this)" id="button-01">확인</button>
                            </div>
                            </div>

                            
                            <script type="text/javascript">
                            
                            
                            function listset(num){
                            	var num5 = document.getElementById("dropdownMenu6").value; // 날짜 2020/09/10 기준 (date 포멧으로 변경)
                            	if(num5 == "" || num5 == null){
                            	} else {
                            	function parse(str) {
                            	    var y = str.substr(0, 4);
                            	    var m = str.substr(5, 2);
                            	    var d = str.substr(8, 2);
                            	    return new Date(y,m-1,d);
                            	}
                            	var dateA = parse(num5);
                            	
                            	
                            	
                            	
	                            		var list_AreaName = document.getElementById("dropdownMenu2");
	                                	var list_MovieName = document.getElementById("dropdownMenu1");
	                                	var itemList = list_AreaName.value;
	                                	itemList += "," + list_MovieName.value;
	                                	itemList += "," + num5;
	                                	return location.href="MovieManagerCancelInsertbutton.do?itemList="+itemList;
	                                	
	                                	<%-- $.ajax({ 
        									url: "MovieManagerCancelInsertbutton.do",
        									type: "post",
        									data: itemList,
        									contentType: "application/json; charset=utf-8",
        									success: function(data) {
        										console.log("data : " + data);
        										alert("상영등록이 성공하였습니다!");
        										alert(data.resultList);
        										for(var i = 0; i < <%= list_movieRes.size() %>;i++){
        										$('.tr_01').empty(); // 데이터를 날려버림
        										}
        										
        										// 실험 성공 $("#table-02").append("<tr><td>안녕</td><td>안녕하세요님들아</td><td>안녕하세요님들아</td><td>안녕하세요님들아</td><td>안녕하세요님들아</td><td>안녕하세요님들아</td></tr>")
        										
        										// 테이블 추가
        										<%
        			                            ArrayList<Movie_Res> list_movieRes2 = (ArrayList<Movie_Res>)request.getAttribute("movieResList");
        			                            ArrayList<Movie> listMovieName2 = (ArrayList<Movie>)request.getAttribute("movieListName");
        			                               	int p = 0;
        				                            for(int k = 0; k < list_movieRes.size(); k++)
        				                            { 
        			                            %> 
        			                            
        			                            $("#table-02").append("<tr value='" + <%=list_movieRes2.get(k).getResNo()%> + "' >" +
			        			         							  "<td><input type='checkbox'  class='checkRow' name='chk' onclick='trclickfunction(this)' id='check" + <%=list_movieRes2.get(k).getResNo() %> + "' value='" + <%=list_movieRes2.get(k).getResNo() %> + "'></td>" +
			        			         							  "<td style='width:230px'>" + <%=listMovieName2.get(p).getMovieName() %> + "</td>" +
			        			         							  "<td>" + <%=list_movieRes2.get(k).getResDate() %> + "</td>" + 
			        			         							  "<td>" + <%=list_movieRes2.get(k).getRoomNo() %> + "관</td>" +
			        			         							  "<td>" + <%=list_movieRes2.get(k).getStartTime() %> + "&nbsp~&nbsp  " + <%=list_movieRes2.get(k).getEndTime() %> + "</td>" +
			        			         							  "<td>" + <%=list_movieRes2.get(k).getMaName() %> + "</td>" + 
			        			         							  "</tr>");
        			                                    
        			                                    
        			                            <%
        				                            }
        				                            p++;
        			                            %>
        										
        										},
        										error: function(errorThrown) {
        										alert("상영등록에 실패했습니다.");
        										},
        									});  --%>
        								}
                            	}
                            	/* select 된 지역과 영화 이름을 변수로 가져옴*/
                            </script>
						
                            
                                  
                            <!-- 위 까지가 지점 선택 영역-->
                        </div>
                        
                        <button type="button" class="btn btn-primary" id="button-1" onclick="nsdelete()">상영 취소</button>
						
                        
                    </div>
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