<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<%@ taglib uri="/WEB-INF/tld/MiniViewTag.tld" prefix="MiniView" %>
<jsp:useBean id="mv" class="myjsp.calPack.MiniViewHandler"/>
<jsp:setProperty name="mv" property="*"/>
<jsp:useBean id="mt" class="myjsp.calPack.MonthTypeViewHandler"/>
<jsp:setProperty name="mt" property="*"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>MiniCalendar</title>
</head>
<body>
<center>
<table><tr>
<form method="get" action="calendar_control.jsp">
	<input type="hidden" name="action" value="myear">
	<td>
		<input type="submit" value="<<">
	</td>
</form>
<form method="get" action="calendar_control.jsp">
	<input type="hidden" name="action" value="mmonth">
	<td>
		<input type="submit" value="<">
	</td>
</form>
	<td>
<% Calendar mini_today = Calendar.getInstance(); %>
<font face="휴먼아미체" color="#323232" size="5">
<%=Integer.parseInt(session.getAttribute("year").toString())%>년<%=session.getAttribute("month")%>월
</font>
	</td>
<form method="get" action="calendar_control.jsp">
	<input type="hidden" name="action" value="pmonth">
	<td>
		<input type="submit" value=">">
	</td>
</form>
<form method="get" action="calendar_control.jsp">
	<input type="hidden" name="action" value="pyear">
	<td>
		<input type="submit" value=">>">
	</td>
</form>
</tr></table>
<% if(mv.getYear()==mini_today.get(Calendar.YEAR) && mv.getMonth()==mini_today.get(Calendar.MONTH)+1){ %>
	<MiniView:MiniView year ="<%=mini_today.get(Calendar.YEAR) %>" month = "<%=mini_today.get(Calendar.MONTH)+1 %>"/>
<%}else{ %>
	<MiniView:MiniView year ="<%=Integer.parseInt(session.getAttribute(\"year\").toString())%>" month = "<%=Integer.parseInt(session.getAttribute(\"month\").toString())%>"/>
<%} %>
</center>
</body>
</html>