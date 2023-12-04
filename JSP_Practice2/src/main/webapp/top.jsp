<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top section</title>
<style>
	body {
		text-align: "center";
	}
	
	table {
		width: 800px;
	}
</style>
</head>
<body>
	<!-- top -->
	<table>
		<thead align="right"><%= request.getParameter("id") %></thead>
		<tr height="100">
		<!-- logo image -->
		<td colspan="2" align="center">
		<img alt="logo" src="image/logo.png" width="80" height="100">
		</td>
		<td colspan="4" align="center"> 
		<font size="10">루피캠핑</font> 
		</td>
		</tr> 
		<tr height="50">
			<td width="130" align="center">텐트</td>
			<td width="130" align="center">의자</td>
			<td width="130" align="center">식기류</td>
			<td width="130" align="center">침낭</td>
			<td width="130" align="center">테이블</td>
			<td width="130" align="center">불멍</td>		
		</tr>
	</table>

</body>
</html>