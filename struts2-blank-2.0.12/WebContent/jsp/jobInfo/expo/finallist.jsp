<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/css/finallist.css" rel="stylesheet" />
</head>
<body>
	<!-- UI Object -->
	<table class="tbl_type" border="1" cellspacing="0"
		summary="�Խ����� ������ ����Ʈ">
		<caption>�Խ��� ����Ʈ</caption>
		<colgroup>
			<col width="30">
			<col width="80">
			<col>
			<col width="115">
			<col width="85">
			<col width="60">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">&nbsp;</th>
				<th scope="col">No</th>
				<th scope="col">����</th>
				<th scope="col">�۾���</th>
				<th scope="col">��¥</th>
				<th scope="col">��ȸ��</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="frm"><input id="chk_sel" type="checkbox" value=""><label
					for="chk_sel">����</label></td>
				<td class="num">10</td>
				<td class="title"><a href="#">���ο� �Խ��� �۾��� ���ο� �Խ��� �۾��� ���ο�
						�Խ��� �۾��� ���ο� �Խ��� �۾��� ���ο� �Խ��� �۾��� ���ο� �Խ��� �۾���</a></td>
				<td><a href="#">���̹���</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">1234</td>
			</tr>
			<tr class="reply">
				<td class="frm"><input id="chk_sel2" type="checkbox" value=""><label
					for="chk_sel2">����</label></td>
				<td class="num">&nbsp;</td>
				<td class="title" style="padding-left: 10px;"><a href="#">��α�
						���� ���</a></td>
				<td><a href="#">���̹���</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">1234</td>
			</tr>
			<tr class="reply">
				<td class="frm"><input id="chk_sel3" type="checkbox" value=""><label
					for="chk_sel3">����</label></td>
				<td class="num">&nbsp;</td>
				<td class="title" style="padding-left: 20px;"><a href="#">��α�
						���� ���</a></td>
				<td><a href="#">���̹���</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">1234</td>
			</tr>
			<tr class="reply">
				<td class="frm"><input id="chk_sel4" type="checkbox" value=""><label
					for="chk_sel4">����</label></td>
				<td class="num">&nbsp;</td>
				<td class="title" style="padding-left: 30px;"><a href="#">��α�
						���� ���</a> <img width="13" height="12" class="pic" alt="÷���̹���"
					src="img/ic_pic.gif"> <a class="comment" href="#">[5]</a> <img
					width="10" height="9" class="new" alt="����" src="img/ic_new.gif"></td>
				<td><a href="#">���̹���</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">1234</td>
			</tr>
			<tr>
				<td class="frm"><input id="chk_sel5" type="checkbox" value=""><label
					for="chk_sel5">����</label></td>
				<td class="num">9</td>
				<td class="title"><a href="#">��α� ���� �۾� ���� 1</a></td>
				<td><a href="#">UIT��</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">12345</td>
			</tr>
			<tr>
				<td class="frm"><input id="chk_sel6" type="checkbox" value=""><label
					for="chk_sel6">����</label></td>
				<td class="num">8</td>
				<td class="title"><a href="#">��α� ���� �۾� ���� 1</a></td>
				<td><a href="#">UIT��</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">12345</td>
			</tr>
			<tr>
				<td class="frm"><input id="chk_sel7" type="checkbox" value=""><label
					for="chk_sel7">����</label></td>
				<td class="num">7</td>
				<td class="title"><a href="#">��α� ���� �۾� ���� 1</a></td>
				<td><a href="#">UIT��</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">12345</td>
			</tr>
			<tr>
				<td class="frm"><input id="chk_sel8" type="checkbox" value=""><label
					for="chk_sel8">����</label></td>
				<td class="num">6</td>
				<td class="title"><a href="#">��α� ���� �۾� ���� 1</a></td>
				<td><a href="#">UIT��</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">12345</td>
			</tr>
			<tr>
				<td class="frm"><input id="chk_sel9" type="checkbox" value=""><label
					for="chk_sel9">����</label></td>
				<td class="num">5</td>
				<td class="title"><a href="#">��α� ���� �۾� ���� 1</a></td>
				<td><a href="#">UIT��</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">12345</td>
			</tr>
			<tr>
				<td class="frm"><input id="chk_sel10" type="checkbox" value=""><label
					for="chk_sel10">����</label></td>
				<td class="num">4</td>
				<td class="title"><a href="#">��α� ���� �۾� ���� 1</a></td>
				<td><a href="#">UIT��</a></td>
				<td class="date">2008/02/14</td>
				<td class="hit">12345</td>
			</tr>
		</tbody>
	</table>
	<!-- //UI Object -->
	<input type="button" value="�۾���" onclick="location.href='/jsp/jobInfo/expo/finaledit.jsp'">

</body>
</html>