package shop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import shop.dto.회원Bag;

public class 회원DAO2 {
	// 메서드(변수들)
	// 메서드 호출할 때 값을 전달할 목적으로 만들어지는 매개 역할을 해주는 변수
	// (=매개 변수 = parameter)
	public void create(회원Bag bag) {
		// 변수 선언의 위치가 생존 범위를 결정한다.
		// 매개 변수 (parameter) 는 지역 변수이다.
		// 지역 변수는 자동 초기화가 되어 있지 않다.
		System.out.println("전달된 id는 " + bag.getId());
		System.out.println("전달된 pw는 " + bag.getPw());
		System.out.println("전달된 name는 " + bag.getName());
		System.out.println("전달된 tel은 " + bag.getTel());

		try {
			// 1. connector 연결
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. db 연결
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
			// 3. sql문 작성
			String sql = "insert into member values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getPw());
			ps.setString(3, bag.getName());
			ps.setString(4, bag.getTel());
			// 4. sql문 전송
			int result = ps.executeUpdate();
			System.out.println(result);
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
		}

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
