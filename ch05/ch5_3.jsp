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
String name = request.getParameter("name");
String tym=request.getParameter("studentNum");
String mw = request.getParameter("mw");
String country = request.getParameter("country");

if (mw.equalsIgnoreCase("man")){
	mw = "남자";
} else {
	mw = "여자";
}
%>
<h2> 학생 정보 입력 결과</h2>
성명 : <%= name%><br>
학번 : <%= tym%><br>
성별 : <%= mw%><br>
</body>
</html>