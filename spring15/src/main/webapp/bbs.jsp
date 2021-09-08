<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/out.css">
</head>
<body>
<img src="resources/img/pro01.jpg" width="300">
<h2>insert</h2>
<form action="bbs.mega">
	id : <input name="id"><br>
	title : <input name="title"><br>
	content : <input name="content"><br>
	writer : <input name="writer"><br>
	<button>upload</button>
</form>
<hr>
<h2>레코드 하나 검색</h2>
<form action="bbs1.mega">
	id : <input name="id"><br>
	<button>search</button>
</form>
<hr>
<h2>레코드 전체 검색</h2>
<a href="list.mega">보여죠</a>
</body>
</html>