<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="js07.css"></link>
<script type="text/javascript">
	function login() {
		id = prompt('아이디를 입력하세요.')
		pw = prompt('비밀번호를 입력하세요.')
		if (id == 'root' && pw == '1234') {
			location.href = 'http://www.naver.com'
		} else {
			location.href = 'http://www.daum.net'
		}
	}	
	function pay(){
		price = 1000
		mem = prompt('1)일반 2)VIP')
		if (mem == '1') {
			alert('결제 금액은 ' + (price * 1.1) + '원입니다.')
		} else if (mem == '2') {
			alert('결제 금액은 ' + (price * 0.9) + '원입니다.')
		} else {
			alert('1번이나 2번만 입력해주세요.')
		}
	}
</script>
</head>
<body>
<button onclick="login()">로그인 기능 처리</button><br>
<button onclick="pay()">결제 금액</button>
</body>
</html>