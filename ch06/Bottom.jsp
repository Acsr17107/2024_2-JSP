<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*"%>
<%
   Date date = new Date();
%>
<hr>
include 지시자의 Bottom 부분입니다.<p>
<%=date.toLocaleString()%>
</body>
</html>