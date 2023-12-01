<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN 정보 확인하기</title>
<style>
	body {
		text-align: center;
	}
	table {
		margin: 0 auto;
		text-aling: center;
		width: 600;
		border: 1;
	}
</style>
</head>
<body>

<h2>회원 정보 보기</h2>
<%
// post방식으로 데이터가 넘어올 떄 한글이 깨질 수 있으므로
	request.setCharacterEncoding("UTF-8");
	// 각종 사용자로부터 넘어온 데이터를 저장
	
	String id = request.getParameter("id");
	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	// 배열 타입으로 리턴
	String[] hobby = request.getParameterValues("hobby");
	String job = request.getParameter("job");
	String age = request.getParameter("age");
	String info = request.getParameter("info");
	
	if (!pass1.equals(pass2)) {
%>
	<script>
		alert("비밀번호가 일치하지 않습니다."); // 경고창
		history.go(-1); // 이전 페이지로 이동
	</script>
<%
	}	
%>

<table>
	<tr height="50">
		<td width="150"> 아이디 </td>
		<td width="350"> <%= id %>
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 패스워드 </td>
		<td width="350"> <%= pass1 %>
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 이메일 </td>
		<td width="350"> <%= email %>
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 전화번호 </td>
		<td width="350"> <%= tel %>
		</td>
	</tr>
		<tr height="50">
		<td width="150"> 관심분야 </td>
		<td width="350"> 
		<%
		for (String s : hobby) {
			out.write(s + " ");
		}
		%>
		</td>
	</tr>
		<tr height="50">
		<td width="150"> 직업 </td>
		<td width="350"> <%= job %>
		</td>
	</tr>
		<tr height="50">
		<td width="150"> 나이대 </td>
		<td width="350"> <%= age %>
		</td>
	</tr>
		</tr>
		<tr height="50">
		<td width="150"> 하고싶은 말 </td>
		<td width="350"> <%= info %>
		</td>
	</tr>
</table>

	

</body>
</html>