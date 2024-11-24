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
//application객체 생성 : setAttribute()
//application객체 이름의 값삭제 : removeAttribute()
//application객체 반환: getAttribute()
application.setAttribute("Job", "programmer");
application.setAttribute("Taste", "독서");
%>
직 업 : <%=application.getAttribute("Job") %>  <BR>
취 미 : <%=application.getAttribute("Taste") %> <BR>
<%
application.removeAttribute("Job");
%>
직 업 : <%=application.getAttribute("Job") %>  <BR>
취 미 : <%=application.getAttribute("Taste") %> <BR>
</body>
</html>