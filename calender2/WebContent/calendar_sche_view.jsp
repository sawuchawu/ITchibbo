<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<%@page import="myjsp.schePack.*"%>
<html>
<head>
<script language=JavaScript>
function delCheck(){
	if(confirm('�����ұ��???')){
		var action = document.getElementById("action");
		var seqNum = document.getElementById("seqNum");
		var sche_id = document.getElementById("sche_id");
		var log_id = document.getElementById("log_id");
		if(sche_id.value == log_id.value){
			document.del_form.submit();
		}
		else{
			alert("������ �����ϴ�");
		}
	}
}
function updateCheck(){
	var action = document.getElementById("action");
	var seqNum = document.getElementById("seqNum");
	var sche_id = document.getElementById("sche_id");
	var log_id = document.getElementById("log_id");
	if(sche_id.value == log_id.value){
		document.update_form.submit();
		}
		else{
			alert("������ �����ϴ�");
		}
}

	function ripple_delCheck(ripple_seq){
		if(confirm('�����ұ��???')){
			var ripple_id = document.getElementById("ripple_id");
			var log_id = document.getElementById("log_id");
			if(ripple_id.value == log_id.value){
				document.location.href="guestbook_control.jsp?action=del_ripple&ripple_seq="+ripple_seq;
			}
			else{
				alert("������ �����ϴ�");
			}
		}
	}
</script>
<%
	Schedule schedule = new Schedule();
	ScheBean sb = new ScheBean();
	schedule = sb.getDB(Integer.parseInt(request.getParameter("scheNum")));
%>
<title>�Խñ� ����</title>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br>
<font face="�޸վƹ�ü" color="#323232">
<center>
<img src="image\schedule.jpg" width="300" height="100">

<table border=0>
	<tr><td>
	<table border=0>
		<tr>
			<td align="left" width="400">
				<form name=back method="get" action="calendar_view.jsp">
					<input type="image" src="image\back.jpg">
				</form>
			</td>
			<td align="right" width="125">
			<form name="del_form" method="post" action="calendar_control.jsp">
				<input type="hidden" name="action" value="sche_del">
				<input type="hidden" name="seqNum" value="<%=schedule.getScheNum()%>">
				<input type="hidden" name="sche_id" value="<%=schedule.getId()%>">
				<input type="hidden" name="log_id" value="<%=(String)session.getAttribute("login_id") %>">
				<img src="image/delete.jpg" onclick="delCheck();" style="cursor: pointer">	
			</form>
			</td>
			<td align="right" width="125">
				<form name="update_form" method="get" action="calendar_sche_edit.jsp">
					<input type="hidden" name="action" value="sche_edit">
					<input type="hidden" name="seqNum" value="<%=schedule.getScheNum()%>">
					<input type="hidden" name="sche_id" value="<%=schedule.getId()%>">
					<input type="hidden" name="log_id" value="<%=(String)session.getAttribute("login_id") %>">
					<img src="image/update.jpg" onclick="updateCheck();" style="cursor: pointer">	
				</form>
			</td>
		</tr>
	</table>
	</td><tr>
	<table border=0>
		<tr>
			<td align="center">
			<HR>
			<table border=0>
				<tr>
					<td width="50" align="center"><b>�� ��</b></td>
					<td width="610"><%=schedule.getTitle() %></td>
				</tr>
			</table>
			<HR>
			<table border=0>
				<tr>
					<td width="50" align="left"><b>�ۼ���</b></td>
					<td width="120" align="left"><%=session.getAttribute("login_name") %></td>
					<td width="50" align="right"><b>������</b></td>
					<td width="185" align="center"><%=schedule.getsDate() %></td>
					<td width="100" align="right"><b>������</b></td>
					<td width="120" align="right"><%=schedule.geteDate() %></td>
					
				</tr>
			</table>
			<HR>
			<table border=0>
				<tr>
					<td width="30" valign="top"><b>����</b></td>
					<td width="590"><%=schedule.getContent() %></td>
				</tr>
			</table>
			<BR>
			<HR>
		</td></tr>
	</table>
	</td></tr>
</table>
<br><br><br><HR>
</center>
</font>
</body>
</html>