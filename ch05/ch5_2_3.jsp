<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>기술정보 이력서</h2>
	<% request.setCharacterEncoding("euc-kr"); %>
	이름 : <%= request.getParameter("name") %> <br>
	주민번호 : <%= request.getParameter("jnum1") %> -
			  <%= request.getParameter("jnum2") %> <br>
	학력 : <%= request.getParameter("graduate") %><br>
	전공 : <%= request.getParameter("major") %><br>
	경험 플랫폼 :
	<%
		for ( String platform : request.getParameterValues("platform") ) {
			out.println("[" + platform + "] ");
		}
	%>
</body>
</html>