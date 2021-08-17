<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	session.getAttribute("view");
    	int view = (Integer)session.getAttribute("view");
    	view += 1;
    	session.setAttribute("view", view);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
조회수 +1 <br>
<a href="page05.jsp">page05.jsp</a>
</body>
</html>