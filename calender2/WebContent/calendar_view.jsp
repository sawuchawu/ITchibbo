<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main.jsp</title>
</head>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
  &nbsp; &nbsp; &nbsp;
<input type="image" width="150" height="25"src="image/flash_name.gif"><br><br><br>
<center>
<table>
	<tr>
		<td width="240">
			<center>
				<table>
					<tr>
						<td width="200"><c:import url="calendar_mini.jsp" /></td>
					</tr>
				</table>
			</center>
		</td>
		<td rowspan="3">
			<c:import url="calendar_main.jsp" />
		</td>
	</tr>
	<tr>
		<td width="240">
			<center>
				<table>
					<tr>
						<td width="200"><%@include file="calendar_eventlist.jsp" %></td>
					</tr>
				</table>
			</center>
		</td>
	</tr>
	<tr>
		<td width="240">
			<center>
				<table>
					<tr>
						<td width="200"><c:import url="calendar_requestlist.jsp"></c:import></td>
					</tr>
				</table>
			</center>
		</td>
	</tr>
</table>
<br><br>
<hr>
<H6>
ȸ�������� �����Ϸ��� <a href="calendar_update_user.jsp">����</a>�� Ŭ�����ּ���.
<br>
Ż���Ϸ��� <a href="calendar_delete_user.jsp">����</a>�� Ŭ�����ּ���.
<p>
2012�� ����� ���� �ý��� �� ���� [Mid Term Project]
<br>
�����б� ��ǻ��������Ű������� [20072454 �̰��, 20082473 ��ȫ��]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>