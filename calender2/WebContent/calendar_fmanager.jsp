<%@page import="myjsp.userPack.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, myjsp.followPack.*"%>
<html>
<head>
<title>방명록:목록화면</title>
</head>
<%
	User user = new User();
	UserBean ub = new UserBean();
	
	FollowBean fb = new FollowBean();	
	ArrayList<Follow> Fdatas = fb.getDBList((String)session.getAttribute("login_id"));
		
%>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br>
<center>
<font face="휴먼아미체" color="#323232">
<br><br><br>
<table>
	<tr><td>
	</td><tr>
<form name=listform>
	<table>
		<tr>
		<td width="100"></td><td align="center">
			<HR>
			<table border=0>
				<tr>
					<td align="center" width="120">친구 목록</td>
				</tr>
				<tr height="10"><td></td></tr>
				<tr>
					<td align="center" width="80">아이디</td>
					<td align="center" width="80">이름</td>
					<td align="center" width="130">전화번호</td>
					<td align="center" width="250">주소</td>
					<td align="center" width="80">이메일</td>
				</tr>
			</table>
			<HR>
			<table>
				<%--<tr  bgcolor="#99CCFF" ><td>번호</td><td>작성자</td><td>전화번호</td><td>작성일</td><td>내용</td></tr> --%>
				<%
					for(Follow follow : Fdatas) {
						user = ub.getDB(follow.getfId());						
				%>				
				  <tr>				  	
					<td align="center" width="80"><a href="calendar_user_look.jsp?id=<%=user.getId()%>"><%=user.getId()%></td>
					<td align="right" width="80"><%=user.getName()%></td>
					<td align="right" width="130"><%=user.getTel()%></td>
					<td align="center" width="300"><%=user.getAddress()%></td>
					<td align="left" width="40"><%=user.getEmail()%>@<%=user.getDomain() %></td>
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
회원정보를 수정하려면 <a href="guestbook_update_user.jsp">여기</a>를 클릭해주세요.
<br>
탈퇴하려면 <a href="guestbook_delete_user.jsp">여기</a>를 클릭해주세요.
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