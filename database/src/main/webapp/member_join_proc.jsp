<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	out.write(hobby.length);
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
		String id = "hr";
		String pass = "hr";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";	
		
		try {
			// 데이터 베이스 선언
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, id, pass);
			// 쿼리 준비 실행
			String query = "INSERT INTO member VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement statement = con.prepareStatement(query);
			
			statement.setString(1, mbean.getId());
			statement.setString(2, mbean.getEmail());
			statement.setString(3, mbean.getPass1());
			statement.setString(4, mbean.getPass2());
			statement.setString(5, mbean.getTel());
			statement.setString(6, mbean.getHobby());
			statement.setString(7, mbean.getJob());
			statement.setString(8, mbean.getAge());
			statement.setString(9, mbean.getInfo());
			statement.executeUpdate();
			
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	오라클 접속 완료 

</body>
</html>