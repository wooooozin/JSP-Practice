<%@page import="dao.MemberDAO"%>
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
	request.setCharacterEncoding("utf-8");

%>

	<jsp:useBean id="mbean" class="model.Member">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>
	
<%
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	// 스트링 타입으로 저장되어 있는 패스워드를 가져온다.
	String pass = mdao.getPass(id);

	if (mbean.getPass1().equals(pass)) {
		
	} else {
	%>
		<script type="text/javascript">
		alert("비밀번호가 일치 하지 않습니다.");
		</script>
	<%	
	}
%>


</body>
</html>