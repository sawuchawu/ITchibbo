<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ����������</title>
</head>

<jsp:useBean id="ub" class="myjsp.userPack.UserBean"></jsp:useBean>
<jsp:useBean id="user" class="myjsp.userPack.User"/>
<jsp:setProperty name="user" property="*"/>
<%
user = ub.getDB((String)session.getAttribute("login_id"));
%>
<script type="text/javascript">
function checkId(){
	var sid = document.join_form.id.value
	if(sid == "")
		alert("�Էµ� ���̵� �����ϴ�.");
	else
		window.open("checkid.jsp?id="+sid + "width=400 height=150");
}
function cancel(){
	location.href="calendar_view.jsp";
}
function checking(){
	if(document.join_form.id.value=="")	alert("ID�� �Է��ϼ���");
	else if(document.join_form.passwd.value=="" || document.join_form.passwd2.value=="")	alert("��й�ȣ�� �Է��ϼ���");
	else if(document.join_form.passwd.value != document.join_form.passwd2.value)	alert("��й�ȣ�� Ȯ�����ּ���");
	else if(document.join_form.forgetq.value=="")	alert("��й�ȣ �нǽ� ������ �Է��ϼ���");
	else if(document.join_form.forgeta.value=="")	alert("��й�ȣ �нǽ� �亯�� �Է��ϼ���");
	else if(document.join_form.name.value=="")		alert("�̸��� �Է��ϼ���");
	else if(document.join_form.s_rrnum.value=="")	alert("�ֹι�ȣ�� �Է��ϼ���");
	else if(document.join_form.e_rrnum.value=="")	alert("�ֹι�ȣ�� �Է��ϼ���");
	else document.join_form.submit();
}

</script>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br>
	<CENTER>
		<img src="image\join_img.jpg">
		<form name="join_form" method=post action="calendar_control.jsp">
		<input type=hidden name="action" value="update_user">
			<img src="image\basicinfo.jpg">
			<table>
				<tr>
					<td width="200"><font face="HY�ٴ�L" color="#323232">���̵�</font></td>
					<td width="400">
					<%=session.getAttribute("login_id")%>
					</td>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">��й�ȣ</font></td>
					<td><input type="password" size=10 name="passwd"></td>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">��й�ȣȮ��</font></td>
					<td><input type="password" size=10 name="passwd2"></td>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">��й�ȣ �нǽ� ����</font></td>
					<td><textarea name=forgetq rows=1 cols=50 style="overflow-y:hidden;"><%=user.getForgetq()%></textarea></td>
					<%--<input type="text" size=50 name="forgetq" value=<%=userbook.getForgetq()%>></td> --%>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">��й�ȣ �нǽ� �亯</font></td>
					<td><textarea name=forgeta rows=1 cols=50 style="overflow-y:hidden;"><%=user.getForgeta()%></textarea></td>
					<%--<input type="text" size=50 name="forgeta" value=<%=userbook.getForgetq()%>></td> --%>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">�̸�</font></td>
					<td><input type="text" size=20 name="name" value=<%=user.getName()%>></td>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">�ֹε�Ϲ�ȣ</font></td>
					<td><input type="text" size=6 name=s_rrnum value=<%=user.getRrnum().substring(0, 6)%>> - <input type="password" size=7 name=e_rrnum value=<%=user.getRrnum().substring(6, 13)%>></td>
				</tr>
			</table>
			<br><br>
			<img src="image\addinfo.jpg">
			<table>
				<tr>
					<td width="200"><font face="HY�ٴ�L" color="#323232">E-mail</font></td>
					<td width="400"><input type="text" size=20 name=email value=<%=user.getEmail()%>>@<input type="text" size=20 name=domain value=<%=user.getDomain()%>></td>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">��ȭ��ȣ</font></td>
					<td><input type="text" size=20 name=tel value=<%=user.getTel()%>></td>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">�����ȣ</font></td>
					<td><input type="text" size=3 name=s_mailnum value=<%=user.getMailnum().substring(0, 3)%>> - <input type="text" size=3 name=e_mailnum value=<%=user.getMailnum().substring(3, 6)%>></td>
				<tr>
					<td><font face="HY�ٴ�L" color="#323232">�ּ�</font></td>
					<td><textarea name=address rows=1 cols=50 style="overflow-y:hidden;"><%=user.getAddress()%></textarea></td>
				</tr>
			</table>
			<br>
		</form>
			<img src="image\joinB.jpg" style="cursor: pointer"  onclick="checking();">
			<img src="image\cancel.jpg" style="cursor: pointer" onclick="cancel(); ">
		<br><br><br>
	</font><HR><H6>
2012�� ����� ���� �ý��� �� ���� [Mid Term Project]
<br>
�����б� ��ǻ��������Ű������� [20072454 �̰��, 20072490 õ����, 20082473 ��ȫ��]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>