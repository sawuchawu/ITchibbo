<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원정보수정</title>
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
		alert("입력된 아이디가 없습니다.");
	else
		window.open("checkid.jsp?id="+sid + "width=400 height=150");
}
function cancel(){
	location.href="calendar_view.jsp";
}
function checking(){
	if(document.join_form.id.value=="")	alert("ID를 입력하세요");
	else if(document.join_form.passwd.value=="" || document.join_form.passwd2.value=="")	alert("비밀번호를 입력하세요");
	else if(document.join_form.passwd.value != document.join_form.passwd2.value)	alert("비밀번호를 확인해주세요");
	else if(document.join_form.forgetq.value=="")	alert("비밀번호 분실시 질문을 입력하세요");
	else if(document.join_form.forgeta.value=="")	alert("비밀번호 분실시 답변을 입력하세요");
	else if(document.join_form.name.value=="")		alert("이름을 입력하세요");
	else if(document.join_form.s_rrnum.value=="")	alert("주민번호를 입력하세요");
	else if(document.join_form.e_rrnum.value=="")	alert("주민번호를 입력하세요");
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
					<td width="200"><font face="HY바다L" color="#323232">아이디</font></td>
					<td width="400">
					<%=session.getAttribute("login_id")%>
					</td>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호</font></td>
					<td><input type="password" size=10 name="passwd"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호확인</font></td>
					<td><input type="password" size=10 name="passwd2"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호 분실시 질문</font></td>
					<td><textarea name=forgetq rows=1 cols=50 style="overflow-y:hidden;"><%=user.getForgetq()%></textarea></td>
					<%--<input type="text" size=50 name="forgetq" value=<%=userbook.getForgetq()%>></td> --%>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호 분실시 답변</font></td>
					<td><textarea name=forgeta rows=1 cols=50 style="overflow-y:hidden;"><%=user.getForgeta()%></textarea></td>
					<%--<input type="text" size=50 name="forgeta" value=<%=userbook.getForgetq()%>></td> --%>
				<tr>
					<td><font face="HY바다L" color="#323232">이름</font></td>
					<td><input type="text" size=20 name="name" value=<%=user.getName()%>></td>
				<tr>
					<td><font face="HY바다L" color="#323232">주민등록번호</font></td>
					<td><input type="text" size=6 name=s_rrnum value=<%=user.getRrnum().substring(0, 6)%>> - <input type="password" size=7 name=e_rrnum value=<%=user.getRrnum().substring(6, 13)%>></td>
				</tr>
			</table>
			<br><br>
			<img src="image\addinfo.jpg">
			<table>
				<tr>
					<td width="200"><font face="HY바다L" color="#323232">E-mail</font></td>
					<td width="400"><input type="text" size=20 name=email value=<%=user.getEmail()%>>@<input type="text" size=20 name=domain value=<%=user.getDomain()%>></td>
				<tr>
					<td><font face="HY바다L" color="#323232">전화번호</font></td>
					<td><input type="text" size=20 name=tel value=<%=user.getTel()%>></td>
				<tr>
					<td><font face="HY바다L" color="#323232">우편번호</font></td>
					<td><input type="text" size=3 name=s_mailnum value=<%=user.getMailnum().substring(0, 3)%>> - <input type="text" size=3 name=e_mailnum value=<%=user.getMailnum().substring(3, 6)%>></td>
				<tr>
					<td><font face="HY바다L" color="#323232">주소</font></td>
					<td><textarea name=address rows=1 cols=50 style="overflow-y:hidden;"><%=user.getAddress()%></textarea></td>
				</tr>
			</table>
			<br>
		</form>
			<img src="image\joinB.jpg" style="cursor: pointer"  onclick="checking();">
			<img src="image\cancel.jpg" style="cursor: pointer" onclick="cancel(); ">
		<br><br><br>
	</font><HR><H6>
2012년 웹기반 정보 시스템 및 실험 [Mid Term Project]
<br>
울산대학교 컴퓨터정보통신공학전공 [20072454 이경민, 20072490 천정명, 20082473 김홍조]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>