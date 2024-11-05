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
char ch4='N';

switch (ch4){
    case 'Y':
    case 'y':     out.println("yes");     break;
    case 'N':
    case 'n':     out.println("no");     break;
    default:
       out.println("error");
}
%>

<%
int n=2;

switch (n){
case 1:     out.println("일");   break;
case 2:     out.println("이");   break;
case 3:     out.println("삼");   break;
case 4:     out.println("사");   break;
default:     out.println("error");
}
%>
</body>
</html>