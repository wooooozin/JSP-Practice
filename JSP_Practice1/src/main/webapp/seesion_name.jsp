<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션네임 페이지 입니다.</h2>
	<%
		String name1 = request.getParameter("name");
		String name2 = (String) session.getAttribute("name2");
	%>
	<%= name1 %> 님 반갑습니다.
	<%= name2 %> 님 반갑습니다.
	
</body>
</html>