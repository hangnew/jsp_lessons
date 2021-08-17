<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// alert('tern project');
	function idCheck() {
		// 1. 아이디에 입력한 값 가져와야 한다.
		//		1-1. id가 "id"인 input 태그를 가져 온다. (id="id")
				idTag = document.getElementById("id");
		//		2-1. 그 태그의 value값을 가져 온다.
				idValue = idTag.value;
		//		alert('id is : ' + idValue);
		// 2. 그 값의 글자수를 세어야 한다.
		//		alert('id 길이 : ' + idValue.length);
		// 3. 다섯 글자 이상이 아니면 메시지를 보여줘야 한다.
				result = "";
				if (idValue.length >= 5) {
					result = "5글자 이상입니다. 유효합니다.";
				} else {
					result = "5글자 미만입니다. 재입력해주세요.";
				}
				divTag = document.getElementById("result1");
				divTag.innerHTML = result;
	}	
	
	function pwCheck() {
		pw1Value = document.getElementById("pw1").value;
		pw2Value = document.getElementById("pw2").value;
		result = "";
		if (pw1Value == pw2Value) {
			result = "두 패스워드가 일치합니다.";
		} else {
			result = "두 패스워드가 일치하지 않습니다. 재입력해주세요."
			document.getElementById("pw1").value = "";
			document.getElementById("pw2").value = "";
		}
		document.getElementById("result2").innerHTML = result;
	}
	
	function pwCheck2() {
		pw1Value = document.getElementById("pw1").value;
		pw2Value = document.getElementById("pw2").value;
		result = "<img src=img/nonono.jpeg>";
		if (pw1Value == pw2Value) {
			result = "<img src=img/okokok.jpeg>";
		}
		document.getElementById("result3").innerHTML = result;
	}
</script>
</head>
<body>
아이디: <input name="id" id="id" value="test"><button onclick='idCheck()'>글자수 체크</button><br>
패스워드: <input name="pw1" id="pw1"><br>
패스워드2: <input name="pw2" id="pw2"><button onclick='pwCheck()'>패스워드 동일 여부 체크</button>
<button onclick='pwCheck2()'>패스워드 동일 여부 체크 이미지</button><br>
<hr>
<div id="result1" style="color:red"></div>
<div id="result2" style="color:red"></div>
<div id="result3" style="color:red"></div>
</body>
</html>