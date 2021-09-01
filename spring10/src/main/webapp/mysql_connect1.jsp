<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. driver설정 성공");
	String url = "jdbc:mysql://database-1.cfmi6xmexjxq.us-east-2.rds.amazonaws.com/shop";
	String user = "root";
	String password = "*mega709";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. db연결 성공");
	// String sql = "insert into member values ('rds', 'rds', 'rds', 'rds')";
	// PreparedStatement ps = con.prepareStatement(sql);
	// 	out.print("3. sql객체 설정 성공");
	// ps.executeUpdate();
	// out.print("4. sql 전송 성공");
	%>
</body>
</html>