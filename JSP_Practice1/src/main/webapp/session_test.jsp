<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>세션 연습</h2>

<%
	String name = "loopy";
	//세션을 이용하여 데이터를 유지
	session.setAttribute("name2", name);
	// 세션 유지시간
	session.setMaxInactiveInterval(10);
	
%>

<!-- 파라미터로 전달하기 -->
<a href="seesion_name.jsp?name=<%= name %>">세션 네임 파라미터로 전달하여 이동</a>
<a href="seesion_name.jsp?name">세션 네임 세션을 이용하여 페이지로 이동</a>

</body>
</html>