<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	    // 스크립트릿
	    String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    String id2 = "root";
	    String pw2 = "pass";
	    String result = "로그인 실패";
	    if (id.equals(id2) && pw.equals(pw2)) {
	    	result = "로그인 성공";
	    	// 로그인 성공시 id를 세션으로 잡아 주어야 한다.
	    	// 세션도 내장된 객체로 제공된다.
	    	session.setAttribute("id", id);
	    } else {
	    	out.print("재로그인해주세요.<br>");
	    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 결과: <%=result%><br>
<!-- 세션이 잡혀있는지 아닌지 체크하고자 하는 경우 세션이 null인지 체크하면 된다. -->
<% if (session.getAttribute("id") != null) { %>
	세션 id값은: <%=session.getAttribute("id") %><br>
	<a href="logout.jsp">로그아웃 처리</a>
<%} %>
</body>
</html>