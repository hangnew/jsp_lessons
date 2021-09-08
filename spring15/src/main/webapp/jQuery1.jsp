<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
	// var result = add(200, 100);
	// alert(result);
	function push() {
		n1V = document.getElementById("n1").value;
		n2V = document.getElementById("n2").value;
		n1 = parseInt(n1V);
		n2 = parseInt(n2V);
		result = add(n1, n2);
		alert(result);
	}
</script>
</head>
<body>
	숫자 1: <input id="n1"><br> 
	숫자 2: <input id="n2"><br>
	<button onclick="push()">push me</button>
<hr>
	가고 싶은 사이트(naver, google 중 입력): <input id="site"><br>
	<button onclick="go()">사이트로 이동</button>
</body>
</html>