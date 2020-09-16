<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	
body {
	width: 100%;
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

.content {
	width: 100%;
	heigt: 100%;
	margin: auto;
	border: 1px solid red;
	overflow: hidden;
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
/* 영역 나누기 */


body {
	width: 100%;
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

.content {
	width: 100%;
	heigt: 100%;
	margin: auto;
	border: 1px solid red;
	overflow: hidden;
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
/* 영역 나누기 */

/* 상단 미니 메뉴바 */
        .page-util {
            display: block;
            position: static;
            width: 100%;
            height: 42px;
            background-color: #f8f8fa;
        }

        .inner-wrap {
            width: 1100px;
            margin: 0 auto;
        }

        .page-util .location {
            float: left;
            height: 42px;
        }

        .page-util .location span {
            overflow: hidden;
            display: block;
            float: left;
            width: 70px;
            line-height: 46px;
            margin: 0;
            padding: 0;

        }

        .page-util .location a {
            display: block;
            position: relative;
            float: left;
            height: 42px;
            margin: 0 0 0 10px;
            padding: 0;
            line-height: 46px;
            color: #666;
        }

        a:visited {
            /*방문후 링크 상태*/
            text-decoration: none;
            outline: 1px dotted #000;
        }

        /* 상품 상세보기*/
        #contents{
            width: 100%;
            margin: 0 auto;
            margin-left: 70px;
            padding: 50px 0 0 0;
        }
        
        div {
            display: block;
        }

        .contents_mall_detail .pd_wrap {
            position: relative;
            min-height: 650px;
            margin: 40px 0 80px;
        }

        .contents_mall_detail .pd_wrap .pd_img{
            float: left;
            width: 500px;
        }

        .contents_mall_detail .pd_wrap .pd_img .main_img {
            position: relative;
            margin-bottom: 20px;
            text-align: center;
            border: 1px solid;
        }

        .contents_mall_detail .pd_wrap .pd_img .main_img img{
            width: 400px;
            height: 379px;
        }
        
        img {
            border: none;
            vertical-align: top;
        }
        
        .contents_mall_detail .pd_wrap .pd_detail{
            margin-left: 600px;
            
        }

        .contents_mall_detail .pd_wrap .pd_detail .pd_table {
            text-align: left;
            margin-bottom: 30px;
        }

        /* table */
        table {
            width: 600px;
            border-collapse: collapse;
            border-spacing: 0;
            border: 0;
            display: table;
        }

        caption {
            overflow: hidden;
            width: 1px;
            height: 1px;
            clip: rect(1px, 1px, 1px, 1px);
            font-style: normal;
            font-weight: normal;
            display: table-caption;
            text-align: -webkit-center;
        }

        colgroup {
            display: table-column-group;
        }

        thead {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }

        tr{
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
        }

        th {
            display: table-cell;
            vertical-align: inherit;
            font-style: normal;
            font-weight: normal;
        }

        td {
            display: table-cell;
            vertical-align: inherit;
        }

        .contents_mall_detail .pd_wrap .pd_detail .pd_table .badge_wrap {
            border: none;
            padding: 0;
        }

        .contents_mall_detail .pd_wrap .pd_detail .pd_table th {
            text-align: left;
        }

        .contents_mall_detail .pd_wrap .pd_detail .pd_table th, 
        .contents_mall_detail .pd_wrap .pd_detail .pd_table td {
            border-bottom: 1px solid #eeeeee;
            padding: 20px 0;
            font-size: 15px;
        }

        .contents_mall_detail .pd_wrap .pd_detail .pd_table .tit {
            padding: 10px 0 22px;
            font-size: 28px;
        }

        .contents_mall_detail .pd_wrap .pd_detail .pd_table td {
            color: #666666;
        }

        .contents_mall_detail .pd_wrap .pd_detail .txt_price {
            margin-right: 20px;
            font-size: 25px;
        }

        .txt_price {
            display: inline-block;
            font-family: 'Roboto', 'Noto Sans KR';
            font-weight: bold;
            color: #000;
        }

        .btn_col4.ty3 {
            height: 28px;
            line-height: 26px;
        }

        .contents_mall_detail .pd_wrap .pd_detail .btn_col4 {
            padding: 0 30px;
        }

        .btn_col4 {
            display: inline-block;
            box-sizing: border-box;
            border: 1px solid #dddddd;
            font-size: 14px;
            color: #000000 !important;
            text-align: center;
            vertical-align: middle;
            background-color: #ffffff;
        }

        .btn_col4.rnd {
            border-radius: 52px;
        }

        /* table */


        .contents_mall_detail .pd_wrap .pd_detail .bx_num{
            width: 600px;
            margin-bottom: 40px;
        }
        
        .bx_num{
            position: relative;
            border: 1px solid #DDD;
            -webkit-border-radius: 4px;
            background-color: #fff;
            box-sizing: border-box;
        }

        .bx_num .btn_mins {
            left: 0;
            /* background-image: ; */
        }

        .bx_num .btn_plus {
            right: 0;
            /* background-image: ; */
        }
        
        .bx_num .btn_plus, .bx_num .btn_mins{
            position: absolute;
            top: 0;
            bottom: 0;
            background: no-repeat 50% 50%;
            border: 0 none;
            padding: 0 15px;
            text-indent: -9999em;
            font: 0 auto;
        }

        button {
            cursor: pointer;
            -webkit-appearance: none;
        }

        input, select, button {
            vertical-align: middle;
            -webkit-appearance: none;
        }

        .contents_mall_detail .pd_wrap .pd_detail .bx_num .txt_num {
            padding: 23px 0;
        }

        .bx_num .txt_num {
            font-family: 'Roboto';
            font-size: 15px;
            font-weight: bold;
            color: #000;
            text-align: center;
            vertical-align: middle;
        }

        .contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap {
            font-size: 15px;
            text-align: right;
            margin-bottom: 10px;
            padding-right: 120px;
        }

        .contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap strong {
            margin-left: 20px;
            font-size: 30px;
        }

        .txt_price_str {
            display: inline-block;
            font-family: 'Roboto', 'Noto Sans KR';
            font-weight: bold;
            color: #FF253E;
        }

        .contents_mall_detail .pd_wrap .pd_detail .txt_price_wrap strong em{
            font-size: 0.667em;
        }

        em {
            font-style: normal;
            font-weight: normal;
        }

        .contents_mall_detail .pd_wrap .pd_detail .btn_wrap {
            font-size: 0;
        }

        .contents_mall_detail .pd_wrap .pd_detail .btn_wrap button {
            width: 212px;
            margin-right: 6px;
            box-sizing: border-box;
        }

        .btn_col1.ty7, .btn_col2.ty7 {
            height: 52px;
            line-height: 50px;
            padding: 0 24px;
        }

        .btn_col1 {
            display: inline-block;
            border-radius: 4px;
            border: 1px solid #FF243E;
            font-size: 14px;
            color: #ffffff !important;
            text-align: center;
            vertical-align: middle;
            background-color: #FF243E;
        }

        .btn_col2 {
            display: inline-block;
            border-radius: 4px;
            border: 1px solid #414141;
            font-size: 14px;
            color: #ffffff !important;
            text-align: center;
            vertical-align: middle;
            background-color: #414141;
        } 

          /* 내가 쓴 코드 */
          .content1 {
            width: 100%;
            min-height: 400px;
            margin: auto;
        }

        .tab_List {
            margin-top: 20px;
            width: 100%;
            height: 50px;
        }

        .top_Menu {
            margin: 0px;
            padding: 0px;
            margin-left: 1px;
            width: 100%;
            height: 100%;
        }

        .top_Menu li {
            margin: 0px;
            padding: 0px;
            width: 33.33%;
            height: 100%;
            list-style: none;
            float: left;
            border-bottom: 1px solid rgb(31 , 69 ,97);
        }

        .on{
            border-left: 1px solid rgb(31 , 69 ,97) !important;
            border-right: 1px solid rgb(31 , 69 ,97) !important;
            border-top: 1px solid rgb(31 , 69 ,97) !important;
            border-bottom: none !important;
        }

        .top_Menu li a{
            display: block;
            margin-top: 5px;
            font-style: none;
            text-decoration: none;
            color: black;
            text-align: center;
            font-size: 18px;
            font-family: 'NanumBarunGothic', sans-serif;
            width: 100%;
            height: 100%;
        }

        .top_Menu li a:focus{
            outline: none;
        }

        /* 내가 쓴 코드 */

        .tab_wrap.outer{
            padding-top: 80px;
        }
        
        .tab_wrap {
            position: relative;
        }

        ul, ol{
            list-style: none;
            margin: 0;
            padding: 0;
        }

        li {
            display: list-item;
            text-align: -webkit-match-parent;
        }

        ul{
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            padding-inline-start: 40px;
        }

        .tab_wrap.outer > li > .tab_tit {
            height: 50px;
            line-height: 50px;
            font-size: 15px;
        }

        .tab_wrap > li > .tab_tit {
            border: none;
            position: absolute;
            top: 0;
        }

        .tab_wrap > li > .tab_tit span {
            vertical-align: top;
            white-space: nowrap;
        }
        
        .contents_mall_detail .pd_tab .active .tab_con {
            padding: 30px 0;
        }

        .tab_wrap > li.active > .tab_con {
            overflow: inherit;
            position: relative;
            width: auto;
            height: auto;
        }

        .tab_wrap.outer > li > .tab_tit {
            height: 50px;
            line-height: 50px;
            border-bottom: 1px solid #ccc;
            color: #7f7f7f;
        }
</style>
<body>
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />
	</div>
	
	<section id="content">
        <div class="container">
            <div class="page-util">
                <div class="location">
                    <span>HOME > </span>
                    <a href="#" onclick="" title="스토어">스토어</a>
                </div>
            </div>
        </div>

        <!-- <div id="stay2"> -->
        <div class="sub_section">
            <div id="contents" class="contents_mall_detail" style="margin-top: 20px;">
                <div class="pd_wrap">
                    <div class="pd_img">
                        <div class="main_img">
                            <img class src="images/pop.PNG" alt="스위트콤보">
                        </div>
                    </div>
                    <!--pd_img-->
                    <div class="pd_detail">
                        <table class="pd_table" summary="상품 상세설명 표">
                            <caption>상품 상세내용</caption>
                            <colgroup>
                                <col style="width: 30%;">
                                <col style="width: auto;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="row" class="badge_wrap" colspan="2"> </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row" class="tit" colspan="2">스위트콤보</th>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <span class="txt_price">
                                            9,000
                                            <em>원</em>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">구성품</th>
                                    <td>오리지널L + 탄산음료M2</td>
                                </tr>
                                <tr>
                                    <th scop="row">구매제한</th>
                                    <td>제한없음</td>
                                </tr>
                                <tr>
                                    <th scope="row">유효기간</th>
                                    <td>스위트샵 상품권 24개원</td>
                                </tr>
                                <tr>
                                    <th scope="row">사용가능 영화관</th>
                                    <td>
                                        <button class="btn_col4 ty3 rnd" title="레이어팝 열기">스위트샵 상품권</button>
                                        "&nbsp;"
                                    </td>
                                </tr>
                               
                            </tbody>
                        </table>
                        <div class="bx_num">
                            <button class="btn_mins">삭제</button>
                            <div class="txt_num">1</div>
                            <button class="btn_plus">추가</button>
                        </div>
                        <div class="txt_price_wrap">
                            		총 상품금액
                            <strong class="txt_price_str">
                                9,000
                                <em>원</em>
                            </strong>
                        </div>
                        <div class="btn_wrap">
                            <button class="btn_col2 ty7">장바구니</button>
                            <button class="btn_col1 ty7">구매하기</button>
                        </div>
                    </div> <!-- pd_detail -->
                </div>

                <!-- <div class="content1">
                    <div class="tab_List">
                        <ul class="top_Menu">
                            <li class="on">
                                <a href="#">
                                    사용방법
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    주의사항
                                </a>
                            </li>
                        </ul>
                    </div>
                </div> -->
                <ul class="tab_wrap outer pd_tab">
                    <li class="active">
                        <button type="button" class="tab_tit" style="width: 50%; left: 0%;">
                        <span>사용방법</span>
                    </button>
                    <div class="tab_con">
                        <h4 class="hidden">사용방법</h4>
                        <h5 class="sec_tit">사용방법</h5>
                        <ul class="list_txt">
                            <p>
                                <p>
                                    <font face="맑은 고딕">
                                        &nbsp;스토어 상품은 회원만 구매할 수 있습니다.
                                        <br>
                                        - 유효기간은 24개월로 사용일 기준입니다.
                                        <br>
                                        - 결제가 완료된 상품은 마이시네마 > 예매/구매내역에서 확인 후 Kasscinema 스위트(매점)에서 사용가능합니다.
                                        <br>
                                        - 오리지널 팝콘이 기본으로 제공되며, 맛/반반팝콘 변경 시 금액이 추가됩니다.
                                        <br>
                                        - 탄산음료가 기본으로 제공되며, 사이즈 및 기타 음료로 변경 시 금액이 추가됩니다. (단, PET음료로 변경불가)
                                    </font>
                                </p>
                            </p>
                        </ul>
                    </div>
                    </li>
                    <li class="active">
                        <button type="button" class="tab_tit" style="width: 50%; left: 50%;">
                            <span>유의사항</span>
                        </button>
                        <div class="tab_con">
                            <h4 class="hidden">유의사항</h4>
                            <h5 class="sec_txt">취소/환불</h5>
                            <ul class="list_txt">
                                <p>
                                    <p>
                                        <font face="맑은 고딕">
                                            &nbsp; 구매하신 상품은 부분환불 및 현금환불이 불가합니다.
                                            <br>
                                            - 구매하신 상품은 취소 및 환불이 불가합니다.
                                        </font>
                                    </p>
                                </p>
                            </ul>

                            <h5 class="sec_txt">기타</h5>
                            <ul class="list_txt">
                                <p>
                                    <p>
                                        <font face="맑은 고딕">
                                            &nbsp; 구매하신 상품은 부분환불 및 현금환불이 불가합니다.
                                            <br>
                                            - 구매하신 상품은 취소 및 환불이 불가합니다.
                                        </font>
                                    </p>
                                </p>
                            </ul>
                        </div>
                    </li>
                </ul>

            </div><!-- contents -->
        </div><!-- subsection -->
        <!-- </div> -->
    </section>

	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>

</body>
</html>