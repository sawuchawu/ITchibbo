<%@page import="myjsp.followPack.*"%>
<%@ page import= "myjsp.userPack.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 회원 탈퇴 페이지 -->
<html>
<head>
<script language=JavaScript>
function delCheck(){			//게시글 삭제 확인
	if(confirm('삭제할까요???')){
		var id = document.getElementById("id");
		document.form1.submit();
	}
}
function reqCheck(){			//게시글 삭제 확인
	if(confirm('친구요청할까요???')){
		var id = document.getElementById("id");
		document.form1.submit();
	}
}
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 탈퇴</title>
</head>
<% 
	UserBean ub = new UserBean();
	FollowBean fb = new FollowBean();	
	User user = ub.getDB( (String)request.getParameter("id") ); 
%>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br><br><br><br>
<CENTER>
	<font face="HY바다L" color="#323232">
	<table border=0>
	<tr>
	<td align="CENTER">
		<form name=form1 method=post action="calendar_control.jsp">
		<input type=hidden name="id" value=<%=user.getId() %>>
			<table border=0>
			<tr>
					<td align="left" width="100">아이디</td>	
					<td align="left" width="100"><%=user.getId() %></td>
					
				</tr>
				<tr>
					<td align="left" width="100">이름</td>
					<td align="left" width="100"><%=user.getName() %></td>
					
				</tr>
				<tr>
					<td align="left" width="100">전화번호</td>
					<td align="left" width="100"><%if(user.getTel()==null) out.print(""); %></td>
					
				</tr>
				<tr>
					<td align="left" width="100">이메일</td>
					<td align="left" width="100"><%if(user.getEmail()==null) out.print(""); %>@<%if(user.getDomain()==null) out.print(""); %></td>
				</tr>
				
				
			</table>
			<br>
			<table border=0>
			
				<tr><%if(fb.checkfId((String)session.getAttribute("login_id"), user.getId())){ %>
					<td><img src="image\delete.jpg" onclick="delCheck();"></td>
					<input type=hidden name="action" value="delete_friend"><!-- 친구 삭제 -->
					
					<%}else{ %>
					<td><img src="image\create.jpg" onclick="reqCheck();"></td>
					<input type=hidden name="action" value="request_friend"><!-- 친구 요청 -->
					<%} %>
				</tr>
			</table>
			
		</form>
	</td>
	</tr>
	</table>
	<br><br><br><HR>
</font>
<H6>접속 일자 : <%=new java.util.Date() %>
2012년 웹기반 정보 시스템 및 실험 [Mid Term Project]
<br>
울산대학교 컴퓨터정보통신공학전공 [20072454 이경민, 20082473 김홍조]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>