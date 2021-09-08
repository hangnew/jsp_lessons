<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript">
	function push(){
		n1 = parseInt($('#n1').val())
		n2 = parseInt($('#n2').val())
		arr = [n1, n2]
		return arr;
	}

	$(function() {
		$('#b1').click(function() {
			arr = push();
			alert(add(arr[0], arr[1]));
		})
		$('#b2').click(function() {
			arr = push();
			alert(sub(arr[0], arr[1]));
		})
		$('#b3').click(function() {
			arr = push();
			alert(mul(arr[0], arr[1]));
		})
		$('#b4').click(function() {
			arr = push();
			alert(div(arr[0], arr[1]));
		})
	})
</script>
</head>
<body>
	숫자 1: <input id="n1"><br> 
	숫자 2: <input id="n2"><br>
	<button id="b1">+</button>
	<button id="b2">-</button>
	<button id="b3">x</button>
	<button id="b4">/</button>
</body>
</html>