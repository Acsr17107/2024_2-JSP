<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
<h2> 취미와 가보고 싶은 국가 결과</h2>
<%
String[] h = request.getParameterValues("hobby");
String country = request.getParameter("country");
out.println("나라 : "+country+"<br>");
if (country != null) {
		for ( String eachdata : h)
			out.println(eachdata + " ");
}
out.println("<br>");
  %>
</body>
</html>