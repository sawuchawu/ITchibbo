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
				<th scope="row">작성자</th>
				<td colspan="5">${bean.mem_id}</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">회사</th>
				<td>${bean.cov_com}</td>
				<th scope="row">직군</th>
				<td>${bean.cov_job}</td>

			</tr>
			<tr>
				<th scope="row">합격연도</th>
				<td colspan="5">${bean.cov_year}</td>
			</tr>
			<tr>
				<th scope="row">스펙</th>
				<td colspan="5">${bean.cov_spec}</td>
			</tr>
			
			<tr>
				<th scope="row">가격</th>
				<td colspan="5">${bean.cov_price}</td>
			</tr>
			<tr>
				<th scope="row">제목</th>
				<td colspan="5">${bean.cov_title}</td>
			</tr>
			<tr>
				<th scope="row">등록일</th>
				<td colspan="5">${bean.cov_date}</td>
			</tr>
			<tr>
				<th scope="row">내용</th>
				<td colspan="5">${bean.cov_content}</td>
			</tr>
			
		 	<%-- <tr>
		 	
				<td class="cont" > 
					 <img alt="" src="/img/cov/${bean.fileFileName }" >
				</td>
			</tr>  --%>
		</tbody>
	</table>
		 <img alt="" src="/img/cov/${bean.fileFileName }" >
<!-- UI Object -->
	<div align="right">
		  
		<a class="btn_big" href="/cov/cartList.action"><span>목록</span></a>

	</div>
	<!-- //UI Object -->

</body>
</html>