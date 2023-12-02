<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
	body {
		text-align: center;
	}
</style>
</head>
<body>

	<h2> 로그인 페이지</h2>
	
	<form action="response_login_proc.jsp" method="post">
	<table width="400" border="1">
	<tr height="60">
		<td align="center" width="150">아이디</td>
		<td align="center" width="250">
		<input type="text" name="id">
		</td>	
	</tr>
	<tr height="60">
		<td align="center" width="150">비밀번호</td>
		<td align="center" width="250">
		<input type="password" name="pass">
		</td>	
	</tr>
	<tr height="60">
		<td colspan="2" align="center">
		<input type="submit" value="전송">
		</td>	
	</tr>
	</table>
	</form>

</body>
</html>