<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 세션을 끊어주는 처리 -->
    <%
    	// id 세션만 제거하고자 할 경우
    	// session.removeAttribute("id");
    	
    	// 모든 세션을 제거하고자 할 경우
    	session.invalidate();
    	
    	// response 객체 : 서버가 클라이언트에게 특정한 처리 명령
    	// request 객체 : 클라이언트로부터 넘어온 데이터를 요청
    	response.sendRedirect("login.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>