<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int view = 100;
    	session.setAttribute("view", view);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
현재 세션에 저장된 조회수 : <%=session.getAttribute("view") %><br>
<a href="page04.jsp">page04.jsp</a>
</body>
</html>