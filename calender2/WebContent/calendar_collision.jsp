<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String result = (String)session.getAttribute("result");
%>
<script>
/* ���̵� �ߺ�Ȯ�� ������ */
function closebtn(){	//�ݱ� ��ư ������ ����
	  self.opener=self;
	  self.close();

}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID �ߺ�üũ</title>
</head>
<body>
<!-- �ߺ�üũ ��� �޾ƿ� ��� -->
<%=result %><br>		
<button onclick="closebtn()">�ݱ�</button>


</body>
</html>