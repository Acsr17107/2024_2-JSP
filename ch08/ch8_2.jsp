<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% ch8.ScoreBean score = new ch8.ScoreBean(); %>
<% score.setName("김성민"); %>
<% score.setPoint(85); %>
이름 : <% out.println(score.getName()); %><br>
성적 : <% out.println(score.getPoint()); %>
학점 : <% out.println(score.getGrade()); %>
</body>
</html>