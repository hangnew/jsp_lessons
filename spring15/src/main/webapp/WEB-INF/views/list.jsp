<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td:nth-child(n+5) {
	text-align: center;
}
</style>
</head>
<body>
	<h2>전체 출력</h2>
	${list}
	<h2>하나씩 출력</h2>
	<c:forEach items="${list}" var="dto">
		<hr>
	id: ${dto.id} <br>
	title: ${dto.title} <br>
	content: ${dto.content} <br>
	writer: ${dto.writer} <br>
	</c:forEach>
	<hr>
	<h2>테이블에 출력</h2>
	<table border=1>
		<tr>
			<th>아이디</th>
			<th width=100>제목</th>
			<th width=150>내용</th>
			<th width=100>작성자</th>
			<th>상세페이지</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.id}</td>
				<td>${dto.title}</td>
				<td>${dto.content}</td>
				<td>${dto.writer}</td>
				<td><a href="bbs1.mega?id=${dto.id }"><button>+</button></a></td>
				<td><a href="bbsDelete.mega?id=${dto.id }"><button>x</button></a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>