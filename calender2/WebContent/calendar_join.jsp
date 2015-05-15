
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
    <!-- 회원가입 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
</head>
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script/jquery.js"></script>
<script type="text/javascript" src="script/jquery.validate.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$('#signup').validate();
});


function colCheck(){
	var id = document.getElementById("id");
	if(id.value == "")
		alert("입력된 아이디가 없습니다.");
	else{
		window.open("calendar_control.jsp?action=collision&id="+id.value,"new", "width=300 height=150");
		//document.getElementById("id").value="";
	}
}

function cancel(){
	location.href="calendar_login.jsp";
}

 
</script>
<script type="text/css">

.error{
	color:#FCC;
}

</script>
<%
	String col_id="";
	if(request.getParameter("col_id") == null){
		col_id = "";
	}else{
		col_id = request.getParameter("col_id");
	}
%>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<br><br><br><br><br>
	<CENTER>
		<img src="image\join_img.jpg">
		<form name="join_form" method=post action="calendar_control.jsp" id="signup">
		<input type=hidden name="action" value="join">
			<img src="image\basicinfo.jpg">
			<table>
				<tr>
					<td width="200"><font face="HY바다L" color="#323232">아이디</font></td>
					<td width="400">
						<input type="text" maxlength="16" size=10 name="id" class="required" title="X" value="<%=col_id%>">
						&nbsp&nbsp&nbsp
						<img src="image\collision.jpg" width=40 height=15 style="cursor: pointer" onclick="colCheck();">
					</td>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호</font></td>
					<td><input type="password" maxlength="16" size=10 name="passwd" class="required" title="X"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호확인</font></td>
					<td><input type="password" maxlength="16" size=10 name="passwd2" class="required" title="X"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호 분실시 질문</font></td>
					<td><input type="text" size=50 name="forgetq" class="required" title="X"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">비밀번호 분실시 답변</font></td>
					<td><input type="text" size=50 name="forgeta" class="required" title="X"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">이름</font></td>
					<td><input type="text" maxlength="10" size=20 name="name" class="required" title="X"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">주민등록번호</font></td>
					<td><input type="text" size=6 maxlength="6" name=s_rrnum class="required number" title="X"> - <input type="password" maxlength="7" size=7 name=e_rrnum class="required number" title="X"></td>
				</tr>
			</table>
			<br><br>
			<img src="image\addinfo.jpg">
			<table>
				<tr>
					<td width="200"><font face="HY바다L" color="#323232">E-mail</font></td>
					<td width="400"><input type="text" maxlength="10" size=20 name=email>@<input type="text" maxlength="13" size=20 name=domain></td>
				<tr>
					<td><font face="HY바다L" color="#323232">전화번호</font></td>
					<td><input type="text" size=20 maxlength="20" name=tel></td>
				<tr>
					<td><font face="HY바다L" color="#323232">우편번호</font></td>
					<td><input type="text" maxlength="3" size=3 name=s_mailnum class="number" title="X"> - <input type="text" size=3 maxlength="3" name=e_mailnum class="number" title="X"></td>
				<tr>
					<td><font face="HY바다L" color="#323232">주소</font></td>
					<td><input type="text" size=50 name=address></td>
				</tr>
			</table>
		<br><br><br>
					<input type="image" width=60 height=60 src="image/joinB.jpg" onmouseover="this.src='image/gogo.jpg'" onmouseout="this.src='image/joinB.jpg'">
			<img src="image\cancel.jpg" width=60 height=60 style="cursor: pointer"onmouseover="this.src='image/cancel_back.jpg'" onmouseout="this.src='image/cancel.jpg'" onclick="cancel(); ">
		</form>
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