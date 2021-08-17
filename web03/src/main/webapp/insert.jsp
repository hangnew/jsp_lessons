<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 1. 서버로 전송된 데이터를 받아야 한다 -->
    <%
    	// 자바 코드 자리
    	// HttpServletRequest request = new HttpServletRequest();
    	String id = request.getParameter("id"); // apple
    	String pw = request.getParameter("pw"); // 1234
    	String name = request.getParameter("name"); // apple
    	String tel = request.getParameter("tel"); // 011
    %>
    <!-- 2. db에 넣어야 한다 -->
    
    
    <!-- 3. db처리의 결과 메시지를 클라이언트에게 보내줘야 한다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
회원 정보가 잘 도착하였습니다.<br>
서버에 도착한 id는 <%= id %><br>
서버에 도착한 pw는 <%= pw %><br>
서버에 도착한 이름은 <%= name %><br>
서버에 도착한 전화번호는 <%= tel %><br>
</body>
</html>