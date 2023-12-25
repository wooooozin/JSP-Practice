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
<style>
	table {
		border: 1px solid black;
		align: center;
	}
	td {
		border: 1px solid black;
	}
</style>
</head>
<body>
<%
	MemberDAO dao = new MemberDAO();
	List<Member> list = dao.allSelectMember();
%>

<table>
	<tr height="50">
	<td align="center">아이디</td>
	<td align="center">이메일</td>
	<td align="center">전화번호호호호호호</td>
	<td align="center">취미</td>
	</tr>
	<%
		for (int i = 0; i < list.size(); i++) {
			Member member = list.get(i);
	%>
	<tr height="50">
	<td align="center">
	<a href="MemberInfo.jsp?id=<%=member.getId()%>">
	<%= member.getId() %>
	</a>
	</td>
	<td align="center"><%= member.getEmail() %></td>
	<td align="center"><%= member.getTel() %></td>
	<td align="center"><%= member.getHobby() %></td>
	</tr>
	<%
		}
	%>
</table>

</body>
</html>