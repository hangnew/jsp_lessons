package shop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import shop.dto.회원Bag;

public class 회원DAO2 {
	// 메서드(변수들)
	// 메서드 호출할 때 값을 전달할 목적으로 만들어지는 매개 역할을 해주는 변수
	// (=매개 변수 = parameter)
	public int create(회원Bag bag) {
		// 변수 선언의 위치가 생존 범위를 결정한다.
		// 매개 변수 (parameter) 는 지역 변수이다.
		// 지역 변수는 자동 초기화가 되어 있지 않다.
		System.out.println("전달된 id는 " + bag.getId());
		System.out.println("전달된 pw는 " + bag.getPw());
		System.out.println("전달된 name는 " + bag.getName());
		System.out.println("전달된 tel은 " + bag.getTel());
		int result = 0;
		try {
			// 1. connector 연결
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. db 연결
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
			// 3. sql문 작성
			String sql = "insert into member3 values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getPw());
			ps.setString(3, bag.getName());
			ps.setString(4, bag.getTel());
			// 4. sql문 전송
			result = ps.executeUpdate();
			System.out.println(result);
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
		}
		return result;

	}

//	다형성 (오버로딩)
//	하나의 메서드 명이 다수 존재할 수 있다. 입력값의 형태가 다양해야 한다.
	public 회원Bag read(회원Bag bag) {
		ResultSet rs = null;
		회원Bag bag2 = new 회원Bag();
		try {
			// 1. connector 연결
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. db 연결
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
			// 3. sql문 작성
			String sql = "select * from member3 where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			// 4. sql문 전송
			rs = ps.executeQuery();
//			System.out.println("검색 결과는>> " + rs.next());
			if (rs.next()) {
				System.out.println("검색 결과가 있음");
				String id2 = rs.getString(1);
				String pw2 = rs.getString(2);
				String name2 = rs.getString(3);
				String tel2 = rs.getString(4);
				System.out.println(id2 + " " + pw2 + " " + name2 + " " + tel2);
				bag2.setId(id2);
				bag2.setPw(pw2);
				bag2.setName(name2);
				bag2.setTel(tel2);
			} else {
				System.out.println("검색 결과가 없음");
			}
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
			e.printStackTrace();
		}
		return bag2;
	} // end of read

	public void read() {

	}

	public int update(회원Bag bag) {
		int result = 0;
		try {
			// 1. connector 연결
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. db 연결
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
			// 3. sql문 작성
			String sql = "update member3 set tel = ?, name = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getTel());
			ps.setString(2, bag.getName());
			ps.setString(3, bag.getId());
			// 4. sql문 전송
			result = ps.executeUpdate();
			System.out.println(result);
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
		}
		return result;
	}

	public int delete(회원Bag bag) {
		int result = 0;
		try {
			// 1. connector 연결
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. db 연결
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
			// 3. sql문 작성
			String sql = "delete from member3 where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			// 4. sql문 전송
			result = ps.executeUpdate();
			System.out.println(result);
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
		}
		return result;
	}
} // class
