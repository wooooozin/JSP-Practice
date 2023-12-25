<%@page import="model.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Vector"%>
<%@page import="dao.MemberDAO"%>
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
	MemberDAO dao = new MemberDAO();
	List<Member> list = dao.allSelectMember();
%>

</body>
</html>