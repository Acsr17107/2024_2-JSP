<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.Enumeration" %>
	<h1>技记 抗力</h1>
	<hr><h2>技记 父甸扁</h2>
	<%
		session.setAttribute("id", "javajsp");
		session.setAttribute("pwd", "jdktomcat");
	%>
	<hr><h2>技记 炼雀</h2>
	技记 ID : <%= session.getId() %><br>
	技记 蜡瘤矫埃 <% session.setMaxInactiveInterval(5);%>
	技记 昏力<% session.removeAttribute("id");%>
	
	<%
		Enumeration<String> e = session.getAttributeNames();
		while ( e.hasMoreElements() ) {
			String name = e.nextElement();
			String value = (String) session.getAttribute(name);
			out.println("技记 name : " + name + ", ");
			out.println("技记 value : " + value + "<br>");
		}
	%>
	<br>技记 Invalidate : <% session.invalidate(); %>
</body>
</html>