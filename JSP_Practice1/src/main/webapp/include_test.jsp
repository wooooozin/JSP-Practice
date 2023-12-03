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
		width: 600px;
        border: 1px solid black;
		margin: auto;
	}
    
</style>
</head>
<body>

	<table>
		<tr height="150">
			<td width="600">
			<%@ include file="top.jsp" %>
			</td>
		</tr>
		<tr height="400">
			<td width="600" align="center">
			<img src="image/cannon.png" alt="캐논" width="400" height="300">
			</td>
		</tr>
		<tr height="50">
			<td width="600">
			<%@ include file="bottom.jsp" %>
			</td>
		</tr>
	</table>

</body>
</html>