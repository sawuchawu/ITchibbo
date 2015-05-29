<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/css/finalinfo.css" rel="stylesheet" />
<link href="/css/button.css" rel="stylesheet" />
</head>
<body>

	<!-- UI Object -->
	<table class="tbl_type" border="1" cellspacing="0" summary="글 내용을 표시">
		<caption>글 읽기</caption>
		<colgroup>
			<col width="80">
			<col>
			<col width="80">
			
		</colgroup>
		<thead>
			<tr>
				<th scope="row">제목</th>
				<td colspan="5">${bean.exp_title}</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">작성자</th>
				<td>${bean.mem_id}</td>
				<th scope="row">마감일</th>
				<td>${bean.exp_date}</td>

			</tr>
			<tr>
				<td class="cont" > 
					<%-- <img alt="" src="/img/expo/${bean.fileFileName}" > --%>
					<img alt="" src="/img/expo/1.jpg" > 
				</td>
			</tr>
		</tbody>
	</table>
<!-- UI Object -->
	<div align="right">
		<!-- <a class="btn_big" href="javascript:sendData()"><strong>저장</strong></a>  -->
		<a class="btn_big"
			href="/expo/expoList.action"><span>취소</span></a>

	</div>
	<!-- //UI Object -->

</body>
</html>