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
<h4>합격 자소서 스크랩</h4>
 <!-- UI Object -->
<table class="tbl_type" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
<col>
<col width="250">
</colgroup>
<thead >
<tr>
<th scope="col">채용시기</th>
<th scope="col">회사</th>
<th scope="col">지원분야</th>
<th scope="col">제목</th>
<th scope="col">삭제</th>
</tr>
</thead>
<tbody>
 <c:forEach var="i" items="${scrap}">
<tr>
<td class="title"><a href="/cov/covInfo.action?cov_no=${i.cov_no}&job=info">${i.cov_year}</a></td>
<td>${i.cov_com}</td>
<td>${i.cov_job}</td>
<td>${i.cov_title}</td>
<td><a a class="btn_big" href="/cov/deleteScrap.action?cov_no=${i.cov_no}"><span>삭제</span></a></td>
</tr>
</c:forEach>
</tbody>
</table>
<!-- //UI Object -->
<div align="right">
<br>
<a class="btn_big" href="/cov/covList.action"><span>목록</span></a>
</div>

</body>
</html>