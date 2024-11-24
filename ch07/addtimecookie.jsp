<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 시각을 쿠로 저장</h1>
	<%
		Cookie cookie2 = new Cookie("user2", "kang2");
		cookie2.setMaxAge(2*60); //초 단위 : 2분
		response.addCookie(cookie2);
	%>
<hr><a href=getcookie.jsp >쿠키 조회</a>
</body>
</html>