<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@page import="myjsp.userPack.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
function checking(){		
	if(document.lost_pass2_form.forgeta.value=="")	alert("�亯�� �Է��ϼ���");
	else document.lost_pass2_form.submit();
}
</script>
<%
	User lostUser = (User)session.getAttribute("lostUser"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��й�ȣ ã��2</title>
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
		<form name=lost_pass2_form method=post action="calendar_control.jsp">
			<input type="hidden" name="action" value="lost_passwd2">
			<table>
				<tr>
					<td align="left" width="40">����</td>
					<td align="left"><%=lostUser.getForgetq()%></td>
					<td align="right" rowspan="2" width="100"><img src="image\find.jpg" onclick="checking()" style="cursor: pointer" ></td>
				<tr>
					<td align="left" width="40">�亯</td>
					<td align="left"><input type="text" size=25 name="forgeta"></td>
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