<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2> 요청 정보</h2>
요청 방식 : <%= request.getMethod()%><p>
요청 URL : <%= request.getRequestURL()%><p>
요청 URI : <%= request.getRequestURI()%><p>
클라이언트 주소 : <%= request.getRemoteAddr()%><p>
클라이언트 호스트 : <%= request.getRemoteHost()%><p>
프로토콜 방식 : <%= request.getProtocol()%><p>
서버 이름 : <%= request.getServerName()%><p>
서버 포트 번호 : <%= request.getServerPort()%><p>

</body>
</html>