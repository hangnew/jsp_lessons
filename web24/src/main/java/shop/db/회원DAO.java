package shop.db;

public class 회원DAO {

	// 메서드(변수들)
	// 메서드 호출할 때 값을 전달할 목적으로 만들어지는 매개 역할을 해주는 변수
	// (=매개 변수 = parameter)
	public void create(String id, String pw, String name, String tel) {
		// 변수 선언의 위치가 생존 범위를 결정한다.
		// 매개 변수 (parameter) 는 지역 변수이다.
		// 지역 변수는 자동 초기화가 되어 있지 않다.
		System.out.println("전달된 id는 " + id);
		System.out.println("전달된 pw는 " + pw);
		System.out.println("전달된 name는 " + name);
		System.out.println("전달된 tel은 " + tel);
	}

//	다형성 (오버로딩)
//	하나의 메서드 명이 다수 존재할 수 있다. 입력값의 형태가 다양해야 한다.
	public void read(String id) {

	}

	public void read() {

	}

	public void update() {

	}

	public void delete() {

	}
} // class
