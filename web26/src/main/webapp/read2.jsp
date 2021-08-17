<%@page import="shop.db.게시판DAO"%>
<%@page import="shop.dto.게시판Bag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String id = request.getParameter("id");
		게시판Bag bag = new 게시판Bag();
		bag.setId(id);
		게시판DAO dao = new 게시판DAO();
		게시판Bag bag2 = dao.read(bag);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		border-collapse: collapse;
	}
	
	tr:nth-child(1){
		border-bottom: 2px solid black;
	}

	th {
		width: 100px;
		height: 30px;
	}

	td {
		text-align: center;
		padding-top: 10px;
	}
</style>
</head>
<body>
<h2>게시판 검색 결과입니다.</h2>
<hr>
<table>
	<tr>
		<th>아이디</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성자</th>
	</tr>
	<tr>
		<td><%=bag2.getId() %></td>
		<td><%=bag2.getTitle() %></td>
		<td><%=bag2.getContent() %></td>
		<td><%=bag2.getWriter() %></td>
	</tr>
</table>
</body>
</html>