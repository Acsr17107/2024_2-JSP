<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!     public int abs(int a) {  //메소드 구현 
            if (a < 0) return -a; 
            else return a;        

        }

%>
     -3의 절댓값은 <%= abs(-3) %>이다.
</body>
</html>