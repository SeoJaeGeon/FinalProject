<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

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
/* 헤더 */

/* 관리자 페이지 글 */
#Manager-p1{
	font-size:20px;
	margin-left:100px;
	margin-top:60px;
}

/* 로고 */
#logo_img {
	display: block;
	margin: auto;
	margin-top: 20px;
}
/* 로고 */

/* 네비게이션 바*/
#navi {
	list-style-type: none;
	padding: 0;
	margin: 0;
	height: 100%;
}

ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
}

#navi>li {
	display: inline-block;
	width: 19%;
	height: 100%;
	float: left;
}

#navi li a {
	height: 100%;
	display: block;
	text-decoration: none;
	text-align: center;
	padding-top: 5px;
	color: black;
	font-weight: bold;
	font-size: 21px;
	line-height: 40px;
}

li a {
	display: block;
	background-color: white;
	text-decoration: none;
	font-weight: bold;
	color: #000000;
	text-align: center; 
	padding:10px;
	transition: all 0.5s;
	
} 

li a:hover {
	background-color: #aaaaaa;
	color: white;
}  

#navi li ul {
	opacity: 0;
	transition: all 0.3s;
}

#navi li:hover ul {
	opacity:1;
}

#navi li ul li {
	height: 0;
	transition : all 0.3s;
	/* 가시성 -> 숨김 */
	visibility: hidden; 
}

#navi li:hover ul li {
	height:40px;
	visibility: visible; 
}
		
#navi li a:hover {
	border-bottom: 1px solid rgb(31, 69, 97);
}
/* 네비게이션 바*/

/* 영역 나누기 */
        #stay1 {
            width: 100%;
            background: white;

        }

        #stay2 {
            width: 100%;
            background: white;
        }

        #stay_footer {
            width: 100%;
            height: 150px;
            background-color: lightgray;
        }

        #wrap_stay {
            width: 1500px;
            margin: auto;
            border: 1px solid red;
        }

        .movie {
            display: inline-block;
            margin: 0px 50px;
            border: 1px solid yellow;
            width: 250px;
            height: 400px;
        }

        .poster {
            width: 100%;
            height: 300px;
        }

        .onScrenn {
            background: rgb(46, 204, 113);
            width: 70px;
            height: 30px;
            color: white;
            font-size: 15px;
            float: left;
            margin-left: 30px;
            margin-top: 30px;
            text-align: center;
            padding-top: 4px
        }

        .resevation {
            background: rgb(231, 76, 60);
            width: 100px;
            height: 40px;
            border-radius: 40px;
            color: white;
            border: 1px solid rgb(231, 76, 60);
            margin-left: 30px;
            margin-top: 25px;
        }

        /* 영역 나누기 */

        /* sidemenu */
        .listArrange {
            font-size: 12px;
        }

        .myMenu {
            margin-top: 50px;
            margin-right: 60px;
            margin-left: 20px;
            float: left;
        }

        .list {
            list-style-image: url("../../images/list4.PNG");
            margin-bottom: 40px;
            margin-top: 10px;
        }

        a {
            color: rgb(114, 114, 114);
            text-decoration: none;
        }

        a:hover {
            color: rgb(31, 67, 97);
        }

        .menuTitle {
            border-top: 1px solid rgb(201, 201, 201);
            padding-bottom: 0px;
        }

        h4 {
            margin-bottom: 0px;
        }

        ul>li {
            font-size: 14px;
        }

        * {
            box-sizing: border-box;
        }

        div {
            display: block;
        }

        ul {
            list-style: none;
        }

        h3.tit {
            margin: 0;
            font-size: 1.6em;
            font-weight: 400;
            color: #503396;
        }

        body {
            letter-spacing: 0;
            line-height: 1.5;
            font-size: 15px;
            color: #444;
            font-weight: 400;

        }

        .content1 {
            width: 100%;
            min-height: 1000px;
            border: 3px solid blueviolet;

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
            width: 430px;
            height: 100%;
            list-style: none;
            float: left;
            border-bottom: 1px solid rgb(31, 69, 97);
        }

        .on {
            border-left: 1px solid rgb(31, 69, 97) !important;
            border-right: 1px solid rgb(31, 69, 97) !important;
            border-top: 1px solid rgb(31, 69, 97) !important;
            border-bottom: none !important;
        }

        .store-list {
            width: 1000px;
            height: 600px;
            overflow: hidden;
            margin: 50px 300px;
            border: 1px solid red;
            background-color: rgb(224, 224, 224);
        }

        /* form 영역 */
        div.left {
            width: 50%;
            height: 600px;
            float: left;
            box-sizing: border-box;
            border: 1px solid yellow;
        }

        div.right {
            width: 50%;
            height: 600px;
            float: right;
            box-sizing: border-box;
            border: 1px solid yellowgreen;
        }

        table {
            /* table-layout: fixed; */
            width: 100%;
            box-sizing: border-box;
            margin: auto;

        }

        tr, th, td, form, table {
            /* margin-left: 50px;
            margin-top: 50px; */
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
        }

        table th {
            background-color: #eee;
            font-weight: normal;
            width: 120px;
            text-align: left;
            color: #666;
        }

        table th, table td {
            padding: 12px 10px;
            height: 48px;
        }

        label {
            margin-left: 50px;
        }

        input {
            padding: 6px 12px;
            width: 200px;
            height: 100%;
            background: #fff;
            border: 1px solid
        }

        #img-file {
            width: 80%;
            height: 60%;
            border: 1px solid black;
            margin-left: 50px;
            margin-top: 25px;
            font-size: 20px;
        }

        input[type=file] {
            display: block;
        }

        .btn_col1.ty7, .btn_col2.ty7 {
            height: 52px;
            line-height: 50px;
            padding: 0 24px;
        }

        .btn_wrap {
            padding: 20px 0 30px 0;
            margin: 0;
            text-align: center;
        }

        .btn_wrap .button {
            margin: 0 3px;
        }

        .button.cancel {
            height: 46px;
            padding: 0 30px;
            line-height: 44px;
        }

        .button.insert {
            height: 46px;
            padding: 0 30px;
            line-height: 46px;
            color: #fff;
            border: 0;
            background: rgb(31, 69, 97);
        }

        .button.delete {
            height: 46px;
            padding: 0 30px;
            line-height: 46px;
            color: #fff;
            border: 0;
            background:rgb(231, 76, 60);
            margin-right: 100px;
            float: right;

        }

        .button {
            display: inline-block;
            text-align: center;
            font-weight: 400;
            border-radius: 4px;
            font-family: NanumBarunGothic,Dotum, '돋움', sans-serif;
            text-decoration: none;
            vertical-align: middle;
            cursor: pointer;
        }

        button {
            text-transform: none;
            overflow: visible;
            font-size: 1em;
        }
