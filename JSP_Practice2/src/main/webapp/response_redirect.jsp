<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	이 페이지는 리스폰스 리다이렉트 넘어오는 페이지 입니다.
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
	%>
	
	<h3><%= id %></h3>
	
	
</body>
</html>