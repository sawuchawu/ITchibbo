<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.commons.logging.LogFactory"%>
<%@page import="org.apache.commons.logging.Log"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Login Page</title>
</head>
<%
	application.log("�׽�Ʈ �α� �޽���...",new IOException());
	Log log = LogFactory.getLog(this.getClass());
	log.warn("JSP ���Ͽ��� ó���� �α�");
%>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp;
<input type="image" width="150" height="25"src="image/flash_name.gif">
<CENTER>
	<font face="HY�ٴ�L" color="#323232">
	<table>
	<tr>
		<td>
		<br><br>
		<img src="image\log_img.jpg">
		<br><br><br><br><br><br><br><br>
	</td>
	<td width="100"></td>
	<td align="CENTER"><hr><br><br>
		<form name=form1 method=post action="calendar_control.jsp">
		<input type=hidden name="action" value="login">
			<table>
				<tr>
					<td align="left" width="100">���̵�</td>
					<td align="left" width="100"><input type="text" size=20 name="login_id"></td>
					<td align="right" rowspan="2" width="100">
						<input type="image" width=60 height=60 src="image\flash_login.gif" onmouseover="this.src='image/gogo.jpg'" onmouseout="this.src='image/login.jpg'">
					</td>
				<tr>
					<td align="left" width="100">��й�ȣ</td>
					<td align="left" width="100"><input type="password" size=20 name="login_passwd"></td>
				</tr>
			</table>
		</form>
		<br><hr><br>
		<table>
			<tr>
				<td><form name=form1 method=post action="calendar_join.jsp">
					<input type="image" src="image\join2.jpg"></form>
				</td>
				<td><form name=form1 method=post action="calendar_lost_id.jsp">
					<input type="image" src="image\lost_id2.jpg"></form>
				</td>
				<td><form name=form1 method=post action="calendar_lost_pass.jsp">
					<input type="image" src="image\lost_pass2.jpg"></form>
				</td>
			</tr>
		</table>
	</td>
	</tr>
	</table>
		<br><br><br><HR></font>
<H6>���� ���� : <%=new java.util.Date() %>
2012�� ����� ���� �ý��� �� ���� [Mid Term Project]
<br>
�����б� ��ǻ��������Ű������� [20072454 �̰��, 20082473 ��ȫ��]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>