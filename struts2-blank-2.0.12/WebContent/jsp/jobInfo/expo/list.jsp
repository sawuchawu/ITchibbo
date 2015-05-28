<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- 	<!-- edit 한 자료들 리스트 -->
	${list}
	<div class="a">
		<h1 class="title" align="center">회사 리스트</h1>
		<div class="button">
			<span class="fr"> <span class="button"><a
					href="/recruit/edit.jsp">글쓰기</a></span>
			</span>
		</div>
		<table class="bbsList" width="100%" height="100%" border="2">
			<colgroup>

				<!-- 크기 -->
				<col />
				<col />
				<col width="130" />
				<col width="150" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">회사</th>
					<th scope="col">제목</th>
					<th scope="col">마감일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>

			<tbody>
				<!-- 	표현부분 foreach-->
				<c:forEach items="${list}" var="i">
					<tr>
						<td class="fir">${i.company}</td>
						  <td class="fir"><a href="/recruits/dataInfo.action?company=${i.company}&job=info">${i.title}</a></td>
						<td class="fir">${i.regdate}</td>
						<td class="fir">${i.no}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div> --%>
</body>
</html>