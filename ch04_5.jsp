<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
int a = 11;
int b = 5;

// 관계연산자 ==, !=, >, >=, <, <=
out.println((a == b)+ "<BR>");
out.println((a < b)+ "<BR>");
out.println((a != b)+ "<BR>");

//논리연산자 &&, ||, !
out.println((a > 1 && a < 5)+ "<BR>");
out.println((a > 1 || a < 5)+ "<BR>");
out.println((! (a > 1))+ "<BR>");




%>
</body>
</html>