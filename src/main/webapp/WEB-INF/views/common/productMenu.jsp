<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextPath"
	value="${ pageContext.servletContext.contextPath }" scope="application" />
<title>Insert title here</title>
<style>
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
            list-style-image: url("${ contextPath }/resources/images/list4.PNG");
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
</style>
</head>
<body>
		<aside class="myMenu">
			<table>
				<tr>
					<td>
						<h2>상품 관리</h2>
					</td>
				</tr>
				<tr>
					<td class="menuTitle">
						<h4>Menu</h4>
					</td>
				</tr>
				<tr>
					<td>
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a href="sInsertSnack.do">스낵 상품 등록</a></li>
							<li><a href="ManagerSnackList.do">스낵 수정 및 삭제</a></li>
						</ul>
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a href="gInsertGoods.do">굿즈 상품 등록</a></li>
							<li><a href="ManagerGoodsList.do">굿즈 수정 및 삭제</a></li>
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
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a href="ManagerdeleteSnackList.do">스낵 판매 종료 상품</a></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td>
						<ul class="list" style="-webkit-padding-start: 10px;">
							<li><a href="ManagerdeleteGoodsList.do">굿즈 판매 종료 상품</a></li>
						</ul>
					</td>
				</tr>
			</table>
		</aside>
</body>
</html>