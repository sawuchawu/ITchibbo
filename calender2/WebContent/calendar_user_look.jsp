<%@page import="myjsp.followPack.*"%>
<%@ page import= "myjsp.userPack.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- ȸ�� Ż�� ������ -->
<html>
<head>
<script language=JavaScript>
function delCheck(){			//�Խñ� ���� Ȯ��
	if(confirm('�����ұ��???')){
		var id = document.getElementById("id");
		document.form1.submit();
	}
}
function reqCheck(){			//�Խñ� ���� Ȯ��
	if(confirm('ģ����û�ұ��???')){
		var id = document.getElementById("id");
		document.form1.submit();
	}
}
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� Ż��</title>
</head>
<% 
	UserBean ub = new UserBean();
	FollowBean fb = new FollowBean();	
	User user = ub.getDB( (String)request.getParameter("id") ); 
%>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br><br><br><br>
<CENTER>
	<font face="HY�ٴ�L" color="#323232">
	<table border=0>
	<tr>
	<td align="CENTER">
		<form name=form1 method=post action="calendar_control.jsp">
		<input type=hidden name="id" value=<%=user.getId() %>>
			<table border=0>
			<tr>
					<td align="left" width="100">���̵�</td>	
					<td align="left" width="100"><%=user.getId() %></td>
					
				</tr>
				<tr>
					<td align="left" width="100">�̸�</td>
					<td align="left" width="100"><%=user.getName() %></td>
					
				</tr>
				<tr>
					<td align="left" width="100">��ȭ��ȣ</td>
					<td align="left" width="100"><%if(user.getTel()==null) out.print(""); %></td>
					
				</tr>
				<tr>
					<td align="left" width="100">�̸���</td>
					<td align="left" width="100"><%if(user.getEmail()==null) out.print(""); %>@<%if(user.getDomain()==null) out.print(""); %></td>
				</tr>
				
				
			</table>
			<br>
			<table border=0>
			
				<tr><%if(fb.checkfId((String)session.getAttribute("login_id"), user.getId())){ %>
					<td><img src="image\delete.jpg" onclick="delCheck();"></td>
					<input type=hidden name="action" value="delete_friend"><!-- ģ�� ���� -->
					
					<%}else{ %>
					<td><img src="image\create.jpg" onclick="reqCheck();"></td>
					<input type=hidden name="action" value="request_friend"><!-- ģ�� ��û -->
					<%} %>
				</tr>
			</table>
			
		</form>
	</td>
	</tr>
	</table>
	<br><br><br><HR>
</font>
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