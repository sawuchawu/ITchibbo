<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>ch14:error.jsp[web.xml ����]</h2>
<hr>
<table>
<tr width="100%" bgcolor="pink"><td>
�����ڿ��� �������ּ���.<br>
���� ���� ���� �����ϰڽ��ϴ�.<br>
</td></tr>
<tr><td>
${now}<p>
��û ���� URI: ${pageContext.errorData.requestURI }<br>
���� �ڵ� : ${pageContext.errorData.statusCode}<br>
���� ���� : ${pageContext.errorData.throwable }
</td></tr>
</table>
</center>
</body>
</html>