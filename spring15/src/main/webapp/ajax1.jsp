<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function(){
		$('#b4').click(function(){
			telVal = $('#tel').val();
			$.ajax({
				url : "tel.jsp",
				data : {
					tel : telVal
				},
				success : function(result){
					$('#d1').append(result + '<br>')
				},
				error : function(){
					alert('실패')
				}
			}) // .ajax()
		}) // $('#b4').click()
		
		$('#b1').click(function(){
			wordValue = $('#word').val()
			$.ajax({
				url : "test.jsp",
				data : {
					word : wordValue
				}, // data
				success : function(result){
					alert(result)
				}, // success
				error : function(){
					alert('호출 실패')
				} // error
			}) // ajax
		}) // $('#b1').click
		$('#b2').click(function(){
			moneyValue = $('#money').val()
			payValue = $('#pay').val()
			$.ajax({
				url : "money.jsp",
				data : {
					money : moneyValue,
					pay : payValue
				}, //data
				success : function(result){
					alert('결제금액: ' + result)
				}, // success
				error : function(){
					alert('호출 실패')
				} // error
			}) //ajax
		}) //b2
	}) // $()
</script>
</head>
<body>
<h3>비동기 통신</h3>
<hr>
ajax 테스트: <input id="word"><button id="b1">ajax 테스트</button><br>
결제금액: <input id="money"><br>
1)계좌이체 2)신용카드 3)휴대폰결제<br>
결제수단: <input id="pay"><button id="b2">결제하기</button>
<hr>
회원가입할 id 입력: <input id="user"><button id="b3">회원가입시 id 중복 체크</button>
<hr>
인증받을 전화번호 입력: <input id="tel"><button id="b4">인증번호 받기</button>
<hr>
<div id="d1"></div>
</body>
</html>