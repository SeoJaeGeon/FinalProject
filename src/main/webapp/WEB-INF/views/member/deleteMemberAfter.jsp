<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<style type="text/css">
/* content */
.content {
    text-align: center;
}

.iconDiv {
    margin-top: 100px;
    }

.slate {
    width: 100px;
    height: 100px;
}

.homeBtn {
    margin-top: 100px;
    margin-bottom: 196px;
    text-align: center;
    width:400px;
    height: 60px;
    border-radius: 5px;
    background: rgb(31, 69, 97);
    font-weight: bold;
    font-size: 16px;
    color: white;
}

h1 {
    font-size: 30px;
}

.content-1>p {
    margin-bottom: 100px;
}
/* content */
</style>
</head>
<body>
	<section class="content">
        <div class="content-1">
            <div class="iconDiv"><img src="../images/slate.PNG" class="slate"></div>
            <h1>회원 탈퇴가 완료되었습니다.</h1>
            <p>그동안 KASS CINEMA를 이용해주셔서 감사합니다.</p>

            <button class="homeBtn" onclick="goHome();">메인으로 이동</button>
        </div>
    </section>
    
    <script>
    	function goHome() {
    		location.href="home.do";
    	}
    </script>
</body>
</html>