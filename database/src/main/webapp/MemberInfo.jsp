<%@page import="model.Member"%>
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
	String id = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	Member member = dao.oneSelecetMember(id);
%>

	<h2>회원 정보 보기</h2>
	<table border="1">
		<tr height="50">
		<td align="center">아이디</td>
		<td align="center"><%=member.getId() %>
		</td>
		</tr>
		<tr height="50">
		<td align="center">이메일</td>
		<td align="center"><%=member.getEmail() %>
		</td>
		</tr>
		<tr height="50">
		<td align="center">TEL</td>
		<td align="center"><%=member.getTel() %>
		</td>
		</tr>
		<tr height="50">
		<td align="center">취미</td>
		<td align="center"><%=member.getHobby() %>
		</td>
		</tr>
		<tr height="50">
		<td align="center">직업</td>
		<td align="center"><%=member.getJob() %>
		</td>
		</tr>
		<tr height="50">
		<td align="center">나이</td>
		<td align="center"><%=member.getAge() %>
		</td>
		</tr>
		<tr height="50">
		<td align="center">하고싶은말</td>
		<td align="center"><%=member.getInfo() %>
		</td>
		</tr>
		<tr>
		<td colspan="2">
			<button onclick="location.href='MemberUpdateFrom.jsp?id=<%=member.getId()%>'">수정</button>
			<button onclick="location.href='MemberDeleteFrom.jsp?id=<%=member.getId()%>'">삭제</button>
			<button onclick="location.href='memberList.jsp'">목록보기</button>
			<button onclick="location.href='member_join.jsp'">회원가입</button>
		</td>	
		</tr>
	</table>

</body>
</html>