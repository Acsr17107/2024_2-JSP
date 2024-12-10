<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center><font size='3'><b> 회원 인증 </b></font>   

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>


<TABLE cellSpacing='0' cellPadding='30' align='center' border='0' >
<%@ page import = "java.sql.*, java.util.*" %>	
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String sessionID = "yes";

try{

if (id == "" || pass == "") {
%>
<TR>
	<TD align='center'>
	<font size=2>ID와 비밀번호를 입력하세요.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>
<%
} else {

	String driverName = "com.mysql.jdbc.Driver";
	String dbURL = "jdbc:mysql://localhost:3306/test";

	Class.forName(driverName);
	Connection conn = DriverManager.getConnection(dbURL,"root","dongyang");

	Statement stmt = conn.createStatement();

	String strSQL = "SELECT * FROM tbllogin2 where id='" + id + "'";
	ResultSet rs = stmt.executeQuery(strSQL);
	
	rs.next();
	
	String logid = rs.getString("id");
	String logpass = rs.getString("pass");

	if (!id.equals(logid)){
%>
<TR>
	<TD align="center">
	<font size='2'>회원 ID가 아닙니다.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>
<%
	} else { 
		if (!pass.equals(logpass)){
%>

<TR>
	<TD align='center'>
	<font size=2>비밀번호가 일치하지 않습니다.</font>
	</TD>
</TR>
<TR>
	<TD align='center'>
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>

<%
		} else {
			session.setAttribute("user",sessionID);
			response.sendRedirect("member_page.jsp");
		}
	}	
}

} catch(Exception e){
%>
<TR>
	<TD align="center">
	<font size='2'>회원 ID가 아닙니다.</font>
	</TD>
</TR>
<TR>
	<TD align="center">
	<a href="member.jsp">[로그인]</a>
	</TD>
</TR>

<%
}
%>

</TABLE>


</body>
</html>