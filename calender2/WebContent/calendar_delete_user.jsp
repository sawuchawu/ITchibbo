<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="guestbook_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- ȸ�� Ż�� ������ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� Ż��</title>
</head>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br><br><br><br>
<CENTER>
	<font face="HY�ٴ�L" color="#323232">
	<table>
	<tr>
		<td>Ż���Ͻ÷��� ���̵�� ��й�ȣ�� �Է����ּ���<br><br></td>
	<tr>
	<td align="CENTER"><hr><br><br>
		<form name=form1 method=post action="calendar_control.jsp">
		<input type=hidden name="action" value="delete_user">
			<table>
				<tr>
					<td align="left" width="100">���̵�</td>
					<td align="left" width="100"><input type="text" size=20 name="delete_id"></td>
					<td align="right" rowspan="2" width="100"><input type="image" src="image\enter.jpg"></td>
				<tr>
					<td align="left" width="100">��й�ȣ</td>
					<td align="left" width="100"><input type="password" size=20 name="delete_passwd"></td>
				</tr>
			</table>
		</form>
		<br><hr><br>
	</td>
	</tr>
	</table>
		<br><br><br><HR>
		<form name=goback method="get" action="calendar_view.jsp">
			<input type="image" src="image\back.jpg">
			</form>
		</font>
<H6>���� ���� : <%=new java.util.Date() %>
2012�� ����� ���� �ý��� �� ���� [Mid Term Project]
<br>
�����б� ��ǻ��������Ű������� [20072454 �̰��, 20072490 õ����, 20082473 ��ȫ��]
<br>
Ver.2012.06.25 
</H6>
</center>
</body>
</html>