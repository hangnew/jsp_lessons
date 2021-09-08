<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {

		$('#b1').click(function() {
			$.ajax({
				url : "i.jsp",
				success : function(ok) {
					$('#result').append(ok + '<br>')
				},
				error : function() {
					alert('실패')
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url : "a.jsp",
				success : function(a) {
					$('#result').append(a + '<br>')
				},
				error : function() {
					alert('failed to load');
				}
			})
		})
		$('#b3').click(function() {
			$.ajax({
				url : "b.jsp",
				success : function(b) {
					$('#result').append(b + '<br>')
				},
				error : function() {
					alert('failed to load')
				}
			})
		})
	})
</script>
</head>
<body>
	<button id="b1">ajax test</button>
	<br>
	<button id="b2">what day is it?</button>
	<button id="b3">how about tomorrow?</button>
	<br>
	<div id="result"></div>
</body>
</html>