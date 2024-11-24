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
String name = "include";
//include 지시자는 file속성의 파일의 소스가 포함되어 현재
//소스에서 수행되어짐
%>
<%@ include file="Top.jsp"%>
include 지시자의 Body 부분입니다.
<%@ include file="Bottom.jsp"%>
</body>
</html>