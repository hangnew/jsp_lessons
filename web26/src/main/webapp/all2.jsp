<%@page import="shop.dto.게시판Bag"%>
<%@page import="java.util.ArrayList"%>
<%@page import="shop.db.게시판DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    게시판DAO dao = new 게시판DAO();
    ArrayList<게시판Bag> list = dao.read();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
전체 게시판 목록의 개수 : <%=list.size() %>개<br>
<hr>
<%=list %>
<hr color="red">
<table border=1>
	<tr>
		<th height=50>아이디</th>
		<th width=100px>제목</th>
		<th>내용</th>
		<th>작성자</th>
	</tr>
<%
	for(int i = 0; i < list.size(); i++) {
	게시판Bag bag = list.get(i);
%>
	<tr>
		<td><%=bag.getId() %></td>
		<td><a href="http://localhost:8080/web26/read2.jsp?id=<%=bag.getId()%>"><%=bag.getTitle() %></a></td>
		<td><%=bag.getContent() %></td>
		<td><%=bag.getWriter() %></td>
	</tr>
<%} %>
</table>
</body>
</html>