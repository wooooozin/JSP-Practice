<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1부터 10까지 출력하기</h2>
	<!-- Scriptlet Example -->
	<%
		// 1부터 10까지 화면에 출력하기
		for (int i = 1; i <= 10; i++) {
	%>
	<!-- Expression Example -->
	<%= i %><br>
	<%			
		}
	%>
</body>
</html>