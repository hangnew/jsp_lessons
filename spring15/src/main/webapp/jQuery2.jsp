<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript">
	function push() {
		n1 = parseInt(document.getElementById("n1").value);
		n2 = parseInt(document.getElementById("n2").value);
		numbers = [n1, n2];
		return numbers;
	}
	
	function a(){
		numbers = push();
		alert(add(numbers[0], numbers[1]));
	}
	
	function b(){
		numbers = push();
		alert(sub(numbers[0], numbers[1]));
	}
	
	function c(){
		numbers = push();
		alert(mul(numbers[0], numbers[1]));
	}
	
	function d(){
		numbers = push();
		alert(div(numbers[0], numbers[1]));
	}
	
</script>
</head>
<body>
숫자 1: <input id="n1"><br>
숫자 2: <input id="n2"><br>
<button onclick="a()">+</button>
<button onclick="b()">-</button>
<button onclick="c()">x</button>
<button onclick="d()">/</button>
</body>
</html>