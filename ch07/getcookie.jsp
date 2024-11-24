<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 조회 예제</h1>
	<hr>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies == null) {
			out.println("쿠키가 없습니다.");
		} else {
			for (Cookie c : cookies) {
				out.println("쿠키 이름(name) : " + c.getName() + ", ");
				out.println("쿠키 값(value) : " + c.getValue() + "<br>");
			}
			/*
			for (int i=0; i<cookies.length; ++i) {
				out.println("쿠키 이름(name) : " + cookies[i].getName() + ", ");
				out.println("쿠키 값(value) : " + cookies[i].getValue() + "<br>");
			}
			*/
		
		}
	%>
</body>
</html>