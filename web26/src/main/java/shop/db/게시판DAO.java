package shop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import shop.dto.게시판Bag;

public class 게시판DAO {

	Connection con;
	
	// 생성자 constructor
	public 게시판DAO() {
		try {
			// 1. connector 연결
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. db 연결
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			con = DriverManager.getConnection(url, username, pw);
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
		}
	}

	public void create(게시판Bag bag) {
		try {
			// 3. sql문 작성
			String sql = "insert into board values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			ps.setString(2, bag.getTitle());
			ps.setString(3, bag.getContent());
			ps.setString(4, bag.getWriter());
			// 4. sql문 전송
			int result = ps.executeUpdate();
			System.out.println(result);
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
		}
	} // end of create
	
	public 게시판Bag read(게시판Bag bag) {
		ResultSet rs = null;
		게시판Bag bag2 = new 게시판Bag();
		try {
			// 3. sql문 작성
			String sql = "select * from board where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			// 4. sql문 전송
			rs = ps.executeQuery();
//			System.out.println("검색 결과는>> " + rs.next());
			if (rs.next()) {
				System.out.println("검색 결과가 있음");
				String id2 = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				System.out.println(id2 + " " + title + " " + content + " " + writer);
				bag2.setId(id2);
				bag2.setTitle(title);
				bag2.setContent(content);
				bag2.setWriter(writer);
			} else {
				System.out.println("검색 결과가 없음");
			}
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
			e.printStackTrace();
		}
		return bag2;
	} // end of read
	
	public ArrayList<게시판Bag> read() {
		ResultSet rs = null;
		ArrayList<게시판Bag> list = new ArrayList<게시판Bag>();
		try {
			// 3. sql문 작성
			String sql = "select * from board";
			PreparedStatement ps = con.prepareStatement(sql);
			// 4. sql문 전송
			rs = ps.executeQuery();
//			System.out.println("검색 결과는>> " + rs.next());
			while (rs.next()) {
				게시판Bag bag2 = new 게시판Bag();
				System.out.println("검색 결과가 있음");
				String id2 = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				System.out.println(id2 + " " + title + " " + content + " " + writer);
				bag2.setId(id2);
				bag2.setTitle(title);
				bag2.setContent(content);
				bag2.setWriter(writer);
				list.add(bag2);
			}
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<게시판Bag> readall() {
		ResultSet rs = null;
		ArrayList<게시판Bag> list = new ArrayList<게시판Bag>();
		try {
			// 3. sql문 작성
			String sql = "select * from board";
			PreparedStatement ps = con.prepareStatement(sql);
			// 4. sql문 전송
			rs = ps.executeQuery();
//			System.out.println("검색 결과는>> " + rs.next());
			while (rs.next()) {
				System.out.println("검색 결과가 있음");
				게시판Bag bag2 = new 게시판Bag();
//				System.out.println(id2 + " " + title + " " + content + " " + writer);
				bag2.setId(rs.getString("id"));
				bag2.setTitle(rs.getString("title"));
				bag2.setContent(rs.getString("content"));
				bag2.setWriter(rs.getString("writer"));
				list.add(bag2);
			} 
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
			e.printStackTrace();
		}
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		return list;
	} // end of read
	
} // class
