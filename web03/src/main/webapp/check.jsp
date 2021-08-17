<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 입력값 가져오기 -->
    <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String id2 = "root";
    String pw2 = "1234";
    String result = "로그인 실패";
    if (id.equals(id2) && pw.equals(pw2)){
    	result = "로그인 성공!";
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력값 받아서 출력하기</title>
</head>
<body>
<!-- 출력 -->
서버로 전송된 id는 <%= id %><br>
서버로 전송된 pw는 <%= pw %><br>
<hr>
로그인 결과는 <%= result %>
</body>
</html>