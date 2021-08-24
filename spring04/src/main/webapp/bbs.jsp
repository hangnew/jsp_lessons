<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="create.do">
	게시글 번호: <input name="no"><br>
	게시글 제목: <input name="title"><br>
	게시글 내용: <textarea name="content" rows=10></textarea><br>
	게시글 작성자: <input name="writer"><br>
	<button>게시글 작성</button>
</form>
</body>
</html>