<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/out.css">
</head>
<body>
	<div id="total">
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div>
			<p>제품 product</p>
			<form action="read3.jsp" autocomplete=off>
				ID: <input name="id"><br>
				<button>제품 하나 검색 처리</button>
			</form>
			<hr>
			<h3>게시판 전체 검색</h3>
			<form action="all3.jsp" autocomplete=off>
				<button>제품 전체 검색 처리</button>
			</form>
		</div>
	</div>
</body>
</html>