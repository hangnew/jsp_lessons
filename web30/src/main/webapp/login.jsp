<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
button {
	color: red;
	background-color: yellow;
	font-size: 15pt;
	padding: 10px;
}
</style>
</head>
<body>
<h3>로그인 화면입니다.</h3>
<hr>
<form action="logCheck.jsp">
	로그인 id: <input type="text" name="id"><br>
	로그인 pw: <input type="text" name="pw"><br>
	<button type="submit">로그인 처리 요청</button>
</form>
</body>
</html>