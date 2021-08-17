<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String content = request.getParameter("content");
    String enquiry = request.getParameter("enquiry");
    String dprtmnt = request.getParameter("dprtmnt");
    String date = request.getParameter("date");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>서버에서 받은 데이터</h3>
	제목 : <%= title %><br>
	글쓴이 : <%= writer %><br>
	내용 : <%= content %><br>
	종류 : <%= enquiry %><br>
	부서 : <%= dprtmnt %><br>
	날짜 : <%= date %><br>
</body>
</html>