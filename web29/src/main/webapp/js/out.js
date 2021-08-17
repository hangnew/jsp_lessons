/**
 *
 */

// 버튼을 누르면 특정한 기능을 처리하기 위해 함수를 만들어 주자
	// 기능 정의
	function add(x, y) {
	/* 	x = 10
		y = 20 */
		console.log('더하기 기능 정의할 예정 ' + (x + y))
	}
	function minus(x, y) {
		/* x = 100
		y = 200 */
		console.log('빼기 기능 정의할 예정 ' + (x - y))
	}
	function move(){
		site = prompt('1)naver 2)daum 3)google')
		if (site == 1){
			location.href='http://www.naver.com'
		} else if (site == 2){
			location.href='http://www.daum.net'
		} else if (site == 3){
			location.href='http://www.google.com'
		} else {
			alert('해당 사이트가 없습니다.')
		}
	}