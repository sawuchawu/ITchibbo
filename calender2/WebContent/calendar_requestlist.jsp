<%@page import="myjsp.rFollowtPack.*"%>
<%@page import="myjsp.userPack.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<html>
<head>
<title>req</title>
</head>
<%
UserBean ub = new UserBean();
User user = ub.getDB( (String)request.getParameter("id") ); 
rFollowBean rfb = new rFollowBean();
ArrayList<rFollow> alldatas = rfb.getDBrList((String)session.getAttribute("login_id"));

%>


<font face="HY�ٴ�L" color="#323232">
<center>
<form name=listform>
<table>
	<tr>
		<td width="120">ģ����û</td>
		<td width="130"></td>
	</tr>
</table>
<HR>
<table>
	<%--<tr  bgcolor="#99CCFF" ><td>��ȣ</td><td>�ۼ���</td><td>��ȭ��ȣ</td><td>�ۼ���</td><td>����</td></tr> --%>
	<%	
	 for(rFollow rfollow : alldatas) {							
	%>		
	
	  <tr>
		<td align="center" width="60"><%=rfollow.getId() %>
		<td align="left" width="190"><a href="calendar_control.jsp?action=insert_friend&id=<%=rfollow.getId() %>&rseq=<%=rfollow.getrSeq()%>">����</a><font color="orange">[test]</font></td>
		<td align="left" width="190"><a href="calendar_control.jsp?action=reject_friend&id=<%=rfollow.getId() %>&rseq=<%=rfollow.getrSeq()%>">����</a><font color="orange">[test]</font></td>
		<%--<td width="100"><a href=javascript:check('<%=guestbook.getGb_id() %>')><%=guestbook.getGb_contents() %></a></td> --%>
	  </tr>
	 <%
		}
	 %>
</table>
<HR>
</form>
</font>
</center>
</body>
</html>