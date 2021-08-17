<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String id2 = "apple";
    	String pw2 = "1234";
    	String result = "로그인 실패";
    	if (id.equals(id2) && pw.equals(pw2)) {
    		result = "로그인 성공";
    		session.setAttribute("id", id);
    	} else {
    		out.print("다시 시도해보세요.");
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
결과: <%=result %><br>
<%if (session.getAttribute("id") != null) { %>
	세션 id : <%=session.getAttribute("id") %><br>
	<a href="news.jsp"><button>뉴스</button></a>
	<a href="mail.jsp"><button>메일</button></a>
	<a href="cafe.jsp"><button>카페</button></a>
<%} %>
</body>
</html>