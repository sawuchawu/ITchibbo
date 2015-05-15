<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@page import="myjsp.userPack.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
function checking(){		
	if(document.lost_pass2_form.forgeta.value=="")	alert("답변을 입력하세요");
	else document.lost_pass2_form.submit();
}
</script>
<%
	User lostUser = (User)session.getAttribute("lostUser"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>비밀번호 찾기2</title>
</head>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
	<font face="HY바다L" color="#323232">
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
					<td align="left" width="40">질문</td>
					<td align="left"><%=lostUser.getForgetq()%></td>
					<td align="right" rowspan="2" width="100"><img src="image\find.jpg" onclick="checking()" style="cursor: pointer" ></td>
				<tr>
					<td align="left" width="40">답변</td>
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
2012년 웹기반 정보 시스템 및 실험 [Mid Term Project]
<br>
울산대학교 컴퓨터정보통신공학전공 [20072454 이경민, 20082473 김홍조]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>