<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@page import="myjsp.userPack.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
function checking(){		
	if(document.lost_pass3_form.passwd.value=="")	alert("��й�ȣ�� �Է��ϼ���");
	else document.lost_pass3_form.submit();
}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��й�ȣ ã��3</title>
</head>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
	<font face="HY�ٴ�L" color="#323232">
	<br><br><br>
	<table>
	<tr>
		<td align="right" width="350">
		<br><br>
		<img src="image\memberfind.jpg">
		<br><br><br><br><br><br><br><br>
	</td>
	<td width="100"></td>
	<td align="CENTER"><hr><br><br>
		<form name=lost_pass3_form method=post action="calendar_control.jsp">
			<input type="hidden" name="action" value="lost_passwd3">
			<table>
				<tr>
					<td align="left" width="240">���ο� �н����带 �Է����ּ���.</td>
					<td rowspan="2" width="100"><img src="image\create.jpg" onclick="checking()" style="cursor: pointer"></td>
				<tr>
					<td align="center" height="30" width="100" bgcolor="#FAFAB4"><input type="password" size=30 name="passwd"></td>
				</tr>
			</table>
		</form>
		<br>
		
		<form name=form2 method=get action="calendar_login.jsp">
			<input type="image" src="image\back.jpg">
		</form>

		<br><hr><br>
		<table>
			<tr>
				<td><form name=form3 method=get action="calendar_join.jsp">
					<input type="image" src="image\join2.jpg"></form>
				</td>
				<td><form name=form4 method=get action="calendar_lost_id.jsp">
					<input type="image" src="image\lost_id2.jpg"></form>
				</td>
			</tr>
		</table>
	</td>
	</tr>
	</table>
		<br>
	</font><HR><H6>
2012�� ����� ���� �ý��� �� ���� [Mid Term Project]
<br>
�����б� ��ǻ��������Ű������� [20072454 �̰��, 20082473 ��ȫ��]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>