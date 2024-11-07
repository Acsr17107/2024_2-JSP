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
//3단 출력
int gu=3;
int i =1;   //초기치

do{
	out.print(gu+"*"+i+"="+(gu*i)+"<br>");//반복문장
	i=i+1;  //증가치
}while(i <= 9);  //조건
%>
</body>
</html>