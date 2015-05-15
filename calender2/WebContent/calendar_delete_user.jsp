<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="guestbook_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 회원 탈퇴 페이지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 탈퇴</title>
</head>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br><br><br><br>
<CENTER>
	<font face="HY바다L" color="#323232">
	<table>
	<tr>
		<td>탈퇴하시려면 아이디와 비밀번호를 입력해주세요<br><br></td>
	<tr>
	<td align="CENTER"><hr><br><br>
		<form name=form1 method=post action="calendar_control.jsp">
		<input type=hidden name="action" value="delete_user">
			<table>
				<tr>
					<td align="left" width="100">아이디</td>
					<td align="left" width="100"><input type="text" size=20 name="delete_id"></td>
					<td align="right" rowspan="2" width="100"><input type="image" src="image\enter.jpg"></td>
				<tr>
					<td align="left" width="100">비밀번호</td>
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
<H6>접속 일자 : <%=new java.util.Date() %>
2012년 웹기반 정보 시스템 및 실험 [Mid Term Project]
<br>
울산대학교 컴퓨터정보통신공학전공 [20072454 이경민, 20072490 천정명, 20082473 김홍조]
<br>
Ver.2012.06.25 
</H6>
</center>
</body>
</html>