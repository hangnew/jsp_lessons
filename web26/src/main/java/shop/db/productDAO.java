package shop.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import shop.dto.productDTO;

public class productDAO {

	public productDTO read(productDTO bag) {
		ResultSet rs = null;
		productDTO bag2 = new productDTO();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
			String sql = "select * from product where id = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, bag.getId());
			rs = ps.executeQuery();
			if (rs.next()) {
				bag2.setId(rs.getString("id"));
				bag2.setName(rs.getString("name"));
				bag2.setContent(rs.getString("content"));
				bag2.setPrice(rs.getString("price"));
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
	} //

	public ArrayList<productDTO> read() {
		ResultSet rs = null;
		ArrayList<productDTO> list = new ArrayList<productDTO>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/shop";
			String username = "root";
			String pw = "cnzk0531";
			Connection con = DriverManager.getConnection(url, username, pw);
			String sql = "select * from product";
			PreparedStatement ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				productDTO bag = new productDTO();
				bag.setId(rs.getString("id"));
				bag.setName(rs.getString("name"));
				bag.setContent(rs.getString("content"));
				bag.setPrice(rs.getString("price"));
				list.add(bag);
			}
		} catch (ClassNotFoundException e) {
			System.out.println("1번 에러>> 드라이버 없음");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("2-4번 에러>> DB 관련된 처리 에러발생");
			e.printStackTrace();
		}
		return list;
	}
}












