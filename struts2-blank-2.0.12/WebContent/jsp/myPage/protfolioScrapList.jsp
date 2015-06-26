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
<h4>포트폴리오 스크랩</h4>
 <!-- UI Object -->
 <div align="right">
<br>
<a class="btn_big" href="/portfolio/portfolioList.action"><span>목록</span></a>
</div>
<table class="tbl_type" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
									<col width="60">
									<col width="100">
									<col width="100">
									<col width="150">
									<col width>
									<col width="50">
									<col width="50">
								</colgroup>
<thead >
<tr>
<th scope="col">NO</th>
<th scope="col">시기</th>
<th scope="col">이름</th>
<th scope="col">직무</th>
<th scope="col">제목</th>
<th scope="col">가격</th>
<th scope="col">삭제</th>
</tr>
</thead>
<tbody>
<!-- POR_NO	MEM_ID	POR_TITLE	POR_JOB	POR_CONTENT	PDFFILENAME	IMGFILENAME	POR_REGDATE	POR_HIT	POR_LIKE	 -->

 <c:forEach var="i" items="${scrap1}">
<tr>
<td>${i.por_no}</td>

<td class="title"><a href="/portfolio/portfolioInfo.action?por_no=${i.por_no}&job=info">&nbsp;&nbsp;&nbsp;sda</a></td>
<td>${i.mem_id}</td>
<td>${i.por_job}</td>
<td>${i.por_title}</td>
<td>2000원</td>
<td> <a a class="btn_big" href="/portfolio/deleteScrap.action?por_no=${i.por_no}"><span>삭제</span></a></td>
</tr>
</c:forEach>
</tbody>
</table>
<!-- //UI Object -->


</body>
</html>