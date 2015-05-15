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
회원정보를 수정하려면 <a href="calendar_update_user.jsp">여기</a>를 클릭해주세요.
<br>
탈퇴하려면 <a href="calendar_delete_user.jsp">여기</a>를 클릭해주세요.
<p>
2012년 웹기반 정보 시스템 및 실험 [Mid Term Project]
<br>
울산대학교 컴퓨터정보통신공학전공 [20072454 이경민, 20082473 김홍조]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>