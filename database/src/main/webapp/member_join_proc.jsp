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
		request.setCharacterEncoding("UTF-8");
	// 취미는 따로 읽어 다시 빈클래스에 저장
	String[] hobby = request.getParameterValues("hobby");
	// 배열에 있는 내용을 하나의 String으로 변환
	StringBuilder sb = new StringBuilder();
	for (int i = 0; i < hobby.length; i++) {
		sb.append(hobby[i]);
		sb.append(" ");
	}
	String texHobby = sb.toString().trim();
	%>
	
	<!-- useBean 이용해 한꺼번에 데이터 받기 -->
	<jsp:useBean id="mbean" class="model.Member">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>
	
	<%
		mbean.setHobby(texHobby);
	%>
	
	<h2> 당신의 아이디는 = <%= mbean.getId() %></h2>
	<h2> 당신의 취미는 = <%= texHobby %></h2>

</body>
</html>