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
String ID = request.getParameter("strID");
String pass = request.getParameter ("strPwd");

out.println("아이디 : " + ID + "<BR>");
out.println("비밀번호 : " + pass);
%>
</body>
</html>