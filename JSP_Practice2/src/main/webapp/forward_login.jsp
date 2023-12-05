<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body {
		text-align: center;
	}
	table {
		width: 400px;s
	}
</style>
</head>
<body>

<form action="response_proc.jsp" method="post">
<table>
<tr height="50">
	<td align="center" width="150">아이디</td>
	<td align="center" width="250"><input type="text" name="id"></td>
</tr>
<tr height="50">
	<td align="center" width="150">아이디</td>
	<td align="center" width="250"><input type="password" name="password"></td>
</tr>
<tr height="50">
	<td align="center" colspan="2"><button type="submit">로그인</button>   <input type="reset" value="취소"></td>
</tr>
</table>
</form>

</body>
</html>