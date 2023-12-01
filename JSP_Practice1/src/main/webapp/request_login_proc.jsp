<%@page import="java.net.http.HttpRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지에서 넘어온 페이지</title>
</head>
<body>

<!-- 로그인 페이지에서 넘오온 아이디와 패스워드를 읽어야 함 -->

<%
	String id = request.getParameter("id"); // 사용자의 id값을 읽어서 변수 id에 저장
	String password = request.getParameter("pass"); // 사용자의 pass를 읽어서 변수 password에 저장
%>

<h2>
당신의 id는 <%= id %> 이고 패스워드는 <%= password %> 입니다.
</h2>

<a href="request_forward.jsp">다음 페이지</a>

</body>
</html>