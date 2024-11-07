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
       // 1 ~ 5까지 짝수의 합을 구하기
        int sum = 0;
        
        for(int i = 2; i <= 5; i=i+2){
        	sum += i;  //sum=sum+i;
        }
    %>
    <%=sum %>
</body>
</html>