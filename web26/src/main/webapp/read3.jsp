<%@page import="shop.db.productDAO"%>
<%@page import="shop.dto.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String id = request.getParameter("id");
		productDTO bag = new productDTO();
		bag.setId(id);
		productDAO dao = new productDAO();
		productDTO bag2 = dao.read(bag);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>제품 검색 결과입니다.</h2>
<hr>
<table>
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>내용</th>
		<th>가격</th>
	</tr>
	<tr>
		<td><%=bag2.getId() %></td>
		<td><%=bag2.getName() %></td>
		<td><%=bag2.getContent() %></td>
		<td><%=bag2.getPrice() %></td>
	</tr>
</table>
</body>
</html>