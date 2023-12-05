<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		text-align: center;
	}
	table {
		margin: 0 auto;
		text-aling: center;
		width: 600;
	}
</style>
</head>
<body>

	<h2>회원가입</h2>
	<form action="member_join_proc.jsp" method="post">
	<table border="1">
	<tr height="50">
		<td width="150"> 아이디 </td>
		<td width="350"> <input type="text" name="id" size="50" placeholder="아이디를 입력하세요">
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 패스워드 </td>
		<td width="350"> <input type="password" name="password" size="50" placeholder="비밀번호 입력">
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 이메일 </td>
		<td width="350"> <input type="email" name="email" size="50">
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 전화번호 </td>
		<td width="350"> <input type="tel" name="tel" size="50">
		</td>
		</tr>
	<tr height="50">
		<td width="150"> 주소 </td>
		<td width="350"> 
		<input type="text" name="address" size="50">
		</td>
	</tr>
	<tr height="50">
		<td colspan="2">
		<input type="submit" value="회원가입">
		<input type="reset" value="취소"> 
		</td>
	</tr>
	</table>
	</form>
	
	
</body>
</html>