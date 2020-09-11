<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KASS CINEMA</title>
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
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<style>
header, nav, section, article, aside, footer {
	box-sizing: border-box;
	display: block;
}

body {
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
	background: rgb(32, 32, 32);
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

#footer3 {
	width: 20%;
	height: 70%;
	float: left;
}

/* 내가 쓴 코드 */
.pay_background {
	margin: auto;
	width: 1000px;
	height: 1000px;
	padding: 20px;
	background: rgb(32, 32, 32);
}

.chk_label {
	color: white;
	font-size: 20px;
	margin-left: 20px;
	margin-top: 10px;
	margin-bottom: 40px;
}

.radio {
	margin-right: 5px;
	width: 20px;
	height: 20px;
}

.pay_Info {
	border: 1px solid white;
	width: 800px;
	height: 600px;
	margin: auto;
}

.movie-img {
	float: left;
	width: 40%;
	height: 100%;
	border: 1px solid white;
}

.movie-line {
	float: left;
	width: 60%;
	height: 100%;
	border: 1px solid white;
}

.movie_nextBtn {
	display: block;
	margin: auto;
	margin-top: 10px;
	width: 150px;
	height: 150px;
	background: red;
	color: white;
	font-size: 20px;
	font-weight: bold;
	border: 1px solid black;
	border-radius: 10%;
}

.movie_nextImg {
	margin: auto;
	margin-bottom: 5px;
	width: 80px;
	height: 80px;
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

#wrap_stay {
	width: 1500px;
	margin: auto;
}
/* 내가 쓴 코드 */
</style>
</head>
<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />
		<section id="content">
			<div class="pay_background">
				<h2
					style="border-bottom: 1px solid white; color: white; padding-bottom: 10px; width: 100%;">결제
					방식 선택</h2>
				<label class="chk_label">
					<input class="radio" type="radio" name="chk_pay" value="카드" checked>카드
				</label>
				<label class="chk_label"> 
					<input class="radio" type="radio" name="chk_pay" value="무통장">무통장
				</label>

				<div class="pay_Info">
					<div class="movie-img">
						<div style="width: 100%; height: 80%; padding: 5px;">
							<img src="<%=request.getContextPath()%>${ resInfo.movie.attachList[0].filePath }${ resInfo.movie.attachList[0].renameFileName }" style="width: 100%; height: 100%;">
						</div>
						<div style="width: 100%; height: 20%;">
							<span style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px;">
								${ resInfo.movie.movieName }
							</span>
						</div>
					</div>
					<div class="movie-line">
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									극장 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									KASS ${ resInfo.maName } </span>
							</div>
						</div>
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									일시 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									${ resDate } ${ resInfo.startTime } </span>
							</div>
						</div>
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									상영관 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									${ resInfo.roomNumber }관 </span>
							</div>
						</div>
						<div style="width: 100%; height: 20%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 25px;">
									인원 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									${ people }</span>
							</div>
						</div>
						<div style="width: 100%; height: 20%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 25px;">
									좌석</span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									${ placeValue }</span>
							</div>
						</div>
						<div style="width: 100%; height: 15%;">
							<div style="width: 30%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									결제금액 </span>
							</div>
							<div style="width: 70%; height: 100%; float: left;">
								<span
									style="display: block; color: white; font-size: 20px; width: 100%; height: 100%; text-align: center; padding: 5px; margin-top: 20px;">
									${ price }원</span>
							</div>
						</div>
					</div>
				</div>
				
				<button class="movie_nextBtn" onclick="payment();" type="button">
					<img src="<%=request.getContextPath()%>/resources/images/nextBtn2.png"
						class="movie_nextImg"><br>결제하기
				</button>
				
			</div>
		</section>
	</div>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>
	
	<script>
		function payment(){
			var radioVal = $('input[name="chk_pay"]:checked').val();
			
			var userNo = ${ loginUser.userNo };
			var orderEmail = '${ loginUser.userEmail }';
			var orderName = '${ loginUser.userName }';
			var orderphone = '${ loginUser.userPhone }';
			var address = '${ loginUser.userAddr }';
			
			var resNo = ${ resInfo.resNo };
			var movieName = '${ resInfo.movie.movieName }';
			var time = '${ resDate } ${ resInfo.startTime }';
			var people = '${ people }';
			var index_array = new Array('${ index_array }');
			var placeValue = new Array('${ placeValue }');
			var people1 = ${ val1 };
			var people2 = ${ val2 };
			var price = ${ price };
	        
			if(radioVal == '카드'){

		        var IMP = window.IMP; // 생략가능
		        IMP.init('imp07866238'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		        var msg;
		        
		        IMP.request_pay({
		            pg : 'kakaopay',
		            pay_method : 'card',
		            merchant_uid : 'merchant_' + new Date().getTime(),
		            name : movieName,
		            amount : price+"원",
		            buyer_email : orderEmail,
		            buyer_name : orderName,
		            buyer_tel : orderphone,
		            buyer_addr : address,
		            buyer_postcode : '123-456'
		            //m_redirect_url : 'http://www.naver.com'
		        }, function(rsp) {
		            if ( rsp.success ) {
		                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
		                jQuery.ajax({
		                    url: "movieCard.do", //cross-domain error가 발생하지 않도록 주의해주세요
		                    type: 'POST',
		                    dataType: 'json',
		                    data: {
		                        imp_uid : rsp.imp_uid,
		                        userNo : userNo,
		                        resNo : resNo,
		                        time : time,
		                        people : people,
		                        index_array : index_array,
		                        placeValue : placeValue,
		                        people1 : people1,
		                        people2 : people2,
		                        price : price
		                        
		                        //기타 필요한 데이터가 있으면 추가 전달
		                    }
		                }).done(function(data) {
		                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
		                    if ( everythings_fine ) {
		                        msg = '결제가 완료되었습니다.';
		                        msg += '\n고유ID : ' + rsp.imp_uid;
		                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		                        msg += '\결제 금액 : ' + rsp.paid_amount;
		                        msg += '카드 승인번호 : ' + rsp.apply_num;
		                        
		                        alert(msg);
		                    } else {
		                        //[3] 아직 제대로 결제가 되지 않았습니다.
		                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
		                    }
		                });
		                //성공시 이동할 페이지
		                location.href="moneyPay.do?userNo="+userNo+"&resNo="+resNo+"&index_array="+index_array+"&placeValue="+placeValue+"&people1="+people1+"&people2="+people2+"&price="+price+"&time="+time+"&people="+people+"&radioVal="+radioVal;
		            } else {
		                msg = '결제에 실패하였습니다.';
		                msg += '에러내용 : ' + rsp.error_msg;
		                //실패시 이동할 페이지
		                location.href="<%=request.getContextPath()%>";
		                alert(msg);
		            }
		        });
			}else{
				location.href="moneyPay.do?userNo="+userNo+"&resNo="+resNo+"&index_array="+index_array+"&placeValue="+placeValue+"&people1="+people1+"&people2="+people2+"&price="+price+"&time="+time+"&people="+people+"&radioVal="+radioVal;
			}
		}
	</script>
</body>
</html>