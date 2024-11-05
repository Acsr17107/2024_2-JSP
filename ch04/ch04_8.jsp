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
// 대문자 Y, 소문자 y일 경우 yes로 출력
// 대문자 N, 소문자 n일 경우 NO로 출력
//그 외 문자는 에러로 출력

char ch3='n' ;

if (ch3=='Y' || ch3 =='y')
    out.println("yes");
else if(ch3=='N' || ch3=='n')
    out.println("no");
else
    out.println("error");
%>

</body>
</html>