<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% int year = 365; %>

<% out.println("1년은 약 몇 주일까요? <p>"); %>
<%= year / 7 %>
<%= " 주 입니다." %>
</body>
</html>