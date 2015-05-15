<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Lost ID</title>
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
		<form name=form1 method=post action="calendar_control.jsp">
		<input type="hidden" name="action" value="lost_id">
			<table>
				<tr>
					<td align="left" width="100">이름</td>
					<td align="left" width="100"><input type="text" size=20 name="name"></td>
					<td align="right" rowspan="2" width="100">
						<input type="image" width=60 height=60 src="image\find.jpg" onmouseover="this.src='image/gogo.jpg'" onmouseout="this.src='image/find.jpg'">
					</td>
				<tr>
					<td align="left" width="100">주민등록번호</td>
					<td align="left" width="100"><input type="text" size=7 name="s_rrnum"> - <input type="password" size=7 name="e_rrnum"></td>
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
				<td><form name=form4 method=get action="calendar_lost_pass.jsp">
					<input type="image" src="image\lost_pass2.jpg"></form>
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