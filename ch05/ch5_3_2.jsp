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
String strSite = request.getParameter("download");

switch(Integer.parseInt(strSite))
{
	case 1: response.sendRedirect("http://www.daum.net");	break;
	case 2: response.sendRedirect("http://www.naver.com");	break;
	case 3: response.sendRedirect("http://www.google.com");	break;
	default:response.sendRedirect("http://www.yahoo.com");	break;
}

%>
</body>
</html>