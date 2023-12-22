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
		<td width="350"> <input type="password" name="pass1" size="50" placeholder="비밀번호 입력">
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 패스워드 확인 </td>
		<td width="350"> <input type="password" name="pass2" size="50" placeholder="비밀번호 확인">
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
		<td width="150"> 당신의 관심분야 </td>
		<td width="350"> 
		<input type="checkbox" name="hobby" value="캠핑" checked> 캠핑 &nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="등산"> 등산 &nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="영화"> 영화 &nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="독서"> 독서 &nbsp;&nbsp; 
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 당신의 직업 </td>
		<td width="350">
		<select name="job">
		<option value="교사">교사</option>
		<option value="변호사">변호사</option>
		<option value="검사">검사</option>
		<option value="의사">의사</option>
		</select>
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 당신의 연령대 </td>
		<td width="350">
		<input type="radio" name="age" value="10"> 10대 &nbsp;&nbsp;
		<input type="radio" name="age" value="20"> 20대 &nbsp;&nbsp;
		<input type="radio" name="age" value="30"> 30대 &nbsp;&nbsp;
		<input type="radio" name="age" value="40"> 40대 &nbsp;&nbsp;	
		<input type="radio" name="age" value="50"> 50대 이상 &nbsp;&nbsp;
		</td>
	</tr>
	<tr height="50">
		<td width="150"> 하고 싶은 말 </td>
		<td width="350"> 
		<textarea rows="5" cols="50" name="info"></textarea>
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