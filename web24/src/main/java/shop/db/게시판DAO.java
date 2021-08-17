package shop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import shop.dto.게시판Bag;

public class 게시판DAO {

	public void create(게시판Bag bag) {
		try {
			// 1. connector 연결
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 2. db 연결
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
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
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
		}

	}
} // class
