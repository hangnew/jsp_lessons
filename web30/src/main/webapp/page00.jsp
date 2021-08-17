<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie c1 = new Cookie("category", "exercise");
    	c1.setMaxAge(0);
    	response.addCookie(c1);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키 심음 <br>
<a href="page02.jsp">page02.jsp</a>
</body>
</html>