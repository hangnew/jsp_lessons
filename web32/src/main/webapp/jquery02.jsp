<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		// alert('dom tree를 모두 읽어들임')
		$('#b1').click(function(){
			location.href = "domTree.jsp";
		});
		$('#b2').click(function(){
			in1Value = $('#in1').val();
			if (in1Value == 1){
				location.href = "https://www.starbucks.co.kr/index.do";
			} else if (in1Value == 2){
				location.href = "https://www.theborn.co.kr/theborn_brand/zzambbong/#menu_list";
			} else if (in1Value == 3){
				location.href = "https://www.jpdc.co.kr/samdasoo/index.htm";
			}
		});
		$('#b3').click(function(){
			in2Value = $('#in2').val();
			in3Value = $('#in3').val();
			if (in2Value == 1 && in3Value ==1){
				// alert('우산 가져가세요.')
				// $('#result1').text('우산 가져가세요.');
				// $('#result1').html('<font color=blue>우산 가져가세요.</font>')
				$('#result1').append('<font color=blue>우산 가져가세요.</font><br>')
			} else {
				// alert('우산 놓고가세요.')
				// $('#result1').html('<font color=red>우산 놓고가세요.</font>')
				$('#result1').append('<font color=red>우산 놓고가세요.</font><br>')
			}
			$('#in2').val('')
			$('#in3').val('')
		})
	});
</script>
</head>
<body>
	<button id="b1">사이트 이동</button><br>
	먹고 싶은 음식 1)커피 2)자장면 3)물: <input id="in1">
	<button id="b2">입력값 읽어서 처리</button><br>
	비가 오나요? 1)온다 2)안 온다 <input id="in2"><br>
	구름이 많은가요? 1)많다 2)아니다 <input id="in3">
	<button id="b3">입력값 읽어서 처리 2</button>
	<hr>
	<div id="result1">결과가 나타나는 부분</div>
</body>
</html>