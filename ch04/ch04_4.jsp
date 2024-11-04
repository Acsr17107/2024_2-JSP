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
int a = 10;
int b = 3;

//산술연산자 +, -, *, /
out.println(a+"+"+b+"="+(a + b)+ "<BR>");
out.println(a+"-"+b+"="+(a - b)+ "<BR>");
out.println(a+"*"+b+"="+(a * b)+ "<BR>");
out.println(a+"/"+b+"="+(a / (double)b)+ "<BR>");
%>
</body>
</html>