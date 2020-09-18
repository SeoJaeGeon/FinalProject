<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    <!-- c:set 설정 -->
    <c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
    
    <!-- 지도 api 키 설정 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5c72c09d29339bc5e4a1d658776bc39&libraries=services"></script>
    

     <!-- 합쳐지고 최소화된 최신 CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

     <!-- 부가적인 테마 -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 
     <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

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
            background-color: #e9f5ff;
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
            text-align: center;
        }

        .manager-formQ1 p{
            font-size: 20px;
            margin-top: 30px;
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
            margin-left: 50px;
            margin-top: 50px;
            border: none;
            
        }

        /* manager04 의 내부 4개 div */
        
        .manager04-class{
            height: 50%;
            float: left;
            border: 1px solid black;
            background-color: #f2fbff;
            
        }

        #manager04-1, #manager04-3{
            width: 30%;
        }
        #manager04-2, #manager04-4{
            width: 70%;
        }

        #manager04-5{
            width: 29.5%;
		    height: 5%;
		    float: left;
		    margin-left: 50px;
		    margin-top: 80px;
        }


            /* 위 까지가 캘린더 */

        /* 영화 상영 선택 */

      

        /* 상영 취소 버튼 */
        #button-1{
            margin-left: 90%;
            margin-top: -50px;
        }

        /* 드롭 바 */
        #dropdownMenu1{
            width: 100%;
            height:30px;
            font-size:20px;
            background-color: #f2fbff;
        }
        #dropdown-a{
            width: 330px;
            height:30px;
            font-size:20px;
        }




        /* 달력 부분 */

        #container-1{
            width: 100%;
            height: 100%;
        }

        .datepicker{
            top:-990px !important;
            left: 230px !important;
            width: 650px;
            height: 620px;
            position: relative;
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
            padding-top: 25px;
        }
		
        #Calendar_Text{
        background-color: #f2fbff;
        }
        
        #manager05-1{
        width: 350px;
	    height: 275px;
	    float: left;
	    margin-left: 50px;
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
                        <h1 id="content1-h1-1" style="align-content: center">지점 수익 조회</h1>
                    </div>
                    <div id="manager01">
                        <div class="manager-formQ1" id="manager02">
                               
                            <!--아래부터 캘린더 코드-->
                            <div id="calendar-wrap">
                                    <div class="container" id="container-1">

                                            <div class="input-group date">
                                    
                                                <input type="text" id="Calendar_Text"class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    
                                            </div>
                                    
                                        </div>
                            </div>
                       	<!-- 구글 차트 div -->
                         <div id="columnchart_material" style="width: 100%; height: 100%;float:left;margin-top: 20px"></div>
                         
                          
                          
                          
                          
                          
                          
                         
                         
                        <!-- 지도 api 끝 -->
                        </div>
                         
                        
                        
                        
                        
                         <div class="manager-formQ1" id="manager04">
                            <!-- 지점 선택 영역 -->
                            <div class="manager04-class" id="manager04-1"> <!-- 총 매출 -->
                               <p>총 매출</p>
                            </div>
                            <div class="manager04-class" id="manager04-2">
                                <p id="textp_1"></p>
                            </div>
                            <div class="manager04-class" id="manager04-3"> <!-- 기간 매출 -->
                                <p>기간 매출</p>
                            </div>
                            <div class="manager04-class" id="manager04-4">
                                <p id="textp_2"></p>
                            </div>
                            
                        </div>
                        
                        <div id="manager04-5" style="float:left;">
                              <select id ="dropdownMenu1" name="dd2" onclick="listTest(this.value);" onchange="listTest(this.value);">
                              <c:forEach var="MOVIE_AREA" items="${ MOVIE_AREA }">
                                <option value='${ MOVIE_AREA.maNo }' id="dropdown-a">${ MOVIE_AREA.maName }</option>
							 </c:forEach>
                             </select>
						
                        	</div>
                         <div id="map" style="width: 350px;height: 350px;border: 1px solid black;margin-top: 70px;float: left;margin-left: 50px;">
                         <script>
                         <!-- 지도 api 시작 -->    
                      // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
                         var infowindow = new kakao.maps.InfoWindow({zIndex:1});

                         var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                             mapOption = {
                                 center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                                 level: 3 // 지도의 확대 레벨
                             };  

                         // 지도를 생성합니다    
                         var map = new kakao.maps.Map(mapContainer, mapOption); 

                         // 장소 검색 객체를 생성합니다
                         var ps = new kakao.maps.services.Places();
                         
                         // 키워드로 장소를 검색합니다
                          ps.keywordSearch("건대 메가박스", placesSearchCB); 

                         // 키워드 검색 완료 시 호출되는 콜백함수 입니다
                         function placesSearchCB (data, status, pagination) {
                             if (status === kakao.maps.services.Status.OK) {

                                 // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                                 // LatLngBounds 객체에 좌표를 추가합니다
                                 var bounds = new kakao.maps.LatLngBounds();
                              /* 
                                 for (var i=0; i<data.length; i++) {
                                     displayMarker(data[i]);    
                                     bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
                                 }  
                                  */
                                 displayMarker(data[0]);    
                                 bounds.extend(new kakao.maps.LatLng(data[0].y, data[0].x));

                                 // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                                 map.setBounds(bounds);
                             } 
                         }

                         // 지도에 마커를 표시하는 함수입니다
                         function displayMarker(place) {
                             
                             // 마커를 생성하고 지도에 표시합니다
                             var marker = new kakao.maps.Marker({
                                 map: map,
                                 position: new kakao.maps.LatLng(place.y, place.x) 
                             });

                             // 마커에 클릭이벤트를 등록합니다
                             kakao.maps.event.addListener(marker, 'click', function() {
                                 // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
                                 infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
                                 infowindow.open(map, marker);
                             });
                         }
                         
                      // 수익조회 버튼을 누르면 오는 function 
                         function listTest(obj){
 							var num5 = document.getElementById("Calendar_Text").value; // 날짜 2020/09/10 기준 (date 포멧으로 변경)
 							var num6 = $("#dropdownMenu1 option:checked").text()
 							console.log(num6);
 							
 							// 지도의 위치를 바꿈
 							ps.keywordSearch(num6 + "메가박스", placesSearchCB); 
 							
 							
 							function parse(str) {
                         	    var y = str.substr(0, 4);
                         	    var m = str.substr(5, 2);
                         	    var d = str.substr(8, 2);
                         	    return new Date(y,m-1,d);
                         	}
                         	var dateA = parse(num5);
                         	var numL = [];
                         	numL.push({maNo:obj, payDate:dateA});
                            	$.ajax({ 
                            		url: "MovieManagerSalesAjax.do",
 								type: "post",
 								data: JSON.stringify(numL),
 								contentType: "application/json; charset=utf-8",
 								success: function(data) {
 									
 									var data1 = numbeComma(data[0]);
 									var data2 = numbeComma(data[1]);
 									
 								
 									document.getElementById("textp_1").innerHTML=data1 + "원"; // 전체 금액
 									document.getElementById("textp_2").innerHTML=data2 + "원"; // 선택된 날자 금액
 									},
 									error: function(errorThrown) {
 									},
 								}); 
 						}
                         // number에 int값을 넣으면 1000단위 콤마가 찍힌다.
                         function numbeComma(number) {
 						    return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
 						  }
                         
                         </script>
                         
                         </script>
                        </div>
                        <!-- 위 까지가 캘린더 코드 -->
            
                       

                      
                        
                        <!-- 구글 차트 넣을꺼 -->
                         <!--  구글 차트 전용 script -->
					       <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
						    <script type="text/javascript">
						      google.charts.load('current', {'packages':['bar']});
						      google.charts.setOnLoadCallback(drawChart);
						
						      function drawChart() {
						    	  
						    	  
						    	  
						    	  
						    	  
						    	  
						    	  
						    	  
						        var data = google.visualization.arrayToDataTable([
						          ['Year', 'Expenses'],
						          ['2014', 1000],
						          ['2015', 1170],
						          ['2016', 660],
						          ['2017', 1030],
						          ['2018', 500]
						        ]);
						
						        var options = {
						          chart: {
						            title: '영화 최근 매출 순위',
						            subtitle: '',
						          }
						        };
						
						        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
						
						        chart.draw(data, google.charts.Bar.convertOptions(options));
						      }
						    </script>
                        
                        
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

