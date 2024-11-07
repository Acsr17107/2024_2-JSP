<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page info="page 객체 예제" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String strInfo= this.getServletInfo();
out.println("Info 정보: " + strInfo);
%>
</body>
</html>