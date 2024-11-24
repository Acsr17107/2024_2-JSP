<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%! int count = 0; %>
<%
	String scount = (String) application.getAttribute("count");
	if (scount != null) {
		count = Integer.parseInt(scount);
	} else {
		count = 0;
	}
	application.setAttribute("count", Integer.toString(++count));
	application.log("현재까지 조회 수 : " + count);
%>
	현재까지 조회 수 : <%=count %>
</body>
</html>