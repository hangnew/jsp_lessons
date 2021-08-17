<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		font-family: 'Apple SD Gothic Neo'
	}
	
	h3 {
		color: #173F5F;
		background-color: #3CAEA3;
		font-size: 20pt;
	}
	
	#result1 {
		color: #173F5F;
		background-color: #3CAEA3;
		font-size: 20pt;
		font-weight: bold;
	}
	
	body ul{
		color: #ED553B;
	}
	
	.c1 {
		background-color: #F6D55C;
	}
	
	body > ul {
		list-style: square;
	}
	
	#result2 > ul {
		font-size: 15pt;
		color: #20639B;
		list-style: circle;
	}
</style>
</head>
<body>
	<h3>좋아하는 과목</h3>
	<ul>
		<li class="c1">컴퓨터</li>
		<li class="c1">영어</li>
		<li class="c1">마케팅</li>
	</ul>
	<div id='result1'>결과가 보여지는 부분</div>
	<div id='result2'>
		<span>나는 결과야1</span>
		<ul>
			<li>오늘은 목요일</li>
			<li>내일은 금요일</li>
		</ul>
	</div>
</body>
</html>