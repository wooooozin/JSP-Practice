<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 구구단 화면에 출력해보기</h2>
	<%
		for (int i = 2; i < 10; i++) {
			for (int j = 1; j < 10; j++) {
				
	%>
    	<%= String.format("%d X %d = %d", i, j, i * j) %> &nbsp; &nbsp; 
    	<%= i %> X <%= j %> = <%= i * j %> &nbsp; &nbsp;
	<%
			}
	%>
		<br>
	<%
		}
	%>
</body>
</html>