<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/css/finallist.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
</head>
<body>

<!-- UI Object -->
<table class="tbl_type" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
<col>
<col width="250">
</colgroup>
<thead>
<tr>


<th scope="col">제목</th>
<th scope="col">마감일</th>

</tr>
</thead>
<tbody>
<c:forEach var="i" items="${list}">
<tr>
<td class="title"><a href="/expo/dataInfo.action?exp_no=${i.exp_no}&job=info">${i.exp_title}</a></td>
<td>${i.exp_date}</td>
</tr>
</c:forEach>
</tbody>
</table>
<!-- //UI Object -->
<div align="right">
		<!-- <a class="btn_big" href="javascript:sendData()"><strong>저장</strong></a>  -->
		<a class="btn_big"
			href="/jsp/jobInfo/expo/finaledit.jsp"><span>글쓰기</span></a>

	</div>

</body>
</html>