</style>
</head>
<body>
	 <jsp:include page="../../views/common/manager.jsp" />
	
	<section id="content">
        <aside class="myMenu">
            <table>
                <tr>
                    <td>
                        <h2>스낵 관리</h2>
                    </td>
                </tr>
                <tr>
                    <td class="menuTitle">
                        <h4>Menu</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul class="list" style="-webkit-padding-start:10px;">
                            <li><a href="#">상품 등록</a></li>
                            <li><a href="#">상품 수정 및 삭제</a></li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <td class="menuTitle">
                        <h4>상품 내역</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <ul class="list" style="-webkit-padding-start:10px;">
                            <li><a href="#">판매 종료 상품</a></li>
                        </ul>
                    </td>
                </tr>
            </table>
        </aside>

        <div class="content1">
            <h2 class="title">스낵 상품 등록</h2>

            <div id="divNewPrdtArea">
                <div class="store-list">
                    <form>
                        <div class="left">
                            <table class="proTable">
                                <tr>
                                    <td>
                                        <label class="label1">카테고리 </label>
                                        <select name="categoryKey" id="categoryKey">
                                            <option selected value="0">카테고리 선택</option>
                                            <option value="C1">팝콘</option>
                                            <option value="C2">음료</option>
                                            <option value="C3">세트</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <label class="label2">상품명 </label>
                                        <input type="text" name="prouctName" size="30">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="label3">가격 </label>
                                        <input type="number" min="0" name="price" size="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label class="label4">상품 설명</label>
                                        <textarea style="resize: none;" id="meno" min="0" name="stock" size="500" rows="10" cols="40"></textarea>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="right">
                            <input type="file" id="img-file">
                        </div>
                    </form>
                </div>
                <div class="btn_wrap">
                    <button class="button cancel">취소</button>
                    <button class="button insert">수정</button>
                    
                </div>

                <div class="btn_wrap">
                    <button class="button delete">삭제</button>
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