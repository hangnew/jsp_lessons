<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 두 수를 입력 받아서 사칙 연산을 수행해주세요.
	num1 = parseInt(prompt('첫 번째 숫자'))
	num2 = parseInt(prompt('두 번째 숫자'))
	sum = num1 + num2
	sub = num1 - num2
	div = num1 / num2
	mul = num1 * num2
	alert('두 수의 합은 ' + sum + ', 두 수의 차는 ' + sub + ', 두 수의 몫은 ' + div + ', 두 수의 곱은 ' + mul)
</script>
</head>
<body>
</body>
</html>