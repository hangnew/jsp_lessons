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
		$('#b1').click(function(){
			food1val = $('#food1').val();
			food2val = $('#food2').val();
			$.ajax({
				url : "b1.jsp",
				data : {
					food1 : food1val,
					food2 : food2val
				},
				success : function(result){
					alert(result)
				},
				error : function(){
					alert('failed to load')
				}
			})
		}) // b1
		$('#b2').click(function(){
			tempVal = $('#temp').val();
			dayVal = $('#day').val();
			$.ajax({
				url : "b2.jsp",
				data : {
					temp : tempVal,
					day : dayVal
				},
				success : function(result){
					alert(result)
				},
				error : function(){
					alert('failed to load')
				}
			})
		})
	})
</script>
</head>
<body>
<h2>b1</h2>
먹고싶은 음식: <input id="food1"><br>
먹기 싫은 음식: <input id="food2"><br>
<button id="b1">what for lunch?</button>
<hr>
<h2>b2</h2>
오늘 온도: <input id="temp"><br>
오늘 무슨 요일: <input id="day"><br>
<button id="b2">how's the day?</button>
</body>
</html>