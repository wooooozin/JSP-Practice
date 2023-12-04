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
		margin: auto;
		border: 1px solid black;
		width: 800px;
	}
	
</style>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<table>
	<!--  top  -->
	<tr height="150">
		<td colspan="2">
		<jsp:include page="top.jsp">
		<jsp:param value="잔망루피" name="id"/>
		</jsp:include> 
		</td>
	</tr>
	
	<!-- left  -->
	<tr height="500">
		<td align="center" width="200">
		<jsp:include page="left.jsp"/>
		</td>	
	<!-- center -->
		<td align="center" width="400">
		<jsp:include page="center.jsp"/>
		</td>
	</tr>
	
	<!-- bottom -->
	
	<tr height="100">
		<td align="center" colspan="2">
		<jsp:include page="bottom.jsp"/>
		</td>
	</tr>

	
	</table>

</body>
</html>