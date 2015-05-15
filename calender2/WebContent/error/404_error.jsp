<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>ch14: 404-error.jsp[web.xml 지정]</h2>
<hr>
<center>
<table>
<tr width=100% bgcolor="pink">
<td>요청하신 파일을 찾을 수 없습니다.<br>
URL 주소를 다시 한 번 확인해주세요!!!</td>
</tr>
<tr><td>
${now}<p>
요청 실패 URI: ${pageContext.errorData.requestURI}<br>
상태 코드 : ${pageContext.errorData.statusCode }<br>

</td></tr>
</table>
</center>
</body>
</html>