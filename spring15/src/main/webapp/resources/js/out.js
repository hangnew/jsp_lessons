/**
	작성자: 
	수정 날짜: 2021년 09월 08일
	수정 내용: 함수 정의하여 호출
 */
function add(x, y) {
	return x + y;
}

function go() {
	url = document.getElementById("site").value;
	location.href = "http://www." + url + ".com"
}
