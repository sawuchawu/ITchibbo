<%@page import="myjsp.userPack.*"%>
<%	request.setCharacterEncoding("euc-kr");
response.setCharacterEncoding("euc-kr");
%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, myjsp.followPack.*"%>

<html>
<head>
<title>����:���ȭ��</title>
</head>
<%

	UserBean ub = new UserBean();
	String name;
	if((String)request.getParameter("name")==null) 
		name="%";
	else 
		name=(String)request.getParameter("name");
		System.out.println(name);
	
	ArrayList<User> alldatas = ub.getDBallList( name );	
%>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br>
<font face="HY�ٴ�L" color="#323232">
<center>
<br><br><br>
<table>
	<tr><td>
	</td><tr>

	
<form name=listform>

	<table>
		<tr>
			<td width="450" align="right">ȸ���˻�<input name="name" type="text" size="10" /></td>
			<td width="10"><input type="submit" value="�˻�" size=5/></td>
		</tr>
	</table>
	<table>
		<tr>
		<td width="100"></td><td>
			<HR>
			<table>
				<tr>
					<td align="center" width="120">ȸ�� ���</td>
				</tr>
				<tr>
					<td align="center" width="80">���̵�</td>
					<td align="center" width="80">�̸�</td>
					<td align="center" width="130">��ȭ��ȣ</td>
					<td align="center" width="250">�ּ�</td>
					<td align="center" width="80">�̸���</td>
				</tr>
			</table>
			<HR>
			<table>
				<%--<tr  bgcolor="#99CCFF" ><td>��ȣ</td><td>�ۼ���</td><td>��ȭ��ȣ</td><td>�ۼ���</td><td>����</td></tr> --%>
				<%
					for(User user : alldatas) {
											
				%>				
				  <tr>				  	
					<td align="center" width="80"><a href="calendar_user_look.jsp?id=<%=user.getId()%>"><%=user.getId()%></td>
					<td align="right" width="80"><%=user.getName()%></td>
					<td align="right" width="130"><%=user.getTel()%></td>
					<td align="center" width="300"><%=user.getAddress()%></td>
					<td align="center" width="40"><%=user.getEmail()+"@"+ user.getDomain()%></td>
				  </tr>
				<%	}	%>
				
			</table>
		
			<HR>
			
		</td>
		
	</table>
</form>
<form name=goback method="get" action="calendar_view.jsp">
			<input type="image" src="image\back.jpg">
			</form>
</tr></table>
</font>
<br><br><br><HR>
<H6>
ȸ�������� �����Ϸ��� <a href="guestbook_update_user.jsp">����</a>�� Ŭ�����ּ���.
<br>
Ż���Ϸ��� <a href="guestbook_delete_user.jsp">����</a>�� Ŭ�����ּ���.
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