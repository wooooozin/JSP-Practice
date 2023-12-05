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
</style>
</head>
<body>

<h2>회원정보</h2>

<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- request로 넘어온 데이터를 자바빈즈랑 변환시켜주는 useBean -->

<jsp:useBean id="mbean" class="bean.MemberBean">
	<!-- jsp 내용을 자바빈 클래스 (MemberBean의미 데이터를 맵 -->
	<jsp:setProperty name="mbean" property="*" /><!-- 자동으로 모두 매핑, 객체 생성-->
</jsp:useBean>

<div>당신의 아이디는 : <jsp:getProperty property="id" name="mbean" /></div>
<div>당신의 비번 : <jsp:getProperty property="password" name="mbean" /></div>
<div>당신의 이메일 : <jsp:getProperty property="email" name="mbean" /></div>
<div>당신의 전화번호: <%= mbean.getTel() %>
</div>

</body>
</html>