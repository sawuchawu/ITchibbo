<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	 <%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div class="c">


		<table class="bbsWrite">
			<colgroup>
				<col width="90" />
				<col />
			</colgroup>

			<tbody>
				<tr>
					<th scope="row">id</th>
					<td>${bean.id}</td>

				</tr>
				<tr>
					<th scope="row">제목</th>
					<td>${bean.title}</td>
				</tr>
				<tr>
				<td rowspan="3"><img src="/logoImg/${bean.fileFileName}" width="400" height="400"/></td>
					<th scope="row">회사</th>
					<td>${bean.company}</td>

				</tr>
				<tr>

					<th scope="row">마감일</th>
					<td>${bean.regdate}</td>
				</tr>
				<tr>
					<th scope="row">내용</th>
					<td>${bean.contents}</td>
				</tr>
			
				<tr>
					<th scope="row">비밀번호</th>
					<td>${bean.pass}</td>
				</tr>
			</tbody>
		</table>

		<div class="btnSet clfix mgb15">
			<span class="fr"> 
				<span class="button">
					<a href="/recruits/dataInfo.action?company=${bean.company}&job=modify">수정</a>
				</span> 
				<span class="button">
					<a href="/recruits/recruitList.action">목록/취소</a>
				</span> 
			</span>
		</div>
	</div>

</body>
</html>