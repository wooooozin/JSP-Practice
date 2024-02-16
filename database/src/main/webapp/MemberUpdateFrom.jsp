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
	<form action="MemberUpdateProc.jsp" method="post">	
	<table border="1">
		<tr height="50">
		<td align="center">아이디</td>
		<td align="center"><%=member.getId() %>
		</td>
		</tr>
		<tr height="50">
		<td align="center">이메일</td>
		<td align="center"><input type="email" name="email" value="<%=member.getEmail() %>" />
		</td>
		</tr>
		<tr height="50">
		<td align="center">TEL</td>
		<td align="center"><input type="tel" name="tel" value="<%=member.getTel() %>" />
		</td>
		</tr>
		<tr height="50">
		<td align="center">취미</td>
		<td align="center"><input type="text" name="hobby" value="<%=member.getHobby() %>" />
		</td>
		</tr>
		<tr height="50">
		<td align="center">비밀번호</td>
		<td align="center"><input type="password" name="pass1" />
		</td>
		</tr>
		<tr>
		<td colspan="2">
		<input type="hidden" name="id" value="<%= member.getId() %>">
        <input type="submit" value="수정 확인" /> &nbsp;&nbsp; 	
		</td>	
		</tr>
	</table>
	</form>	
			<button onclick="location.href='memberList.jsp'">취소</button>		
	
</body>
</html>