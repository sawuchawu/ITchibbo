<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.Calendar"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>글 쓰기</title>
  <link href="css/default.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="js/HuskyEZCreator.js" charset="utf-8"></script>
 </head>
<body style="background-repeat:no-repeat" background="image\backgr.jpg">
<font face="HY바다L" color="#323232">
<BR><BR><BR><BR>
<center>
<% Calendar cal = Calendar.getInstance(); %>
<%--<img src="image\guestbook.jpg" width="300" height="100"> --%>
<table border=0>
	<tr>
		<td width="310">
			<form name=goback method="get" action="calendar_view.jsp">
			<input type="image" src="image\back.jpg">
			</form>
		</td>
		<td align="right" width="310">
			<form name=form1 method="post" action="calendar_control.jsp">
			<input type=hidden name="action" value="insert_Sche">
			<input type="image" onclick="_onSubmit(this)" src="image\create.jpg"><p>
		</td>
	</tr>
</table>
<table border=0>
	<tr>
		<td align="left" width="130">시 작 일</td>
		<td align="right" width="50">${param.year}</td>
		<td align="left" width="30">년</td>
		<td align="right"width="50">${param.month}</td>
		<td align="left" width="30">월</td>
		<td align="right"width="50">${param.day}</td>
		<td align="left" width="30">일</td>					
		<td align="right" width="150">
		<input type="hidden" name ="sYear" value="${param.year}">
		<input type="hidden" name ="sMonth" value="${param.month}">
		<input type="hidden" name ="sDay" value="${param.day}">
	</tr>
</table>

<table border=0>
	<tr>
		<td align="left" width="125">종 료 일</td>
		<td align="right" width="50">
		<select name="eYear">
			<option><%=cal.get(Calendar.YEAR) %></option>
			<%for (int i = 2012; i < 2020; i++){%>
				<option><%=i%></option>
			<%}%>
		</select>
		</td>
		<td align="left" width="30">년</td>
		<td align="right" width="50">
		<select name="eMonth">
			<option><%=cal.get(Calendar.MONTH)+1 %></option>
			<%for (int i = 1; i <= 12; i++){%>
				<option><%=i%></option>
			<%}%>
		</select>
		</td>
		<td align="left" width="30">월</td>
		<td align="right" width="50">
		<select name="eDay">
			<option><%=cal.get(Calendar.DATE) %></option>
			<%for (int i = 1; i <= 31; i++){%>
				<option><%=i%></option>
			<%}%>
		</select>
		</td>
		<td align="left" width="190">일</td>					
	</tr>
</table>

<table border=0>
	<tr>
		<td align="right" width="90">제 목</td>
		<td align="right" width="510">
			<input type="text" name="title" size="73">
		</td>
	</tr>
</table>

<table border=0>
	<tr>
		<td align="right" width="90">분류</td>
		<td align="center" width="527">
		<input type="radio" checked name="type" value="공휴일">공휴일 
		<input type="radio"	name="type" value="기념일">기념일
		<input type="radio"	name="type" value="경조사">경조사
		</td>
	</tr>
</table>
<table border=0>
	<tr>
		<td align="right" width="90">공개 설정</td>
		<td align="center" width="527"> 
		<input type="radio"	checked name="publish" value="친구 공개">친구 공개 
		<input type="radio"	name="publish" value="비공개">비공개
		</td>
	</tr>
</table>
<table>
	<tr>
		<td align="right" width="620">	<textarea name="content" id="content" rows="15" cols="84" <%--style="width:725px; height:300px"--%>>내용을 입력하세요.</textarea>
			<script>
				var oEditors = [];
				nhn.husky.EZCreator.createInIFrame({
					oAppRef: oEditors,
					elPlaceHolder: "content",
					sSkinURI: "SEditorSkin.html",
					fCreator: "createSEditorInIFrame"
				});
				oEditors[0].exec("UPDATE_IR_FIELD", []);
				
				function _onSubmit(elClicked){
					// 에디터의 내용을 에디터 생성시에 사용했던 textarea에 넣어 줍니다.
					oEditors.getById["content"].exec("UPDATE_IR_FIELD", []);
					// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
				}   
			</script>
						</td>
		</tr>
	</table>
</font><HR>
<H6>
2012년 웹기반 정보 시스템 및 실험 [Mid Term Project]
<br>
울산대학교 컴퓨터정보통신공학전공 [20072454 이경민, 20082473 김홍조]
<br>
Ver.2012.05.04 
</H6>
</center>
</body>
</html>