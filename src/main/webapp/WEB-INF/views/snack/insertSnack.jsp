<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<title>Insert title here</title>
<style>
	header, nav, section, article, aside, footer {
	box-sizing: border-box;
	display: block;
}

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
            margin-top: 30px;
            vertical-align: middle;

        }

        tr,
        th,
        td,
        form,
        table {
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

        table th,
        table td {
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

        .btn_col1.ty7,
        .btn_col2.ty7 {
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
        }

        .button.insert {
            color: #fff;
            border: 0;
            background: #503396;
        }

        .button {
            display: inline-block;
            text-align: center;
            font-weight: 400;
            border-radius: 4px;
            font-family: NanumBarunGothic, Dotum, '돋움', sans-serif;
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
	<div id="wrap_stay">
		<jsp:include page="../../views/common/white.jsp" />
	</div>
	<jsp:include page="../../views/common/productMenu.jsp" />

	  <section id="content">
        <div class="content1">
            <h2 class="title">스낵 상품 등록</h2>

            <div id="divNewPrdtArea">
                <div class="store-list">
                    <form action="sinsert.do" methid="post" enctype="Multipart/form-data">
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
                                        <textarea style="resize: none;" id="meno" min="0" name="stock" size="500"
                                            rows="10" cols="40"></textarea>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="right">
                            <input type="file" name="uplodeFile" id="img-file">
                        </div>
                    </form>
                </div>
                <div class="btn_wrap">
                    <button class="button cancel">취소</button> <input type="submit" vlaue="등록 하기">
                    <button class="button insert">등록</button> <input type="reset" vlaue="취소 하기">
                </div>
            </div>
        </div>
    </section>
    
	<div id="stay_footer">
		<div id="stay_footer_inner">
			<jsp:include page="../../views/common/footer.jsp" />
		</div>
	</div>

</body>
</html>