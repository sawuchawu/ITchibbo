<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="myjsp.calPack.*" %>
<%@ taglib uri="/WEB-INF/tld/MonthTypeViewTag.tld" prefix="MonthTypeView" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% Calendar main_today = Calendar.getInstance(); %>
<center>
<form name="form1" method="get" action="calendar_view.jsp">
<table><tr>
	<td align="center" width=300></td>
	<td align="center" width=100>
<select name="year" style="font-size: 25; font-family: 휴먼아미체">
	<% if(request.getParameter("year") == null){ %>
		<option><%=main_today.get(Calendar.YEAR) %></option>
	<%}else{ %>
		<option><%=Integer.parseInt(request.getParameter("year"))%></option>
	<%} %>
	<%for(int i=2012; i>1990; i--){ %>
		<option><%=i %></option>
	<%} %>
</select>
<font face="휴먼아미체" size="5">
	년
	</font>
	</td><td align="center" width=80>
<select name="month" style="font-size: 25; font-family: 휴먼아미체">
	<% if(request.getParameter("month") == null){ %>
		<option><%=main_today.get(Calendar.MONTH)+1 %></option>
	<%}else{ %>
		<option><%=Integer.parseInt(request.getParameter("month"))%></option>
	<%} %>
	<%for(int i=1; i<=12; i++){ %>
		<option><%=i %></option>
	<%} %>
</select>
<font face="휴먼아미체" size="5">
	월
	</font>
	</td><td align="center" width=90>
		<input type="image" width=70 height=35 src="image\gogo1.jpg" onmouseover="this.src='image/gogo2.jpg'" onmouseout="this.src='image/gogo1.jpg'">
	</td><td align="center" width=300>
	</td>
</tr></table>
</form>
<% if(request.getParameter("year") == null){ %>
	<MonthTypeView:MonthTypeView login_id="<%=(String)session.getAttribute(\"login_id\") %>" year ="<%=main_today.get(Calendar.YEAR) %>" month = "<%=main_today.get(Calendar.MONTH)+1 %>"/>
<%}else{ %>
	<MonthTypeView:MonthTypeView login_id= "<%=(String)session.getAttribute(\"login_id\") %>" year ="<%=Integer.parseInt(request.getParameter(\"year\"))%>" month = "<%=Integer.parseInt(request.getParameter(\"month\"))%>"/>
<%} %>
</center>
</body>
</html>