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
request.setCharacterEncoding("euc-kr");   //post로 전달한 경우 한글처리

String name = request.getParameter("name");
String addr = request.getParameter("addr");
String tel = request.getParameter("tel");
%>
<h2> 학생 정보 입력 결과</h2>

성명 : <%= name%><br>
주소 : <%= addr%><br>
연락처 : <%= tel%><br>
</body>
</html>