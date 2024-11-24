<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% int i = 12; %>
<% int n = 365; %>
1 년은 <%=i %>달 입니다.
<jsp:include page="includesub.jsp" />
1 년은 <%=n %>일 입니다.
</body>
</html>