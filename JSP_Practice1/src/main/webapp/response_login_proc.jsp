<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스폰스</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		// 임의적으로 id pass를 설정
		String dbid = "aaaa";
		String dbpass = "1234";
		
		// 사용자로부터 받은 데이터 
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		if (dbid.equals(id) && dbpass.equals(pass)) {
			// 아이디와 패스워드가 일치하는 경우 메인 페이지를 보여준다.
			response.sendRedirect("response_main.jsp?id=" + id);
		} else {
	%>
	<script>
		alert("입력한 정보가 올바르지 않습니다.");
		history.go(-1);
	
	</script>
	<%
		}
	%>
</body>
</html>