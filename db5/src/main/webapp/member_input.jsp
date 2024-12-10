<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<SCRIPT LANGUAGE="JavaScript">
function Check() 
{
if (Member_Input.id.value.length < 1){
	alert("아이디를 입력하세요.");
	Member_Input.id.focus();
	return false;
	}

if (Member_Input.pass.value.length < 1){
	alert("비밀번호를 입력하세요.");
	Member_Input.pass.focus();
	return false;
	}

if (Member_Input.name.value.length < 1){
	alert("이름을 입력하세요.");
	Member_Input.name.focus();
	return false;
	}


Member_Input.submit();
}

function Check_focus()
{
var strfocus1 = Member_Input.juminnum1.value.length;
if(strfocus1 == 6)
Member_Input.juminnum2.focus(); 
}	  

function ZipCode() 
{
browsing_window = window.open("zipcode.jsp", "_zipinput","height=300,width=600, menubar=no,directories=no,resizable=no,status=no,scrollbars=yes");
browsing_window.focus();
}
function Check_id() 
{
browsing_window = window.open("checkid.jsp?id="+Member_Input.id.value, "_idcheck","height=200,width=300, menubar=no,directories=no,resizable=no,status=no,scrollbars=yes");
browsing_window.focus();
}

</SCRIPT>     


</head>
<body>

<center><font size='3'><b> 회원 가입 </b></font>  
<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<FORM Name='Member_Input' Method='post' Action='member_output.jsp'>

<TABLE  border='2' cellSpacing=0 cellPadding=5 align=center>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>아 이 디</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxLength='10' size='10' name='id'>
		<input type='button' OnClick='Check_id()' value='ID 중복검사'>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>비 밀 번 호</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='password' maxLength='10' size='10' name='pass'>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>이 름</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxLength='10' size='10' name='name'>
	</TD>
</TR>

<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>전 화 번 호</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxlength='20' size='20' name='phone'>
	</TD>
</TR>
<TR>
	<TD bgcolor='cccccc' align='center'>
		<font size='2'>E - M a i l</font>
	</TD>
	<TD bgcolor='cccccc'>
		<input type='text' maxlength='50' size='50' name='email'>
	</TD>
</TR>
</TABLE>

<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE>

<TABLE>
<TR>
	<TD colspan='2' align='center'>
		<input type='button' OnClick='Check()' value='회원가입'>
	</TD>
</TR>
</TABLE>

</FORM>


</body>
</html>