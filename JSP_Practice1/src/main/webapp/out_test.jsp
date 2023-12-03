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
	String name = "내일할일 어플";
%>

스크립트로 표한히기 <%= name %>

<p>

<%
	out.write(name + "\n");
	out.println(name);
%>

</body>
</html>