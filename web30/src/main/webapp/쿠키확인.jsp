<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie[] cookies = request.getCookies();
    	for (Cookie c : cookies) {
    		// out.print(c.getName() + ", " + c.getValue() + "<br>");
    		// 쿠키의 이름이 age인 값 프린트
    		if (c.getName().equals("age")) {
    			out.print("age가 이름인 값: " + c.getValue() + "<br>");
    		}
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키 개수 : <%= cookies.length %> 개<br>

</body>
</html>