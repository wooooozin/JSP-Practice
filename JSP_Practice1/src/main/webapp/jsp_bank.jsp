<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
// 선언문 - 잘 안씁니다. 별도의 객체를 생성해 사용
	public void increment() {
	
	}	
%>

<%! // 멤버 변수 
	int b = 10;
%>

<% // 지역 변수
	int a = 100; 
%>

<%= b %>
<%= a %>
	
</body>
</html>