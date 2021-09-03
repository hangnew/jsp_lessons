<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="cmntIn.do">
	<input name="cIdx" type="hidden" value="1">
	<input name="mIdx" type="hidden" value="1">
	<input name="cWri" type="hidden" value="id999">
	일촌평 : <input name="cCon" placeholder="일촌과 나누고 싶은 이야기를 남겨보세요~!" size="50"> 
	<button>확인</button>
</form>
<hr>
<form action="one.do">
	검색할 mIdx : <input name="mIdx"> 
	<button>검색</button>
</form>
</body>
</html>