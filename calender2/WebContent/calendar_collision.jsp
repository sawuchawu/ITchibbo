<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String result = (String)session.getAttribute("result");
%>
<script>
/* 아이디 중복확인 페이지 */
function closebtn(){	//닫기 버튼 누르면 닫힘
	  self.opener=self;
	  self.close();

}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID 중복체크</title>
</head>
<body>
<!-- 중복체크 결과 받아와 출력 -->
<%=result %><br>		
<button onclick="closebtn()">닫기</button>


</body>
</html>