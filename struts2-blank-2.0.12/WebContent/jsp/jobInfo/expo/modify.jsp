<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function sendData() {

	obj = document.frm;
	obj.submit();
}
</script>
</head>
<body>
	<div class="b">
	<!-- 	dataInsert로  submit -->
		<form action="/recruits/datamodify.action" method="post" name="frm"
			enctype="multipart/form-data">
			<table class="bbsWrite">
				<colgroup>
					<col width="90" />
					<col />
				</colgroup>

				<tbody>					<tr>
						<th scope="row">id</th>
						<td><input type="text" name="id" class="inputText"
							size="30" value="${bean.id}"/>
							<input type="hidden" name="job" value="info"/></td>
			
					</tr>
					<tr>
						<th scope="row">제목</th>
						<td><input type="text" name="title" class="inputText"
							size="50" value="${bean.title}" /></td>
					</tr>
					<tr>
						<th scope="row">회사</th>
						<td><input type="text" name="company" class="inputText"
							size="50" value="${bean.company}"  /></td>
					
					</tr>
					<tr>
			
						<th scope="row">마감일</th>
						<td><input type="text" name="regdate" class="inputText"
							size="50"  value="${bean.regdate}" /></td>
					</tr>
					<tr>
						<th scope="row">내용</th>
						<td class="editer"><textarea name="contents">${bean.contents}</textarea></td>
					</tr>
					<tr>
						<th scope="row">회사로고</th>
						<td><input type="file" name="file" class="inputText"
							size="50"  /></td>
					</tr>
					<tr>
						<th scope="row">비밀번호</th>
						<td><input type="text" name="pass" class="inputText"
							size="50" value="${bean.pass }"/></td>
					</tr>
				</tbody>
			</table>
		</form>
		<div class="btnSet clfix mgb15">
			<span class="fr"> 
				<span class="button">
					<a href="javascript:sendData()">저장</a>
				</span> 
				<span class="button">
					<a href="/recruits/recruitList.action">목록/취소</a>
				</span> 
			</span>
		</div>
	</div>
</body>
</html>