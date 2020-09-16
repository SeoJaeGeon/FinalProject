<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/nanumbarungothicsubset.css">
<style>
        header,
        nav,
        section,
        article,
        aside,
        footer {
            box-sizing: border-box;
            display: block;
        }

        body{
            width: 1500PX;
            background: white;
            margin: auto;
        }

        header {
            width: 100%;
            height: 150px;
        }

        nav {
            width: 100%;
            height: 50px;
        }

        #content {
            width: 100%;
        }

        footer {
            width: 100%;
            height: 150px;
            float: left;
            background: lightgray;
        }

        header>section {
            float: left;
        }

        #header-1 {
            width: 25%;
            height: 100%;
            position: relative;
        }

        #header-2 {
            width: 50%;
            height: 100%;
            position: relative;
        }

        #header-3 {
            width: 25%;
            height: 100%;
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

        #footer3{
            width: 20%;
            height: 70%;
            float: left;
        }

/* 내가 쓴 코드 */
        .movieMapWrapper{
        	margin-top : 20px;
            width: 100%;
            height: 600px;
            border: 1px solid black;
        }

        .movieMapContent1{
            float: left;
            width: 30%;
            height: 100%;
        }
        
        .movieMapContent2{
       		float: left;
            width: 70%;
            height: 100%;
       	}

        .tit{
            width: 100%;
            height: 10%;
            text-align : center;
        }

        .tit > div {
            border-top: 1px solid silver;
            border-right: 1px solid silver;
        }

        .placeSelectContent{
            width: 100%;
            height: 90%;
        }

        .movieArea{
            float: left;
            width: 50%;
            height: 100%;
            border: 1px solid silver;
        }

        .moviePlace{
            float: left;
            width: 50%;
            height: 100%;
            border: 1px solid silver;
        }

        .movieMapWrapper2{
            width: 100%;
        }
        
        .movie_ul {
	        box-sizing: border-box;
	        width: 100%;height: 100%;
	        list-style: none;
	        margin: 0px;
	        padding: 0px;
         }
         
        .movie_area_list, .movie_place_list{
	        box-sizing: border-box;
	        width: 100%;
	        min-height: 28px;
	        margin-bottom: 5px;
         }
         
         .changeSelect {
			background: silver;
		}
		
/* 내가 쓴 코드 */
    </style>
</head>
<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />
	<section id="content">
        <div class="movieMapWrapper">
            <div class="movieMapContent1">
                <div class="tit">
                    <div style="width: 50%; height: 100%; float: left; padding-top : 15px;">지역</div>
                    <div style="width: 50%; height: 100%; float: left; padding-top : 15px;">지점</div>
                </div>
                <div class="placeSelectContent">
                    <div class="movieArea">
                        <ul class="movie_ul moc_list_ul">
                        <c:forEach var="city" items="${ placeList }">
                            <li class="movie_area_list">
                                <button style="border: none; background: none; width:100%; text-align:left;">
                                    <span class="movie_area">${ city.mocName }</span>
									<input value="${ city.mocNo }" type="hidden" id="mocNo">
                                </button>
                            </li>
                        </c:forEach>
                        </ul>
                    </div>
                    <div class="moviePlace">
                        <ul class="movie_ul mop_list_ul">
                        
                        </ul>
                    </div>
                </div>
            </div>
            <div class="movieMapContent2">
            	<div id="map" style="width:100%;height:100%;"></div>
            </div>
        </div>
        <div class="movieMapWrapper2">
            
        </div>
        
    </div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
    </section>
    
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=69df78cadc914e936aeca858085386d0&libraries=services"></script>
    <script>
    var areaNumber = 0;
    var placeNumber = 0;
    var placeName = "";
    
    $(".movie_area_list").click(function() {
    	
    	
		$('.movie_area_list').removeClass('changeSelect');
		var list = $(this);
		var child1 = list.children('button');
		var child2 = child1.children('.movie_area');
		list.addClass('changeSelect');
		
		areaNumber = $(this).children('button').children('input').val();
		
	});
    
    $(function(){
		$(".movie_area_list").on("click", function(){
			console.log("areaNumber : "+areaNumber);
			var num = areaNumber;
			$.ajax({
				url : "placeSelect.do",
				data : {num:num},
				dataType : "json",
				success : function(data){
					$ul = $(".mop_list_ul");
					$ul.html("");
					
					if(data.length > 0){
						for(var i in data){
							console.log(data[i]);
							var $li = $("<li class='movie_place_list'>");
							var $btn = $("<button style='border: none; background: none; width: 100%; text-align: left;'>");
							var $span = $("<span class='movie_area'>").text(data[i].maName);
							var $input = $("<input type='hidden' value="+data[i].maNo+" id='maNo'>");
							
							$btn.append($span);
							$btn.append($input);
							$li.append($btn);
							
							$ul.append($li);
						}
						
						$(".movie_place_list").click(function() {
							$('.movie_place_list').removeClass('changeSelect');
							var list = $(this);
							var child1 = list.children('button');
							var child2 = child1.children('.movie_area');
							list.addClass('changeSelect');

							
							placeNumber = child1.children('#maNo').val();
							placeName = child2.text();
							
							console.log(placeName);
							console.log(placeNumber);
							
							ps.keywordSearch("메가박스" + placeName, placesSearchCB);
						})
						
					}else{
						var $span = $("<span class='movie_area'>").text("정보없음");
						$ul.append($span);
					}
				},
				error : function(e){
					alert("error code : " + e.stauts + "\n"
							+ "message" + e.responseText);
				}
			});
		});
	});
    
    
    
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
    ps.keywordSearch("CGV", placesSearchCB); 

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
    </script>
</body>
</html>